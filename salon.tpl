%rebase("base.tpl",title="サロンページ")

<div class="my-picture">

    <!-- データベースに登録されてる店内写真を実装予定 -->
    <img src="../static/img/slide3.jpg" alt="">
    <!-- ーーーーーーーーーーーーーーーーーーーーー -->

    <h1>ショップ名：{{salon_info[0]}}</h1>
</div>

<div class="pic-center">
    <img src="../static/img/{{salon_info[12]}}" alt="">

    <!-- お店のコメント。登録画面で入力してもらい、表示する記述に変更予定。 -->
    <p>カット&シャンプー対応可。<br>
        バリアフリー対応ですので、安心してご利用いただけます！<br>
        お気軽にご連絡くださいませ♪
    </p>
    <!-- ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー -->

</div>

<div class="map-add">
    <img src="https://maps.googleapis.com/maps/api/staticmap?center={{salon_info[10]}},{{salon_info[11]}}&markers={{salon_info[10]}},{{salon_info[11]}}&size=480x320&sensor=false&zoom=14" alt="">
    <p>住所：{{salon_info[1]}}{{salon_info[2]}}</p>
    <p>価格：{{salon_info[3]}}円</p>
    <p>対応可人数：{{salon_info[4]}}人</p>
    <p>空き時間：{{salon_info[5]}}〜</p>
    <p>所要時間：{{salon_info[6]}}</p>
    <p>URL：{{salon_info[7]}}</p>
    <p>メールアドレス：{{salon_info[8]}}</p>
    <p>電話番号：{{salon_info[9]}}</p>
</div>
