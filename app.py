# coding:utf-8

import os
import sqlite3
from bottle import route, run, debug, template, request, static_file, redirect, response
# from pygeocoder import Geocoder

@route('/')
def index():
    return template('index')

@route('/search')
def search():
    return template('search')

@route('/register_finish')
def register_finish():
    return template('register_finish')


@route('/register', method=["GET", "POST"])
def register():
    if request.method == "GET":
        name = request.get_cookie("name" , secret="")
        if name is None:
            return template("register")
        else:
            return redirect("/top")

    else:
        name = request.POST.getunicode("name")
        password = request.POST.getunicode("password")
        shop_name = request.POST.getunicode("shop_name")
        place = request.POST.getunicode("place")
        city = request.POST.getunicode("city")
        address = request.POST.getunicode("address")
        price = request.POST.getunicode("price")
        person = request.POST.getunicode("person")
        free_time = request.POST.getunicode("free_time")
        require_time = request.POST.getunicode("require_time")
        url = request.POST.getunicode("url")

        # ショップコメント、店内写真、プロフィール画像の入力フォームを実装予定

        mail = request.POST.getunicode("mail")
        phone = request.POST.getunicode("phone")

        map_address = Geocoder.geocode(city + address)
        ido_keido = map_address[0].coordinates
        ido = str(ido_keido[0])
        keido = str(ido_keido[1])

        conn = sqlite3.connect('service.db')
        c = conn.cursor()
        
        c.execute("insert into user values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,'IMG_0040.jpg')",
        (name,password,shop_name,place,city,address,price,person,free_time,require_time,url,mail,phone,ido,keido))
 
        conn.commit()
        conn.close()

        return redirect('/register_finish')


@route('/login', method=["GET", "POST"])
def login():
    if request.method == "GET":
        user_id = request.get_cookie("user_id", secret="")
        if user_id is None:
            return template("login")
        else:
            return redirect("/mypage")
    else:
        name = request.POST.getunicode("name")
        password = request.POST.getunicode("password")

        conn = sqlite3.connect('service.db')
        c = conn.cursor()
        c.execute("select id from user where name = ? and password = ?", (name, password))
        user_id = c.fetchone()
        conn.close()

        if user_id is not None:
            user_id = user_id[0]
            response.set_cookie("user_id", user_id, secret="")
            return redirect("/mypage")
        else:
            return template("login")


@route("/logout")
def logout():
    response.set_cookie("user_id", None, secret="")
    return redirect("/login")


@route("/mypage")
def mypage():
    user_id = request.get_cookie("user_id", secret="")
    conn = sqlite3.connect('service.db')
    c = conn.cursor()

    c.execute("select name, shop_name, city, address, price, person, free_time, require_time, url, mail, phone, ido, keido, prof_img from user where id = ?", (user_id,))
    user_info = c.fetchone()
    c.close()
    return template('mypage', user_info = user_info)


@route("/result")
def result():
    select_place = request.GET.getunicode('select_place')
    select_time = request.GET.getunicode('select_time')
    select_person = request.GET.getunicode('select_person')
    conn = sqlite3.connect('service.db')
    c = conn.cursor()

    c.execute("select * from user where place = ? and free_time = ? and person >= ?",(select_place, select_time, select_person))
    result_info = []
    for row in c.fetchall():
        result_info.append({"id":row[0], "name":row[1], "password":row[2], "shop_name":row[3], "place":row[4], "city":row[5], "address":row[6], "price":row[7], "person":row[8], "free_time":row[9], "require_time":row[10], "url":row[11], "mail":row[12], "phone":row[13], "prof_img":row[16]})
    c.close()
    print(result_info)
    return template('result', result_info = result_info)


@route("/salon/<id:int>")
def salon(id):
    conn = sqlite3.connect('service.db')
    c = conn.cursor()

    c.execute("select shop_name, city, address, price, person, free_time, require_time, url, mail, phone, ido, keido, prof_img from user where id = ?", (id,))
    salon_info = c.fetchone()
    c.close()
    return template('salon', salon_info = salon_info)


@route('/upload', method='POST')
def do_upload():
    upload = request.files.get('upload', '')
    if not upload.filename.lower().endswith(('.png', '.jpg', '.jpeg')):
        return 'png,jpg,jpeg形式のファイルを選択してください'
    save_path = get_save_path()
    upload.save(save_path)

    # アップロードしたユーザのIDを取得
    user_id = request.get_cookie("user_id", secret="")
    conn = sqlite3.connect('service.db')
    c = conn.cursor()

    c.execute("update user set prof_img = ? where id=?", (upload.filename,user_id))
    conn.commit()
    conn.close()

    return redirect ('/mypage')


# ここからファイルアップロードの記述
@route('/upload', method='POST')
def do_upload():
    upload = request.files.get('upload', '')
    if not upload.filename.lower().endswith(('.png', '.jpg', '.jpeg')):
        return 'png,jpg,jpeg形式のファイルを選択してください'
    save_path = get_save_path()
    upload.save(save_path)
    # ファイル名が取れることを確認
    # print(upload.filename)
    # アップロードしたユーザのIDを取得
    user_id = request.get_cookie("user_id", secret="")
    conn = sqlite3.connect('service.db')
    c = conn.cursor()

    c.execute("update user set prof_img = ? where id=?", (upload.filename,user_id))
    conn.commit()
    conn.close()

    return redirect ('/mypage')

def get_save_path():
    path_dir = "./static/img/"
    return path_dir
# ここまでファイルアップロードの記述

@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')

# run(port="8080" ,debug=True, reloader=True)
run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
