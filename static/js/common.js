$(function(){  

// スマホレイアウトのときに、ハンバーガーボタンを押すとメニューを表示させる
$('.hum_menu').on('click', function(){
  $('header').toggleClass('open');
});

// スライドイン
$(window).fadeThis();

//ドロワーメニュー
$(".drawer").drawer();

// 課題3の答えはここ
$('.delete').on('click',function(){
  if(!confirm('本当に削除しますか？')){
    return false;
  } else {
    location.href = $(this).attr('href');
  }
})


});
