<?php
require_once "App/regCadastro.php";
?><!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Faça seu cadastro para fazer o teste vocacional </title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="images/logo_icone.png">
<link rel="shortcut icon" href="images/logo_icone.png" />
<link rel="stylesheet" href="css/contact-form.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="js/sweetalert2.min.css">
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
<script src="js/jquery.mask.min.js"></script>
<script src="js/sweetalert.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">

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
	
<section id="content"><div class="ic"></div>
  <div class="container">
    <div class="row">
     
      <div class="grid_5">
        <h3 class="head__1">Cadastre-se abaixo para acessar as questoes:</h3>
        
      </div>
      
      
      <div class="grid_12">
       
              <form  method="post" action="" id="formularioContato">
                 <div class="contact-form">
                  <fieldset>
                    <label class="">
                     Seu nome: <input type="text"  name="nome" id="nome" placeholder="Digite seu nome:"  data-constraints="@Required @nome" required><br><br>
                       
                    </label>
                 
                    <label for="phonenum">
                        

                     Digite seu telefone:  <input type="tel" id="fone"  name="fone" placeholder="Digite sem o digito '9' Ex.. 94621235 "  data-constraints="@Required @fone" required>
                    
                    </label>
                    <label class="">
                     Digite seu email: <input type="text"  name="email" id="mail" placeholder="Digite seu email:" value="" data-constraints="@Required @email" required>
                     
                    </label>
                   
                    <label class="">
                     Selecione sua cidade:<br>
							
							<select class="form" name="cidade" id="cidade"  required>
								<option  value="" selected="selected"  ><a>Selecionar </a></option>
                                <option value="Novo gama"> Novo Gama </option>
                                <option value="Gama"> Gama </option>
                                <option value="Brasilia"> Brasília </option>
                                <option value="Ocidental"> Ocidental </option>
                                <option value="Aguas Claras"> Águas Claras </option>
                                <option value="Taguatinga"> Taguatinga </option>
                                <option value="CeilAndia"> Ceilândia </option>
                                <option value="Brazlândia"> Brazlândia </option>
                                <option value="Sobradinho"> Sobradinho  </option>
                                <option value="Planaltina "> Planaltina  </option>
                                <option value="Paranoá"> Paranoá  </option>
                                <option value="Núcleo Bandeirante"> Núcleo Bandeirante </option>
                                <option value="Guará "> Guará  </option>
                                <option value="Samambaia "> Samambaia  </option>
                                <option value=" Santa Maria  ">  Santa Maria   </option>
                                <option value="São Sebastião "> São Sebastião  </option>
                                <option value="Recanto das Emas "> Recanto das Emas  </option>
                                <option value=" Lago Sul  ">  Lago Sul   </option>
                                <option value="Riacho Fundo  "> Riacho Fundo   </option>
                                <option value="Lago Norte "> Lago Norte   </option>
                                <option value="Candangolândia  "> Candangolândia   </option>
                                <option value="Riacho Fundo II "> Riacho Fundo II  </option>
                                <option value="Park Way"> Park Way  </option>
                                <option value="Itapoã"> Itapoã  </option>
								 
								 
								
								
							</select>
                    </label>
                    <label class="">
                        Selecione sua serie:<br>
                     <select class="form" name="serie" id="serie" required>
								<option value="" selected="selected" ><a>Selecionar</a></option>
								<optgroup label="Ensino Fundamental">
    								<option value="6">6º</option>
    								<option value="7">7º</option>
    								<option value="8">8º</option>
    								<option value="9">9º</option>
  								</optgroup>
  									<optgroup label="Ensino Medio">
    								<option value="1">1º</option>
    								<option value="2">2º</option>
    								<option value="3">3º</option>
                                    <option value="concluido">Concluído</option>
  								</optgroup>
							</select>
                    </label>
                    <div class="cadastro">
                    	<button type="submit"  name="send" id="send">Efetuar Cadastro</button>
                    </div>
                  </fieldset> 
                  </div>
                </form>   
                <button type="button"  data-toggle="modal" id="model" style="display:none;" data-target="#myModal"></button>
                
      </div>
    </div>
  </div>
</section>
<script type="text/javascript">
    $(document).ready( function() {
    }
    // Evento que é executado ao clicar no botão de enviar
        document.getElementById("send").onclick = function(e) {
            validarcampos();
            var nome = $("#nome").val();
            var fone = $("#fone").val();
            var mail = $("#mail").val();
            var cidade = $("#cidade").val();
            var serie = $("#serie").val();
            $.ajax({
                url:'App/regCadastro.php',
                type:'POST',
                data: {nome:nome, fone:fone, email:mail, cidade:cidade,serie:serie},
                // success:function(r){
                //     if(swal ( " Bom trabalho! " , " Você clicou no botão! " , " sucesso ")){
                //         $("#model").trigger('click');
                //     }
                // }
            });
            e.preventDefault();
    };
    //Validação Formulario
    function validarcampos() {
      $("#formularioContato").validate({
    };
    $(document).ready(function () {
                var $seuCampoData = $(".fone");
                $seuCampoData.mask('00/00/0000', {reverse: true});
    });
</script>
<!--==============================
              footer
=================================-->
<footer id="footer">
  <div class="container">
    <div class="row">
      <div class="grid_12"> 
        <div class="copyright"><span class="brand">UNIDESC</span> &copy; <span id="copyright-year"></span> 
          <div class="sub-copy">SISTEMAS DE INFORMAÇÃO <a  rel="nofollow">4º e 6º semestre</a></div>
        </div>
      </div>
    </div>
  </div>  
</footer>
<a href="#" id="toTop" class="fa fa-chevron-up"></a>
</body>
</html>
