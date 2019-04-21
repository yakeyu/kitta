%rebase("base.tpl", title="美容室登録画面｜「KITTA」Official Website")

<div class="contents" id="touroku">
    <form action="/register" method="post">

        <div id="wrap">
            <div class="content main-center">
            <h1><img src="/static/img/signup.gif"></h1>
                <p>新規登録</p>
            </div>

        <div class="form pulldownset">

            <dl>
                <dt><span class="required"></span>お名前：</dt>
                <dd>
                    <input type="text" name="name" class="name" required>
                </dd>

                <dt><span class="required"></span>パスワード：</dt>
                <dd>
                    <input type="password" name="password" class="name" required>
                </dd>

                <dt><span class="required"></span>店名：</dt>
                <dd>
                    <input type="text" name="shop_name" class="name" required>
                </dd>

                <dt><span class="required"></span>地域：</dt>
                <dd>
                <div class="cp_ipselect cp_sl01 name">
                    <select name="place">
                        <option value="" disabled selected>----地域を選択----</option>
                        <option value="北部">北部</option>
                        <option value="中部">中部</option>
                        <option value="南部">南部</option>
                        <option value="離島">離島</option>
                    </select>
                </div>
                </dd>

                <dt><span class="required"></span>市町村：</dt>
                <dd>
                <div class="cp_ipselect cp_sl01 name">
                     <select name="city">
                        <option value="" disabled selected>----市町村を選択----</option>
                        <optgroup label="北部">
                            <option value="国頭村">国頭村</option>
                            <option value="名護市">名護市</option>
                        </optgroup>

                        <optgroup label="中部">
                            <option value="うるま市">うるま市</option>
                            <option value="沖縄市">沖縄市</option>
                            <option value="北谷町">北谷町</option>
                        </optgroup>

                        <optgroup label="南部">
                            <option value="那覇市">宜野湾市</option>
                            <option value="那覇市">那覇市</option>
                        </optgroup>

                        <optgroup label="離島">
                            <option value="宮古島市">宮古島市</option>
                        </optgroup>

                    </select>
                </div>
                </dd>

                <dt><span class="required"></span>番地･建物名:</dt>
                <dd>
                    <input type="text" name="address" class="name" required>
                </dd>

                <dt><span class="required"></span>１人あたり価格：</dt>
                <dd>
                    <input type="text" name="price"class="name" required>
                </dd>

                <dt><span class="required"></span>対応可人数：</dt>
                <dd>
                <div class="cp_ipselect cp_sl01 name">
                    <select name="person">
                        <option value="" disabled selected>----人数を選択----</option>
                        <option value="1">１人</option>
                        <option value="2">２人</option>
                        <option value="3">３人</option>
                        <option value="4">４人</option>
                        <option value="5">５人</option>
                        <option value="6">６人</option>
                        <option value="7">７人</option>
                        <option value="8">８人</option>
                    </select>
                </div>
                </dd>

                <!-- 対応可能日付を、カレンダーで実装予定 -->

                <dt><span class="required"></span>空き時間：</dt>
                <dd>
                <div class="cp_ipselect cp_sl01 name">
                    <select name="free_time">
                        <option value="" disabled selected>----時間帯を選択----</option>
                        <option value="9:00">am_9:00〜</option>
                        <option value="10:00">am_10:00〜</option>
                        <option value="11:00">am_11:00〜</option>
                        <option value="12:00">am_12:00〜</option>
                    </select>
                </div>
                </dd>

                <dt><span class="required"></span>所要時間:</dt>
                <dd>
                <div class="cp_ipselect cp_sl01 name">
                    <select name="require_time">
                        <option value="" disabled selected>----所要時間を選択----</option>
                        <option value="３０分">３０分</option>
                        <option value="１時間">１時間</option>
                        <option value="１時間３０分">１時間３０分</option>
                        <option value="２時間">２時間</option>
                    </select> 
                </div>
                </dd>

                <dt><span class="required"></span>ホームページURL</dt>
                <dd>
                    <input type="text" name="url" class="name" required>
                </dd>

                <dt><span class="required"></span>メールアドレス</dt>
                <dd>
                    <input type="email" name="mail" class="email" required>
                </dd>

                <dt><span class="required"></span>電話番号</dt>
                <dd>
                    <input type="tel" name="phone" class="tel" required>
                </dd>
            </dl>

            <button type="submit" class="btn">登録</button>

        </div>

    </div>

    </form>

</div>


