<?php
include "funcs.php";
//1. POSTデータ取得
//$name = filter_input( INPUT_GET, ","name" ); //こういうのもあるよ
//$email = filter_input( INPUT_POST, "email" ); //こういうのもあるよ
$bname = $_POST["bname"];
$burl  = $_POST["burl"];
$bcomment = $_POST["bcomment"];


//2. DB接続します
// try {
//   $pdo = new PDO('mysql:dbname=gs_db;charset=utf8;host=localhost','root','');
// } catch (PDOException $e) {
//   exit('DB_CONECTION_ERROR:'.$e->getMessage());
// }
$pdo = db_con();

//３．データ登録SQL作成
$sql = "INSERT INTO gs_bm_table(bname,burl,bcomment,indate)VALUES(:bname,:burl,:bcomment,sysdate())";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':bname', $bname, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':burl', $burl, PDO::PARAM_INT);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':bcomment', $bcomment, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$status = $stmt->execute();

//４．データ登録処理後
if($status==false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit("SQL_INSERT_ERROR:".$error[2]);
}else{
  //５．index.phpへリダイレクト
header("Location: index.php");
exit;
}
?>
