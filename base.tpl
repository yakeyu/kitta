<!DOCTYPE HTML>
<html lang="ja">

<head>
	<meta charset="utf-8">
	<meta name="keywords" content="サイトをキーワードで説明">
	<meta name="description" content="どんなサイトかを短い文章で説明">
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=1">
	<link href="https://fonts.googleapis.com/css?family=Bitter:400,700" rel="stylesheet">
	<title>{{title or 'No title'}}</title>
	<script type="text/javascript" src="/static/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="/static/js/jquery.fadethis.min.js"></script>
	<!-- drawer.css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/drawer/3.2.2/css/drawer.min.css">
	<!-- jquery & iScroll -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/iScroll/5.2.0/iscroll.min.js"></script>
	<!-- drawer.js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/drawer/3.2.2/js/drawer.min.js"></script>
	<script type="text/javascript" src="/static/js/common.js"></script>
	<link rel="stylesheet" type="text/css" media="screen and ( max-width:768px )" href="/static/css/style_sp.css">
	<link rel="stylesheet" type="text/css" media="screen and ( min-width:769px )" href="/static/css/style.css">
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

</head>

<!-- ハンバーガーメニューを右端に表示 -->
<body class="drawer drawer--right">

	<!-- ヘッダーの記述ここから -->
	<header>
		<img src="/static/img/obi.jpg">

		<div class="logo">
			<a href="/"><img src="/static/img/kitta.jpg" alt="kitta"></a>
		</div>

		<nav>
			<ul class="global-nav login">
				<li><a href="/register">美容室を登録する</a></li>
				<li><a href="/login">ID/パスワード</a></li>
			  <li><a href="/logout">ログアウト</a></li>
			</ul>
		</nav>
		<!-- 検索窓の記述、表示だけ。 -->
		<form method="get" action="#" class="search_container">
			<input type="text" size="30" placeholder="キーワード検索">
			<input type="submit" value="&#xf002">
		</form>
	
		<!-- ハンバーガーメニューの記述 -->
		<button type="button" class="drawer-toggle drawer-hamburger">
    		<span class="sr-only">toggle navigation</span>
    		<span class="drawer-hamburger-icon"></span>
  		</button>

		<nav class="drawer-nav" role="navigation">

			<ul class="drawe-menu">			
				<a class="drawer-menu-item" href="/login">ログイン</a>
				<a class="drawer-menu-item" href="/register">新規登録</a>
				<a class="drawer-menu-item" href="/logout">ログアウト</a>
			</ul>
		</nav>
		<!-- ハンバーガーメニューここまで -->

	</header>

	{{!base}}

<footer>
    <small>(C)2018 Team Active.</small>
    <img src="/static/img/obi.jpg">
</footer>

</body>

</html>
