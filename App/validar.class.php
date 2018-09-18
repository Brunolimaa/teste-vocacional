<?php
class validar{


    public function validar1($caminho){
        session_start();
        
        // verifica se o usuario logou 
        // armazenal um valor em sessao com o nome logado.
        if(!isset($_SESSION['logado'])):
               header('location:'.$caminho);
        endif;  
            
    }
    
    public function compara(){
        if($_SESSION['logado'] == true){
            header("refresh:2;url=questao.php");
        }else{
            $erro = $_SESSON['mensagem'] = "<p class='bg-danger'>OPS!, Faça seu cadastro para ter acesso as questões.</p>"; 
        }	
    }
}
