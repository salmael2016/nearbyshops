<?php session_start(); ?>
<!DOCTYPE html>
<html>
  <head>
      
	     <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	     <meta name="viewport" content="width=device-width, initial-scale=1"/>
	     <link rel="stylesheet" media="screen" href="vues/src/css/bootstrap.min.css" type="text/css">
	     <link href="vues/src/css/signin.css" rel="stylesheet">
	     <link href="vues/src/css/accueil.css" rel="stylesheet">
	     <script src="vues/src/js/jquery.min.js"></script>
		 <script src="vues/src/js/bootstrap.js"></script>
		 <script src="vues/src/js/bootstrap.bundle.min.js"></script>
         <title>Home</title>
	 
   </head>

   <body >
   
 <?php  
   
  
                         	if(isset($_SESSION['active_user'])){
									if(!empty($_GET['page']) && is_file('controllers/'.$_GET['page'].'.php')){
										
										include('controllers/'.$_GET['page'].'.php');
									}
									else {
										header('location:main.php?page=nearbyshops&action=display');

									
									}
							}
							else{
								if(!empty($_GET['page']) && is_file('controllers/'.$_GET['page'].'.php')){
										
										include('controllers/'.$_GET['page'].'.php');
									}
									else {
										header('location:main.php?page=user&action=signin');
									}
							}
				    
   
   ?>

    </body>

</html>