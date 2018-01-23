<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
require_once '../config/config.php';
class ModelEstetica{

	private $pdo;

	public function __CONSTRUCT() {
		try{
			$this->pdo=new PDO('mysql:host='.HOST.';dbname='.DB,USERDB,PASSDB);
			$this->pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		}catch(Exception $e){
			die($e->getMessage());
		}
	}

	
	public function listar(){
		$responsearray = array();
		try{
	
			$result = array();
			$stm=$this->pdo->prepare("SELECT * FROM servicio, categoria where categoria_id=servicio_categoria_id");
			$stm->execute();
			foreach($stm->fetchALL(PDO::FETCH_OBJ) as $r){
				$esteticas = new Estetica();
					$esteticas->__SET('se_id', $r->servicio_id);
					$esteticas->__SET('se_nombre', $r->servicio_nombre);
					$esteticas->__SET('se_descripcion', utf8_encode($r->servicio_descripcion));
					$esteticas->__SET('se_imagenp', $r->servicio_imagenp);
					$esteticas->__SET('se_imagen', $r->servicio_imagen);
					$esteticas->__SET('se_categoria_id', $r->servicio_categoria_id);
	                $esteticas->__SET('se_categoria_nombre', $r->categoria_nombre);
				$result[] = $esteticas->returnArray();
	
			}
			$responsearray['success']=true;
			$responsearray['message']='Listado correctamente';
			$responsearray['datos']=$result;

		}catch(Exception $e){
			echo $e;
			$responsearray['success']=false;
			$responsearray['message']='Error al listar ';
		}
	
		return $responsearray;
	
	}



	public function Obtener($id){
        $jsonresponse = array();
      
        try{
            $stm = $this->pdo->prepare("SELECT * FROM servicio, categoria where categoria_id=servicio_categoria_id AND servicio_id = ?");
            $stm->execute(array($id));
            $r = $stm->fetch(PDO::FETCH_OBJ);

          
            $esteticas = new Estetica();
					$esteticas->__SET('se_id', $r->servicio_id);
					$esteticas->__SET('se_nombre', $r->servicio_nombre);
					$esteticas->__SET('se_descripcion', utf8_encode($r->servicio_descripcion));
					$esteticas->__SET('se_imagenp', $r->servicio_imagenp);
					$esteticas->__SET('se_imagen', $r->servicio_imagen);
					$esteticas->__SET('se_categoria_id', $r->servicio_categoria_id);
	                $esteticas->__SET('se_categoria_nombre', $r->categoria_nombre);

        
            $jsonresponse['success'] = true;
            $jsonresponse['message'] = 'Se obtuvo  correctamente';
            $jsonresponse['datos'] = $esteticas->returnArray();
        

        } catch (Exception $e){
            
            $jsonresponse['success'] = false;
            $jsonresponse['message'] = 'Error ';      

        }

        return $jsonresponse;
    }
}
?>
