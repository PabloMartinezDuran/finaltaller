<?php
header('Access-Control-Allow-Origin: *');
	require_once '../modelos/entidadestetica.php';
	require_once '../modelos/modeloestetica.php';

	$modeles= new ModelEstetica();

	if(isset($_REQUEST['Accion'])){
		switch($_REQUEST['Accion']){

		case 'listar':
				$jsondata=$modeles->listar();
				//var_dump($jsondata);
				header('Content-type: application/json; charset=utf-8');
				echo json_encode($jsondata);
				break;

        case 'obtener':
            $jsondata = $modeles->Obtener($_REQUEST['esteId']);
            header('Content-type: application/json; charset=utf-8');
            echo json_encode($jsondata);            
            break;		
  	}
}

?>