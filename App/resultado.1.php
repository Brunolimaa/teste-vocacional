<?php
session_start();
require_once "Conexao.php";
require_once "Candidato.php";
//require'validar.class.php';//$val = new validar();

//$val = new validar();
//$val->validar1('../cadastro.php');
$var .= $_GET['letra'];
$var = $var;
$cont = strlen($var);
$var1 = str_split($var,1);


for($i=0; $i<$cont;$i++){
		if($var1[$i] == 'A'){
			$a .= $var1[$i];
		}elseif($var1[$i] == 'B'){
			$b .= $var[$i];
		}elseif($var1[$i] == 'C'){
			$c .= $var[$i];
		}elseif($var1[$i] == 'D'){
			$d .= $var[$i];
		}elseif($var1[$i] == 'E'){
			$e .= $var[$i];
		}else{
			$f .= $var1[$i];
		}

}
//var_dump($var);
$a = strlen($a);
$b = strlen($b);
$c = strlen($c);
$d = strlen($d);
$e = strlen($e);
$f = strlen($f);
// echo "A = ".$a.'<br/>';
// echo "B = ".$b.'<br/>';
// echo "C = ".$c.'<br/>';
// echo "D = ".$d.'<br/>';
// echo "E = ".$e.'<br/>';
// echo "F = ".$f.'<br/>';

if($a > $b){
	$re = "A";
}elseif($b > $c){
	$re = "B";
}elseif($c > $d){
	$re = "C";
}elseif($d > $e){
	$re = "D";
}else{
	$re = "E";
}

//echo "RESPOSTA: ".$re;
?>

