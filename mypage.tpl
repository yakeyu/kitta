%rebase("base.tpl",title="マイページ")


<div class="my-picture">

    <!-- データベースに登録されてる店内写真を実装予定 -->
    <img src="static/img/slide3.jpg" alt="">
    <!-- ーーーーーーーーーーーーーーーーーーーーー -->

    <h1>ショップ名：{{user_info[1]}}</h1>
</div>

<div class="pic-center">
    <img src="static/img/{{user_info[13]}}" alt="">

    <!-- お店のコメント。登録画面で入力してもらい、表示する記述に変更予定。 -->
    <p>カット&シャンプー対応可。<br>
        バリアフリー対応ですので、安心してご利用いただけます！<br>
        お気軽にご連絡くださいませ♪
    </p>
    <!-- ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー -->

</div>

<div class="map-add">
    <img src="https://maps.googleapis.com/maps/api/staticmap?center={{user_info[11]}},{{user_info[12]}}&markers={{user_info[11]}},{{user_info[12]}}&size=480x320&sensor=false&zoom=14" alt="">
    <p>住所：{{user_info[2]}}{{user_info[3]}}</p>
    <p>価格：{{user_info[4]}}円</p>
    <p>対応可人数：{{user_info[5]}}人</p>
    <p>空き時間：{{user_info[6]}}〜</p>
    <p>所要時間：{{user_info[7]}}</p>
    <p>URL：{{user_info[8]}}</p>
    <p>メールアドレス：{{user_info[9]}}</p>
    <p>電話番号：{{user_info[10]}}</p>

    <p>画像変更はこちら</p>
    <form action="/upload" method="post" enctype="multipart/form-data">
        <input type="file" name="upload">
        <input type="submit" value="画像アップロード"><br>
    </form>


</div>
