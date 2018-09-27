<?php

  require_once "App/regCadastro.php";
	require_once "App/validar.class.php";
	const USER = "Admin";
	const PASS = "admin";
	
	 if(isset($_POST['send-admin'])):
	    $login = filter_input(INPUT_POST,"nome",FILTER_SANITIZE_MAGIC_QUOTES);
	    $pass = filter_input(INPUT_POST,"pass",FILTER_SANITIZE_MAGIC_QUOTES);
			
	    if($login == USER and $pass == PASS){
	      echo "Logado com sucesso!";
	      $_SESSION['logAdmin'] = 'logado';
	      header("Location: ../Admin.php");
	    }
	 endif;
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Faça seu cadastro para fazer o teste vocacional </title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/contact-form.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/script.js"></script> 
<script src="js/superfish.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/tmStickUp.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/TMForm.js"></script>
<script src="js/modal.js"></script>
<script>
 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({});  
 }); 
</script>
<!--[if lt IE 8]>
 <div style=' clear: both; text-align:center; position: relative;'>
   <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
     <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
   </a>
</div>
<![endif]-->
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body>
<!--==============================
              header
=================================-->
<header>
  <div class="container">
    <div class="row">
      <div class="grid_12 rel">
        <h1>
          <a href="index.html">
           <!--  <img src="" alt="Logo alt"> -->
          </a>
        </h1>
      </div>
    </div>
  </div>
  <section id="stuck_container">
  <!--==============================
              Stuck menu
  =================================-->
    <div class="container">
      <div class="row">
        <div class="grid_12 ">
          <div class="navigation ">
            <nav>
              <ul class="sf-menu">
               <li class="current"><a href="index.php">Inicio</a></li>
               
             </ul>
            </nav>
            <div class="clear"></div>
          </div>       
         <div class="clear"></div>  
        </div>
     </div> 
    </div> 
  </section>
</header>
<!--=====================
          Content
======================-->
	<?php 
	require_once "App/validar.class.php";
	$vali = new validar();
	$vali->compara();
	?>
<section id="content"><div class="ic"></div>
  <div class="container">
    <div class="row">
     
      <div class="grid_5">
        <h3 class="head__1">Visualizar Dados:</h3>
        
      </div>
      
      
      <div class="grid_12">
       
              <form  method="post" action="">
                 <div class="contact-form">
                  <fieldset>
                    <label class="">
                     Login: <input type="text" required=name name="nome" placeholder="login"  data-constraints="@Required @nome" /><br><br>
                       
                    </label>
                 
                    <label for="phonenum">
                        

                     Senha:  <input type="password"  required=name name="pass" placeholder="senha "  data-constraints="@Required @pass" />
                    
                    </label>
                    <label class="">
                      <div class="cadastro2">
                    	<input type="submit" name="send-admin" value="Acessar informações"/>
                    </div>
                     
                    </label>
                   
                    
                   
                    
                    
                      
                    
                  </fieldset> 
                  </div>
                </form>   
      </div>
    </div>
  </div>
</section>
<!--==============================
              footer
=================================-->
<footer id="footer">
  <div class="container">
    <div class="row">
      <div class="grid_12"> 
        <div class="copyright"><span class="brand">UNIDESC</span> &copy; <span id="copyright-year"></span> | <a >Privacy Policy</a>
          <div class="sub-copy">SISTEMAS DE INFORMAÇÃO <a  rel="nofollow">4º e 6º semestre</a></div>
        </div>
      </div>
    </div>
  </div>  
</footer>
<a href="#" id="toTop" class="fa fa-chevron-up"></a>
</body>
</html>