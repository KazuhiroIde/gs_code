<?php
include "funcs.php";
//1.  DB接続します
$pdo = db_con();

//２．データ登録SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_user_table");
$status = $stmt->execute();

//３．データ表示
$view="";
if($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("SQL_SELECT_ERROR:".$error[2]);

}else{
  //Selectデータの数だけ自動でループしてくれる
  //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){ 
    $view .= '<p>'; 
    $view .= '<a href="user_delete.php?id='.$result["id"].'">';
    $view .=  "[×]";
    $view .= '</a>';
    $view .= '<a href="user_detail.php?id='.$result["id"].'">';
    $view .= $result["name"].",".$result["lid"]."<br>";//addする
    $view .= '</a>';
    $view .= '</p>';
  }
}
?>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ユーザ一覧</title>
<link rel="stylesheet" href="css/range.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>div{padding: 10px;font-size:16px;}</style>
</head>
<body id="main">
<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
      <a class="navbar-brand" href="index.php">ユーザ一覧</a>
      </div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<div>
    <div class="container jumbotron"><?=$view?></div>
</div>
<form method="post" action="user_input.php">
  <div class="jumbotron">
   <fieldset>
    <legend>ユーザ登録</legend>
     <input type="submit" value="送信">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->

</body>
</html>
