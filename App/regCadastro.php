<?php
session_start();
require_once "Conexao.php";
require_once "Candidato.php";

// Salva as informações buscada no formulario
//if(isset($_POST['send'])){
	$nome = filter_input(INPUT_POST,"nome",FILTER_SANITIZE_MAGIC_QUOTES);
	$mail = filter_input(INPUT_POST,"email",FILTER_SANITIZE_MAGIC_QUOTES);
	$fone = filter_input(INPUT_POST,"fone",FILTER_SANITIZE_MAGIC_QUOTES);
	$cidade = filter_input(INPUT_POST,"cidade",FILTER_SANITIZE_MAGIC_QUOTES);
	$serie  = filter_input(INPUT_POST,"serie",FILTER_SANITIZE_MAGIC_QUOTES);

		if(!empty($nome) && !empty($mail) && !empty($fone) && !empty($cidade) && !empty($serie)){
		$cad = new Candidato;
			$cad->setNome($nome);
			$cad->setMail($mail);
			$cad->setFone($fone);
			$cad->setCidade($cidade);
			$cad->setSerie($serie);
			$_SESSION['logado'] = null;
			$valida = $cad->validaMail(); // Verifica o e-mail
				$arr['cand_nome'] = $cad->getNome();
				//if($valida){
					$arr['cand_email'] = $cad->getMail();
					$arr['serie'] = $cad->getSerie();
					$arr['cand_cel'] = $cad->getFone();
					$arr['cand_cidade'] = $cad->getCidade();
					$arr['date'] = date('d-m-Y H:i:s');
					$exe = $cad->create("candidato",$arr);
						if($exe):
							echo "<p class='bg-success'>Cadastrado com sucesso!</p>";
							$_SESSION['mail'] = $cad->getMail();
							//$_SESSION['logado'] = true;
							$_SESSION['candidato'] = $arr;

							header("refresh:0.1;url=questao.php");
							echo "Olá $nome";
						else:
							echo '<p class="bg-danger">Erro ao realizar cadastro.</p>';
							$_SESSION['logado'] = false;

						endif;
		}
				/*}else{
					echo "<p class='bg-danger' >E-mail invalido!</p>";
				}*/
	//echo $_SESSION['mensagem'];
//}
//if(isset($_POST['send'])){
	$_SESSION['valor'] += isset($_POST['op']) ? $_POST['op'] : "" ;
}
if(!empty($_SESSION['candidato'])){

    return true;
}else{
    return false;
}

?>
