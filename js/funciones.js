    $(document).ready(function(){
   
        //Listar 
        var getlista = function (){
            var datax = {
                "Accion":"listar"
            }
           
            $.ajax({
                data: datax, 
                type: "GET",
                dataType: "json", 
                url: "controllers/controllerestetica.php", 
            })
            
            .done(function( data, textStatus, jqXHR ) {
                $("#listado").html("");
                if ( console && console.log ) {
                    console.log( " data success : "+ data.success 
                        + " \n data msg : "+ data.message 
                        + " \n textStatus : " + textStatus
                        + " \n jqXHR.status : " + jqXHR.status );
               
                }
                for(var i=0; i<data.datos.length;i++){
                                var descrip= data.datos[i].se_descripcion;
                                textonuevo = descrip.substr(0,0);
                                     console.log(textonuevo.length);
                                fila ='<a href="pag1.html?id='+data.datos[i].se_id+'"><div class="container"><div class="col-xs-12"><img class="img-thumbnail"  width="70%" height="20%" src="'+data.datos[i].se_imagen+'" ></div>';
                                fila +='<div class="col-xs-12">';
                                fila +='<div class="container" ><div class="col-xs-12"><font size="5">'+data.datos[i].se_nombre+'</font></div></div>';
                                //fila +='<div class="container"><div aling="center"><div class="col-xs-12"><font size="4">Categoria:'+data.datos[i].se_categoria_nombre+'</font></div></div></div>';
                                fila +='<div class="container"><div class="col-xs-12"><font size="2">Revisa en que consiste'+textonuevo+'</font></div></div>';
                                fila +='</div></div></a><br>';
                                $("#listado").append(fila);
                }

                
            })
            .fail(function( jqXHR, textStatus, errorThrown ) {
                if ( console && console.log ) {
                    console.log( " La solicitud getlista ha fallado,  textStatus : " +  textStatus 
                        + " \n errorThrown : "+ errorThrown
                        + " \n textStatus : " + textStatus
                        + " \n jqXHR.status : " + jqXHR.status );
                }
            });
        }
        
        getlista();
   
    });
   