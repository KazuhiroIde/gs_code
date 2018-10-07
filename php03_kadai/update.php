<?php
//1. POSTデータ取得
//$name = filter_input( INPUT_GET, ","name" ); //こういうのもあるよ
//$email = filter_input( INPUT_POST, "email" ); //こういうのもあるよ
$bname = $_POST["bname"];
$burl = $_POST["burl"];
$id = $_POST["id"];
$bcomment = $_POST["bcomment"];

//2. DB接続します
include "funcs.php";
$pdo = db_con();

//３．データ登録SQL作成
$sql = "UPDATE gs_bm_table SET bname=:bname,burl=:burl,bcomment=:bcomment WHERE id=:id";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':bname', $bname, PDO::PARAM_STR); //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':burl', $burl, PDO::PARAM_STR); //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':bcomment', $bcomment, PDO::PARAM_STR); //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
//Integer（数値の場合 PDO::PARAM_INT)

$status = $stmt->execute();

//４．データ登録処理後
if ($status == false) {
    sqlError($stmt);
} else {
    //５．index.phpへリダイレクト
    header("Location: select.php");
    exit;
}
