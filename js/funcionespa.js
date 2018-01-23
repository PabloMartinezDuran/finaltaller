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
                url: "controllers/controlleresteticapa.php", 
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
                                fila ='<a href="pag4.html?id='+data.datos[i].se_id+'"><div class="row"><div class="col-xs-4"><img width="100%" height="20%" src="'+data.datos[i].se_imagenp+'"></div>';
                                fila +='<div class="col-xs-8">';
                                fila +='<div class="row"><div class="col-xs-12"><font size="5">Masaje '+data.datos[i].se_nombre+'</font></div></div>';
                                fila +='<div class="container" ><div class="col-xs-12"><font size="5">valor: '+data.datos[i].se_precio+'</font></div></div>';
                               fila +='<div class="row"><div class="col-xs-12"><font size="4">Categoria:'+data.datos[i].se_categoria_nombre+'</font></div></div>';
                                fila +='<div class="row"><div class="col-xs-12"><font size="2">'+textonuevo+'</font></div></div>';                                fila +='</div></div></a><br>';
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
   