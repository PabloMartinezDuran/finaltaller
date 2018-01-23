<?php

class Estetica{
	private $se_id;
	private $se_nombre;
	private $se_descripcion;
	private $se_imagenp;
	private $se_imagen;
	private $se_categoria_id;
	private $se_categoria_nombre;
	
	public function __GET ($k){
		return $this->$k;
	}
	public function __SET($k,$v){
		$this->$k=$v;
	}
	public function returnArray(){
		return get_object_vars($this);
	}
}

?>