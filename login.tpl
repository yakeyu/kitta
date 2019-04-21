%rebase("base.tpl", title="ログイン")

<div id="login">

    <form action="/login" method="post">
      <input type="text" id="user" name="name" placeholder="お名前">
      <input type="password" id="pass" name="password" placeholder="パスワード">
      <input type="submit" value="ログイン">
    </form>

</div>
