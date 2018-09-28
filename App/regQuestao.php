<?php
require_once "Conexao.php";
require_once "Candidato.php";  
if(!isset($_SESSION)) 
{ 
	session_start(); 
} 
$n = '';
$n += isset($_GET['cont']) ? $_GET['cont'] : '';

$list = new Candidato; 
$totalPag = 16 - $n;
$per1 = $list->lista('questao_enunciado',"WHERE ques_id = '$n'");
$op1 = $list->lista('questao_opcoes',"WHERE quop_enunciado_id_enunciado = '$n'"); 

foreach($per1 as $v):
   echo "<h3 style='color: #f12323; font-size: 16px;'>Restam apenas ".$totalPag." perguntas...</h3>";
		echo '<p><h3 style="color: #ffa90a; font-weight;">'.utf8_encode($v['ques_descricao']).'</h3></p>';
		 foreach($op1 as $o):  
				echo '<p><input type="radio" required="" onclick="selecionarQuestao()" name="op" class="op" id="op'.$o['quop_letra'].'" value="'.$o['quop_letra'].'">&nbsp&nbsp&nbsp<label for="op'.$o['quop_letra'].'">'.utf8_encode($o['quop_descricao']).'</label></p><br>';
		 endforeach;
	
endforeach;

 
        


