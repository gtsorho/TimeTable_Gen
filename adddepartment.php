
<?php
include("database.php");

 if (isset($_POST['adddepartment'])) {
    $dept_name = $_POST['dept_name'];
   $dept_email = $_POST['dept_email'];
    echo $dept_name;
  $sql = "INSERT INTO departments (`dept_name`,`dept_email`) VALUES('$dept_name','$dept_email')";

  $query = mysqli_query($connection, $sql);
  if ($query) {
    echo "added successfully";

  } else {
    echo mysqli_error($connection);
  }
}

echo $dept_name

?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE  | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- jvectormap -->
   <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css"> 
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

<?php include_once "./partials/header.php" ?>

             <?php include_once "./partials/sidebar.php" ?>
           
  
  <div class="content-wrapper">
    
    <section class="content-header">
      <h1>Programme </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Programme</li>
        <li class="active">addProgramme</li>
        
      </ol>
    </section>
    <hr><hr>


             
             <form id="formval" action="" method="post">
                  <div>
                
                   
                   <div class="form-group col-md-3">
                        <label class="control-label">Programme Name</label>
                        <input class="form-control" type="text" placeholder="Electrical Eng" name="dept_name" id="dept_name" required>

                 </div>
                
               
                  <div class="form-group col-md-3">
                    <label class="control-label">Programme Email</label>
                    <input class="form-control" type="email" placeholder="***@gmail.com" name="dept_email" id="dept_email" required>
                   </div>
>
                  <br><br><br><br><br><br>

                 <div class="form-group col-md-2">
                <a href="">  <button class="btn btn-success" type="submit" name="adddepartment" id="adddepartment"  ><i class="fa fa-fw fa-lg fa-check-circle" ></i>Add Department</button></a>
               </div>
             </div>
           </form>  

   
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- Sparkline -->
<script src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap  -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS -->
<script src="bower_components/chart.js/Chart.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard2.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</body>
</html>


