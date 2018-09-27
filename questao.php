<?php
session_start();
//ARMAZENA OS DADOS NA PAGINA regQuestao.php
require_once "App/regQuestao.php";
require 'App/validar.class.php';

$val = new validar();
//$val->validar1("cadastro.php");


if(isset($_POST['enviar'])):
    // FAZ A PAGINA ENTRAR EM LOOP PARA BUSCA INFO. NO DB

    //header("Location:questao.php");

endif;
// $list = new Candidato;
//      if(empty($pg)){
//          $per1 = $list->lista('questao_enunciado',"WHERE ques_id = '1'");
//          $op1 = $list->lista('questao_opcoes',"WHERE quop_enunciado_id_enunciado = '1'");
//      }elseif($pg>14){
//         header("Location:resultado.php");
//         unset($_SESSION['logado']);
//         unset($_SESSION['pag']);
//      }else{
//          $n = 1;
//          $n += $pg;
//           $totalPag = 16 - $n;

//             $per1 = $list->lista('questao_enunciado',"WHERE ques_id = '$n'");
//             $op1 = $list->lista('questao_opcoes',"WHERE quop_enunciado_id_enunciado = '$n'");
//      }


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>- Teste vocacional -  </title>
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
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->

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
<header id="questao">

    <section id="stuck_container">
        <!--==============================
                    Stuck menu
        =================================-->
        <div class="container">
            <div class="row">
                <div class="grid_12 ">


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

            <div class="grid_12"  >

            </div>
            <form method="post" action="" >


                <div class="cadastro2 proximo">
                    <button type="button" class="btn btn-info btn-lg iniciaTeste" name="enviar" id="enviar" data-toggle="modal" data-target="#myModal">Iniciar teste</button>
                </div>
            </form>
        </div>

<!--         Modal-->
        <div class="container">
<!--         Trigger the modal with a button -->
<!--         Modal -->
          <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close close-modal" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body" id="formularioQuestao" style="position: relative; padding: 15px; margin: -124px 136px; height: 700px;">
                  <p>This is a large modal.</p>
                </div>
                  <div>
                      <label class="aviso" id="avisonaomarcado" style="text-align: center"></label>
                  </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-danger close-modal" name="fechar" id="fechar" >Fechar</button>
                  <button type="button" class="btn btn-primary" name="enviar" id="proximo"  >Proximo</button>
                </div>
              </div>
            </div>
          </div>
        </div>
    </div>
</section>
<script type="text/javascript">

    $(".close-modal").click(function(){
        location.href="cadastro.php";
    });

    count = 1;

    $("#enviar").click(function(){
        var id = 1;
        count ++;
        $.ajax({
            url:'App/regQuestao.php',
            type:'GET',
            data: {cont:id},
            success:function(r){
                $("#formularioQuestao").html(r);
            }
        });

        if(id > 14)
            location.href="resultado.php";

    });


    $("#proximo").click(function(){
        var id = count;
        var var_name = $("input[name='op']:checked").val();

        count++;

        //Verificar se o campo foi marcado
        if((var_name != null)){
            document.getElementById("avisonaomarcado").innerHTML = "";
            $.ajax({
                url:'App/regQuestao.php',
                type:'GET',
                data: {cont:id},
                success:function(r){
                    $("#formularioQuestao").html(r);
                }
            });

        }else {
            count --;
            document.getElementById("avisonaomarcado").innerHTML = "Opção obrigatória!";
        }

        if(id > 15)
            location.href="resultado.php";

    });

    $("#proximo").click(function(){

        var var_name = $("input[name='op']:checked").val();
            $.ajax({
                url:'App/resultado.php',
                type:'GET',
                data: {letra:var_name},
            });

    });

</script>
<!--==============================
              footer
=================================-->
<footer id="footer">
    <div class="container">
        <div class="row">
            <div class="grid_12">
                <div class="copyright"><span class="brand"><strong>UNIDESC</strong></span> &copy; <span id="copyright-year"></span> | <a href="#">Privacy Policy</a>
                    <div class="sub-copy">TURMA <strong> SISTEMAS DE INFORMAÇÂO <strong></strong><a href="http://www.templatemonster.com/" rel="nofollow"> 4� e 6�</a></div>
                </div>
            </div>
        </div>
    </div>
</footer>
<a href="#" id="toTop" class="fa fa-chevron-up"></a>
</body>
</html>