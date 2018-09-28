<?php


abstract class Conexao

{
	//parametos para se conectar ao banco
	//usuario e senha
	const USER = "limabr";
	const PASS = "";

	private static $instance = null;

	private static function conectar(){
		try{
			if(self::$instance == null):
				$dns = "mysql:host=localhost;dbname=teste-vocacional";
				self::$instance = new \PDO($dns, self::USER, self::PASS);
				self::$instance->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			endif;
		}catch(\PDOException $e){
			echo "Erro ".$e->getMessage();
		}

		return self::$instance;
	}

	protected static function getDB(){
		return self::conectar();
	}
}