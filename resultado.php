<?php
 session_start();
require_once "App/resultado.php";
require_once "App/Candidato.php";
$list = new Candidato; 
//echo $re; exit();
$resuFinal = $list->lista('Curso',"WHERE grupo = '$re'");
$resuEmail = $list->lista('Curso',"WHERE grupo = '$re' ORDER BY curs_id DESC LIMIT 5");
$teste = $list->listaUm('curs_descricao','Curso',"WHERE grupo = '$re'");
$mail = $_SESSION['mail'];
foreach($teste as $tes){
  $te[] = $tes['curs_descricao'];
}
$resultado =  implode(" - ",$te);
$ip = $_SERVER['REMOTE_ADDR'];
$list->update($resultado,$mail, $ip);

      
			    	
					    foreach($resuEmail as $final){
					     
					      		$corpo .= $final['curs_descricao']." - ";
					       
					    } 
				
echo $corpo;


$para = $mail;
$assunto = "Resultado - Teste Vocacional UNIDESC 2017";
$corpo = "Resultado: Teste ".$corpo;
$cabecalho = "Form: testevocacional@unidesc.com.br"."\r\n".
              "Reply-To: feiraprofissao2017@unidesc.com"."\r\n".
              "X-Mailer: PHP/".phpversion();
              
              mail($para, $assunto, $corpo, $cabecalho);



		if(isset($_POST['finalizar'])):
	        header('Location:index.php');
	        session_unset();
	        session_destroy();
	  endif;
        

?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Resultado final</title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
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
<script>
 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({});  
 }); 
</script>

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
      <div class="grid_12">
        <!--<h3>Resultado abaixo</h3>
        <img src="images/page2_img.jpg" alt="" class="img_inner fleft">
        <div class="extra_wrapper">
          <p class="fwn">O teste vocacional é um instrumento que avalia aspectos 
						latentes de sua personalidade, construindo com isso seu perfil profissional;
						após essa fase é feito uma correlação entre o seu perfil e os perfis
						profissionais característicos de cursos acadêmicos, a fim de apresentar 
						a você os cursos que exijam de seus estudantes características que você tenha.</p>
						<h4>Sobre o teste</h4>-->
						<h4>Sobre o teste</h4>
          O teste vocacional não determinará um curso específico para que 
						você faça e assim seja bem realizado, e também não significa que algum 
						curso que não apareça no resultado da análise deverá ser descartado, 
						o teste apenas servirá como um norteador.<br><br>
						 Portanto é importante que de posse do resultado de seu teste, você procure conhecer
                            sobre os cursos apresentados, busque na internet informações sobre os mesmos, procure
                            profissionais já formados na área,
                            ou até mesmo visite universidades e converse com o coordenador do curso para ter mais
                            informações e assim tomar uma decisão pensada e bem estruturada.
          <h4>Veja os cursos</h4>
        <fieldset class="campo_resposta">
        <?php
			    	echo '<ul>';
					    foreach($resuFinal as $final){
					     
					      		echo '<li>'.$final['curs_descricao'].'</li>';
					       
					    } 
					  echo '</ul>';
				?>
				
				</fieldset>
				<form class="row" method="post">
				  <div class="final">
          	<button name="finalizar"> Finalizar teste</button>
          </div>
        </form>
          
        </div>
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