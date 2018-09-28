<?php
require_once "Conexao.php";
class Candidato extends Conexao
{
	private $nome;
	private $email;
	private $telefone;
	private $celular;
	private $cidade;
	private $serie;
	private $resu;
	private $db;

	public function getNome(){
		return $this->nome;
	}
	public function getMail(){
		return $this->email;
	}
	public function getFone(){
		return $this->telefone;
	}
	public function getCel(){
		return $this->celular;
	}
	public function getCidade(){
		return $this->cidade;
	}
	public function getSerie(){
		return $this->serie;
	}
	public function getResu(){
		return $this->resu;
	}
	
	public function setResu($resu){
		$this->resu = $resu;
	}
	public function setNome($nome){
		$this->nome = $nome;
	}
	public function setMail($mail){
		$this->email = $mail;
	}
	public function setFone($fone){
		$this->telefone = $fone;
	}
	public function setCel($cel){
		$this->celular = $cel;
	}
	public function setCidade($cidade){
		$this->cidade = $cidade;
	}
	public function setSerie($serie){
		$this->serie = $serie;
	}
	public function __construct(){
		$pdo = parent::getDB();
		$this->db = $pdo;
	}
	public function validaMail($email){
		$preg = preg_match('/[0-9a-z_\.\-]@+[0-9a-z_\.\-]+\.[a-z]{2,4}+/',$this->getMail($email));
			if($preg){
				return true;
			}else{
				return false;
			}
		
	}
	public function lista($tabela,$where = NULL){
		$qr = "SELECT * FROM {$tabela} {$where}";
		$stmt = $this->db->prepare($qr);
		$stmt->execute();
		$res = $stmt->fetchAll(\PDO::FETCH_ASSOC);
		return $res;
	
	}
	
	public function listaUm($tudo,$tabela,$where){
		$qr = "SELECT {$tudo} FROM {$tabela} {$where}";
		$stmt = $this->db->prepare($qr);
		$stmt->execute();
		$res = $stmt->fetchAll(\PDO::FETCH_ASSOC);
		return $res;
	}

	

	public function create($tabela, array $datas){
		$value = "'".implode("','", array_values($datas))."'";
		$field = implode(",",array_keys($datas));
		$qr = "INSERT INTO {$tabela}(cand_nome,cand_email,cand_serie,cand_tel, cand_cidade, cand_date) VALUES ($value)";
		$stmt = $this->db->prepare($qr);
		$res = $stmt->execute();
		if($res){
			return true;
		}else{
			return false; 
		}
	}

	public function update($resu,$mail, $ip = null){
		//UPDATE `candidato` SET `resultado_curso`='ma - sis- go ' WHERE cand_email = 'conecthouse@gmail.com ';
		$qr = "UPDATE candidato SET resultado_curso ='$resu', ip_visitante = '$ip'  WHERE cand_email = '$mail'";
		$stmt = $this->db->prepare($qr);
		$pdo = $stmt->execute();
		if($pdo){
			return true;
		}else{
			return false;
		}

	}
	
}

