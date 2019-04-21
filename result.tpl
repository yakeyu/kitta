%rebase("base.tpl",title="検索結果")

<div class="kekka">
    <img src="static/img/result.jpg" alt="">
    <p>検索結果</p>
</div>

<hr>

    <form action="/result">
        <div class="wrapper">
        %for item in result_info:
        <div>
            <img src="static/img/{{item['prof_img']}}" alt=""><br>
            <p class="headline2">{{item["shop_name"]}}</p>
            <p class="headline1">住所：{{item["city"]}}{{item["address"]}}</p>
            <p class="headline3">お一人様：{{item["price"]}}円</p>
            <p class="headline4">対応可人数：{{item["person"]}}人
                <a href="/salon/{{item['id']}}">サロンページへ</a>
            </p>
            

        </div>
        %end
        </div> 
    </form>



