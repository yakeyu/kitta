$(function(){  

    //ローディングエリアを取得
    var slidetop = $("#slidetop");
    //ローディングエリアを隠す処理
    var isHidden = function(){
      slidetop.fadeOut(1000); //1000ミリ秒かけてフェードアウト
    };
    //1000ミリ秒後にloadingFunc開始
    setTimeout(isHidden,3000);
  });
 
  
  
