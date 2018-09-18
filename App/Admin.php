<?php
session_start();
//ARMAZENA OS DADOS NA PAGINA regQuestao.php
require_once "regQuestao.php";
require_once "validar.class.php";
$admin = new Candidato;
$cand = $admin->lista('candidato');
$linha =  count($cand);
if(empty($_SESSION['logAdmin'])){
  header("Location: ../visualizar.php");
}

if(isset($_GET['log']) and $_GET['log'] == 'sair'){
    unset($_SESSION['logAdmin']);
    session_destroy();
    $val = new validar();
    $val->validar1('../visualizar.php');
    
}





?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Faça o teste agora </title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="../css/contact-form.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/bootstrap.css">

<script src="../js/jquery.js"></script>
<script src="../js/jquery-migrate-1.1.1.js"></script>
<script src="../js/jquery.easing.1.3.js"></script>
<script src="../js/script.js"></script> 
<script src="../js/superfish.js"></script>
<script src="../js/jquery.equalheights.js"></script>
<script src="../js/jquery.mobilemenu.js"></script>
<script src="../js/tmStickUp.js"></script>
<script src="../js/jquery.ui.totop.js"></script>
<script src="../js/TMForm.js"></script>
<script src="../js/modal.js"></script>
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
            <nav>
              <ul class="sf-menu">
               <li class="current"><a href="Admin.php?log=sair">Sair</a></li>
               
             </ul>
            </nav>   
         <div class="clear"></div>  
        </div>
     </div> 
    </div> 
  </section>
</header>
<!--=====================
          Content
======================-->
<section id="content"><div class="ic"></div>
  <div class="container">
    <div class="row">
      <div class="grid_12">       <form method="post" action="" >
	             
          <div class="container">
               <table class="table table-bordered table-hover">
                   <theader id="columTitle">
        		          <tr id="titulo">
        		                <td>Nome:</td>
        		                <td>E-mail</td>
        		                <td>Serie:</td>
        		                <td>Contato</td>
        		                <td>Resulado</td>
        		                <td >Cidade</td>
        		                <td>Data</td>
        		            </tr>
        		   </theader>
               <?php
            		foreach($cand as $list):
          		        echo '<tbody>';
        		        echo '<tr>';
        				    echo '<td >'.$list['cand_nome'].'</td>';
        				    echo '<td>'.$list['cand_email'].'</td>';
        				    echo '<td>'.$list['cand_serie'].'</td>';
        				    echo '<td>'.$list['cand_tel'].'</td>';
        				    echo '<td class="colum">'.$list['resultado_curso'].'</td>';
        				    echo '<td>'.$list['cand_cidade'].'</td>';
        				    echo '<td>'.$list['cand_date'].'</td>';
        	            echo '</tr>';
        	            echo '</tbody>';
        	    	endforeach;
    	                echo '<tr><td>Total: '.$linha.' </td></tr>';
	            ?>
	        </table>
	       </div>
	   
	      </form>
      </div>
    </div>
  </div>
</section><!--==============================
              footer
=================================-->
<footer id="footer">
  <div class="container">
    <div class="row">
      <div class="grid_12"> 
        <div class="copyright"><span class="brand">UNIDESC</span> &copy; <span id="copyright-year"></span> | <a href="#">Privacy Policy</a>
          <div class="sub-copy">SISTEMAS DE INFORMAÇÃO <a href="http://www.templatemonster.com/" rel="nofollow">4º e 6º semestre</a></div>
        </div>
      </div>
    </div>
  </div>  
</footer>
<a href="#" id="toTop" class="fa fa-chevron-up"></a>
</body>
</html>