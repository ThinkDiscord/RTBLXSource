<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>RTBLX - Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="/login.php">RTBLX</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="welcome.php">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="games.php">Games</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="catalog.php">Catalog</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Users.php">Users</a>
        </li>
        <form class="d-flex">
      </form>
      </ul>
    </div>
  </div>
</nav>
  <nav class="navbar navbar-expand-lg navbar-dark navbar-top bg-dark py-0">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="User.php?id=<?php echo htmlspecialchars($_SESSION["id"]); ?>">Profile</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="avatar.php">Avatar</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="MyFriends.php">Friends</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="settings.php">Settings</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="MyMoney.php">Transaction</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="logout.php">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
  <div class="container">
    <div class="row">
      <div class="col">
    <h1 class="my-5">Hello, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>.</h1>
    <p></p>
  <img src="http://www.rtblxx.ml/Render/Default.png" alt="<?php echo htmlspecialchars($_SESSION["username"]); ?>" width="210" height="210">
    <div style="border-bottom: #c4c4c4 solid 1px;width:100%;margin-right:5px;margin-top:5px"></div>
</div>
      </div>
    </div>
</body>
</html>
