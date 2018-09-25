<?php
require_once "App/regCadastro.php";
?><!DOCTYPE html>
<html lang="en">
<head>
<title>Faça seu cadastro para fazer o teste vocacional </title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
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
                     Seu nome: <input type="text" required=name name="nome" id="nome" placeholder="digite seu nome:"  data-constraints="@Required @nome" /><br><br>
                       
                    </label>
                 
                    <label for="phonenum">
                        

                     Digite seu telefone:  <input type="tel" id="fone" required=name name="fone" placeholder=" digite sem o digito '9' Ex.. 94621235 "  data-constraints="@Required @fone" />
                    
                    </label>
                    <label class="">
                     Digite seu email: <input type="text" required=name name="email" id="mail" placeholder="Digite seu email:" value="" data-constraints="@Required @email" />
                     
                    </label>
                   
                    <label class="">
                     Selecione sua cidade:<br>
							
							<select class="form" required name="cidade" id="cidade"  >
								<option  value="" selected="selected"  ><a>Selecionar </a></option>
								<option value="Luziania">Luziânia</option>
								<option value="Valparaiso">Valparaiso</a></option>
								<option value="Novo gama"><a>Novo Gama</a></option>
								<option value="Gama"><a>Gama</a></option>
								<option value="Brasilia"><a>Brasília</a></option>
								<option value="Ocidental"><a>Ocidental</a></option>
								<option value="Aguas Claras"><a>Águas Claras</a></option>
								<option value="Taguatinga"><a>Taguatinga</a></option>
								<option value="CeilAndia"><a>Ceilândia</a></option>
								<option value="Brazlândia"><a>Brazlândia</a></option>								
								<option value="Sobradinho"><a>Sobradinho </a></option>
								<option value="Planaltina "><a>Planaltina </a></option>
								<option value="Paranoá"><a>Paranoá </a></option>
								<option value="Núcleo Bandeirante"><a>Núcleo Bandeirante</a></option>
								<option value="Guará "><a>Guará </a></option>
								<option value="Samambaia "><a>Samambaia </a></option>
								<option value=" Santa Maria  "><a> Santa Maria  </a></option>
								<option value="São Sebastião "><a>São Sebastião </a></option>
								<option value="Recanto das Emas "><a>Recanto das Emas </a></option>
								<option value=" Lago Sul  "><a> Lago Sul  </a></option>
								<option value="Riacho Fundo  "><a>Riacho Fundo  </a></option>
								<option value="Lago Norte "><a>Lago Norte  </a></option>
								<option value="Candangolândia  "><a>Candangolândia  </a></option>
								<option value="Riacho Fundo II "><a>Riacho Fundo II </a></option>
								<option value="Park Way"><a>Park Way </a></option>
								<option value="Itapoã"><a>Itapoã </a></option>
								 
								 
								
								
							</select>
                    </label>
                    <label class="">
                        Selecione sua serie:<br>
                     <select class="form" required  name="serie" id="serie" >
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
    								<option value="concluido">concluido</option>
  								</optgroup>
							</select>
                    </label>
                    <div class="cadastro">
                    	<button type="button"  name="send" id="send">Efetuar Cadastro</button>
                    </div>
                  </fieldset> 
                  </div>
                </form>   
                <button type="button"  data-toggle="modal" id="model" style="display:none;" data-target="#myModal"></button>
                    <!-- Modal-->
                <div class="container">
                  <!-- Trigger the modal with a button -->
                  <!-- Modal -->
                  <div class="modal fade" id="myModal" role="dialog" data-backdrop="static">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close close-modal" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body" id="formularioQuestao" style="position: relative; padding: 15px; margin: -124px 136px; height: 700px;">
                          <p>This is a large modal.</p>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-danger close-modal" name="fechar" id="fechar" >Fechar</button>
                          <button type="button" class="btn btn-warning" name="enviar" id="proximo" >Proximo</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                
      </div>
    </div>
  </div>
</section>
<script type="text/javascript">
         $("#send").click(function(){
             
             
             
             var nome = $("#nome").val();
             var fone = $("#fone").val();
             var mail = $("#mail").val();
             var cidade = $("#cidade").val();
             var serie = $("#serie").val();
             
             if(nome == '' || fone == '' || mail == '' || cidade == '' || serie == '' ){
                                         
                                         
                                        

                                        //$("#myModal").ready(function(){
                                            //$('#myModal').modal('show');
                           
                       //});
                 alert("Atenção! Preencha todos os campos");
             }else{
                $.ajax({
                    url:'App/regCadastro.php',
                    type:'POST',
                    data: {nome:nome, fone:fone, email:mail, cidade:cidade,serie:serie},
                    success:function(r){
                       if(swal ( " Bom trabalho! " , " Você clicou no botão! " , " sucesso ")){
                            $("#model").trigger('click');
                       }
                    }
                });
             }
      

        
    });

    $(".close-modal").click(function(){
        location.href="cadastro.php";
    });
    
    count = 1
    
    $("#send").click(function(){
      var id = 1;
                count++;
        $.ajax({
            url:'App/regQuestao.php',
            type:'GET',
            data: {cont:id},
            success:function(r){
               $("#formularioQuestao").html(r);
            }
        });
        
        if(id > 14)
            //swal ( " Bom trabalho! Voce deseja visualizar seu resultado? " , " O resultado tambem foi encaminhado para a sua caixa postal,  " , " sucesso ");
            //$("#model").trigger('click');
            
            location.href="resultado.php";
        
    });
    
        count = 1
    
    $("#proximo").click(function(){
      var id = count;
                count++;
        $.ajax({
            url:'App/regQuestao.php',
            type:'GET',
            data: {cont:id},
            success:function(r){
               $("#formularioQuestao").html(r);
            }
        });
        
        if(id > 15)
            location.href="resultado.php";
        
    });
    
    $("#proximo").click(function(){
        
        var var_name = $("input[name='op']:checked").val();
   
        $.ajax({
            url:'App/resultado.php',
            type:'GET',
            data: {letra:var_name},
            success:function(r){
               //alert(r);
            }
        });
     
    });


//swal-button--confirm

//Validação Formulario
$(document).ready( function() {
  $("#formularioContato").validate({
    // Define as regras
    rules:{
      nome:{
        // campoNome será obrigatório (required) e terá tamanho mínimo (minLength)
        required: true, minlength: 2
      },
      mail:{
        // campoEmail será obrigatório (required) e precisará ser um e-mail válido (email)
        required: true, email: true
      },
      fone:{
        // campoMensagem será obrigatório (required) e terá tamanho mínimo (minLength)
        required: true, minlength: 8
      }
    },
    // Define as mensagens de erro para cada regra
    messages:{
      nome:{
        required: "Digite o seu nome",
        minLength: "O seu nome deve conter, no mínimo, 2 caracteres"
      },
      mail:{
        required: "Digite o seu e-mail para contato",
        email: "Digite um e-mail válido"
      },
      fone:{
        required: "Digite o seu telefone",
        minLength: "Digite um telefone válido"
      }
    }
  });
});



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