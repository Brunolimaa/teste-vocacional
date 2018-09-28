<?php
require_once "Conexao.php";
require_once "Candidato.php";  
//require "resultado.1.php";
    session_start();    
        
        $n += $_GET['cont'];
        
        //echo $contagem;
        $list = new Candidato; 

               $totalPag = 16 - $n;

                $per1 = $list->lista('questao_enunciado',"WHERE ques_id = '$n'");

                $op1 = $list->lista('questao_opcoes',"WHERE quop_enunciado_id_enunciado = '$n'"); 

        		foreach($per1 as $v):
        		   echo "<h3 style='color: #f12323; font-size: 16px;'>Restam apenas ".$totalPag." perguntas...</h3>";
        				echo '<p><h3 style="color: #ffa90a; font-weight;">'.utf8_encode($v['ques_descricao']).'</h3></p>';
        			     foreach($op1 as $o):
        			               
                    	        echo '<input type="radio"  id="'.$o['quop_letra'].'" name="op" class="op" value="'.$o['quop_letra'].'"><label for="'.$o['quop_letra'].'">&nbsp&nbsp&nbsp'.utf8_encode($o['quop_descricao']).'</label></p><br>';
                             
                         endforeach;
        	        
        		endforeach;
