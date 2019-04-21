%rebase("base",title="検索画面")

<div class="relative">

    <img src="static/img/body_main.jpg" alt=""><br>

    <form action="/result">

        <select name="select_place" class="item">
            <option value="" disabled selected>地域</option>
            <option value="北部"> 北部　　</option>
            <option value="中部"> 中部　　</option>
            <option value="南部"> 南部　　</option>
            <option value="離島"> 離島　　</option>
        </select>

        <input type="date" name="calendar" max="9999-12-31" class="calendar">


        <select name="select_time" class="item">
            <option value="" disabled selected>時間帯</option>
            <option value="9:00">am_9:00〜</option>
            <option value="10:00">am_10:00〜</option>
            <option value="11:00">am_11:00〜</option>
            <option value="12:00">am_12:00〜</option>
        </select>

        <select name="select_person" class="item">
            <option value="" disabled selected>人数</option>
            <option value="1"> １人　　</option>
            <option value="2"> ２人　　</option>
            <option value="3"> ３人　　</option>
            <option value="4"> ４人　　</option>
            <option value="5"> ５人　　</option>
            <option value="6"> ６人　　</option>
            <option value="7"> ７人　　</option>
            <option value="8"> ８人　　</option>
        </select><br>

        <input type="submit" class="result" value="検索">
    </form>


</div>