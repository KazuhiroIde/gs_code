<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>ユーザ登録</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>div{padding: 10px;font-size:16px;}</style>
</head>
<body>

<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header"><a class="navbar-brand" href="select.php">ユーザ登録</a></div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<form method="post" action="user_insert.php">
  <div class="jumbotron">
   <fieldset>
    <legend>ユーザ登録</legend>
     <label>名前：<input type="text" name="name"></label><br>
     <label>ユーザID：<input type="text" name="lid"></label><br>
     <label>パスワード：<input type="text" name="lpw"></label><br>
     <label>管理者フラグ：<input type="text" name="kanri_flg"></label><br>
     <input type="submit" value="送信">
    </fieldset>
  </div>
</form>
<form method="post" action="user_list.php">
  <div class="jumbotron">
   <fieldset>
    <input type="submit" value="ユーザ一覧へ">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->


</body>
</html>
