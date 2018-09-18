<?php
require_once "Conexao.php";
require_once "Candidato.php";  
//require "resultado.1.php";
    session_start();    
        
        $n += $_GET['cont'];
        
        //echo $contagem;
        $list = new Candidato; 
        /* if(empty($contagem)){
             $per1 = $list->lista('questao_enunciado',"WHERE ques_id = '1'");
             $op1 = $list->lista('questao_opcoes',"WHERE quop_enunciado_id_enunciado = '1'"); 
         }elseif($contagem>14){
            header("Location:resultado.php");
            unset($_SESSION['logado']);
            //unset($_SESSION['pag']);
         }else{*/
             //$n = 1;
             //$n = $contagem; 
               $totalPag = 16 - $n;
               
               //echo $totalPag; 
               
               
               
                $per1 = $list->lista('questao_enunciado',"WHERE ques_id = '$n'");
                
                
                $op1 = $list->lista('questao_opcoes',"WHERE quop_enunciado_id_enunciado = '$n'"); 
                
               
               
                
        		foreach($per1 as $v):
        		   echo "<h3 style='color: #f12323; font-size: 16px;'>Restam apenas ".$totalPag." perguntas...</h3>";
        				echo '<p><h3 style="color: #ffa90a; font-weight;">'.utf8_encode($v['ques_descricao']).'</h3></p>';
        			     foreach($op1 as $o):
        			               
                    	        echo '<p><input type="radio" required="" name="op" class="op" value="'.$o['quop_letra'].'">&nbsp&nbsp&nbsp'.utf8_encode($o['quop_descricao']).'</p><br>';
                             
                         endforeach;
        	        
        		endforeach;
        		
                //echo $re;
                // if(isset($n) && !empty($n)){                //echo $re; exit();
                //     $resuFinal = $list->lista('Curso',"WHERE grupo = '$re'");
                //     $teste = $list->listaUm('curs_descricao','Curso',"WHERE grupo = '$re'");
                //     $mail = $_SESSION['mail'];
                //     foreach($teste as $tes){
                //       $te[] = $tes['curs_descricao'];
                //     }
                //     $resultado =  implode(" - ",$te);
                //     $list->update($resultado,$mail);
                // }
        		
        // 		if($n>14){
        		    
        //             header("Location:resultado.php");
        //             //unset($_SESSION['logado']);
        //             //unset($_SESSION['pag']);
        //          }
        		
        // }
         
 
        


