<?php require_once '../include/head/head.php'; 

if ($_SESSION["Asientos Contables"] == 1 ) {


?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">

  	<!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="../cpanel/cpanel.php">Home</a></li>
              <li class="breadcrumb-item active">DataTables</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>


      <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- SELECT2 EXAMPLE -->
        <div class="card card-default">
          <div class="card-header">
            <h3 class="card-title">Select2 (Default Theme)</h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
              <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-remove"></i></button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">

	            <div id="msg">
	            	
	            </div>


	            <form id="addAsientoscontables" name="addAsientoscontables"  method="POST" class="form-horizontal" >
				<input type="hidden" class="form-control" id="idusuario" name="idusuario" value="<?php echo $_SESSION["id"];  ?>" >


						<div class="row">

							
						  

							<div class="form-group col-md-3">
                              <label>Fecha: *</label>
                                <input type="date" name="fecha" id="fecha" class="form-control">
                            </div>


                           

                           <div class="form-group col-md-4">
                              <label>Diarios: *</label>
                                <select class="form-control select2" name="idtipodiario" id="idtipodiario" required  style="width: 100%;">
                        			<option  >-----------</option>
                          			<?php


		                            require_once '../../modelos/Diarios/mdlDiarios.php';

		                            $mdlDiarios = new ModelDiarios();
		                            $listar = $mdlDiarios->tipoDiarios();


                          			foreach ($listar as $key => $data3) {
                                      # code...
                                      # 
                          				echo '<option value="'.$data3["idtipod"].'">'.$data3["nombre"].'</option>';

                                      }
                                	?>
                      			</select>
                            </div>


                            <div class="form-group col-md-4">
                              <label>Periodo : *</label>
                                <select class="form-control select2" name="idtipoperiodo" id="idtipoperiodo" required  style="width: 100%;">
                        			<option> ----------- </option>
                          			<?php


		                            require_once '../../modelos/asientoscontables/mdlAsientoscontables.php';

		                            $mdlAsientosperiodos = new ModeloAsientos();
		                            $listar = $mdlAsientosperiodos->Listarperiodo();


                          			foreach ($listar as $key => $data3) {
                                      # code...
                                      # 
                          				echo '<option value="'.$data3["idperiodo"].'">'.$data3["Codigo"].'</option>';

                                      }
                                	?>
                      			</select>
                            </div>
							
						</div>
							


						<div class="row">

							<div class="form-group col-md-3">
                              <label>Rut: *</label>
                                <input type="text" name="nit" id="nit" class="form-control" autocomplete="off" placeholder="Rut de la Empresa" oninput="checkRut(this)"  >
                                <input type="hidden" name="idempresa" id="idempresa">
                            </div>



                            <div class="form-group col-md-4">
                              <label>Empresa: *</label>
                                <input type="text" name="nombrempresa" id="nombrempresa" class="form-control" autocomplete="off" placeholder="Nombre Empresa" readonly="">
                            </div>



                           <div class="form-group col-md-4">
                              <label>Estado: *</label>
                                <select class="form-control select2" id="estado" name="estado" style="width: 100%;">
                                <option selected="selected">Sleccione un Estado</option>
                                <option selected="true" value="Abierto">Abierto</option>
                              </select>
                            </div>
							
						</div>

						<br><br><br>

						<div class="row">
							<div class="form-group col-md-6">
                              <label>Concepto: *</label>
                                <input type="text" name="concepto" id="concepto" class="form-control" autocomplete="off" placeholder="Digite un concepto">
                            </div>
						

							<div class="form-group col-md-5">
                              <label>Referencia: *</label>
                                <input type="text" name="referencia" id="referencia" class="form-control" autocomplete="off" placeholder="Digite un concepto">
                        	</div>
                        </div>


						<div id="mostrarDatos" style="color:green;" >
                           
                          </div>
                          <div id="error" name="error" style="color:red">
                            <!-- error will be shown here ! -->
                          </div> 

						
							
						
							

						<br><br>



							
						
					  	<table id="asientoscontablesTable" class="table ">
			                <thead>
			                <tr>
			                  <th>#</th>
			                  <th>Codigo</th>
			                  <th>Nombre Cuenta</th>
			                  <th>Debe</th>
			                  <th>Haber</th>
			                  <th>Accion</th>
			                </tr>
			                </thead>
			                <tbody>
			                <!--Comenzamos a añadir campos para venta -->
			                <?php
			                $arrayNumber = 0;
			                #contador para añadir lineas
			                $numero = 1;
			                $x=1;
			                for ($x=0; $x < 4; $x++) { 
			                 ?>

			                  <!--Se imprime las filas en la tabla -->
			                  <tr id="row<?php echo $x; ?>" class="<?php echo $arrayNumber; ?>">

			                    <td style="width:7%;">
			                    <input type="text" name="num[]" id="num<?php echo $x; ?>" autocomplete="off"  class="form-control"  value="<?php echo $numero; ?>" disabled="true"/>  
			                    
			                  </td>

			                  <td style="margin-left:20px;">
			                    <input type="text" name="codigocuenta[]" id="codigocuenta<?php echo $x; ?>" autocomplete="off"  class="form-control" onchange="getCodigocuenta(<?php echo $x; ?>)"  /> 
			                    <input type="hidden" name="n_digitos" id="n_digitos" > 
			                  </td>
			                  
			                 
			                  
			                    <td style="padding-left:20px;">
			                      <div class="form-group">
			                        <input type="text" name="nombrecuenta[]" id="nombrecuenta<?php echo $x; ?>" autocomplete="off"  class="form-control" />  
			                      </div>
			                    </td>

			                    <td style="padding-left:20px;">
			                      <input type="text" name="debe[]" id="debe<?php echo $x; ?>" autocomplete="off"  class="form-control" onkeypress="return valideKey(event);"  onkeyup="sumarsubtotal(<?php echo $x; ?>)"; /> 

			                       <input type="hidden" name="subtotal[]" id="subtotal<?php echo $x; ?>"  autocomplete="off" class="form-control"  onchange="sumarsubtotal(<?php echo $x; ?>);"  />
			                    </td>

			                    <td style="padding-left:20px;">
			                      <div class="form-group">
			                      <input type="text" name="haber[]" id="haber<?php echo $x; ?>"  autocomplete="off" class="form-control" onkeypress="return valideKey(event);"    />
			                      <input type="hidden" class="form-control" name="subtotalhaber[]"  onchange="sumartotalhaber()"   id="subtotalhaber'+count+'"  >
			                      </div>
			                    </td> 

			                   

			                    <td>
			                      <button class="btn btn-default removeProductRowBtn" type="button" id="removeProductRowBtn" onclick="removeProductRow(<?php echo $x; ?>)"><i class="far fa-trash-alt"></i></button>
			                    </td>  

			                    
			                    	
			                    	
			                  </tr>

			                 

			                  


			                <?php
			                $arrayNumber++;
			                $numero++;
			                $x++;
			                }//for donde añadimos los campos
			                ?>
			         	  </tbody>
			                
			              </table>

			              <div  class="row">

			              	<table>
			              		<tr>
			              			<td id="total_debe">Total Debe</td>
			              			<td><input  type="text" name="totaldebe[]" id="totaldebe" class="form-control"  readonly="" onchange="sumarsubtotal(<?php echo $x; ?>);"></td>
			              			
			              		</tr>

			              		<tr>
			              			<td id="total_haber">Total Haber</td>
			              			<td><input type="text" name="totalhaber" id="totalhaber" class="form-control" readonly=""></td>
			              		</tr>
			              	</table>
			              	
			              </div>

			             



			              

			              <br><br>



			              <div style="padding-top:20px;" class="form-group submitButtonFooter">
						    <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">

						   	<!-- accion para añadir td a la atabla -->

						   	<button  type="button" class="btn  btn-dark "  id="addRowBtn" data-loading-text="Cargando..."> <i class="glyphicon glyphicon-plus-sign"></i>Añadir Fila</button>
						    

						    <button class="btn btn-primary btnGuardarAsientoscontables" type="submit" ><i class="fa fa-save"></i>  Guardar</button>


                      		<button class="btn btn-danger" onclick="cancelarform()" type="button"><i class="fa fa-arrow-circle-left"></i> Cancelar</button>
						    <!-- fin accion -->

							    
						    </div>
						
						</div>



			              </form>



						</div>
					</div>				
		          </div>
		      </div>
		  
	</section>
		                


 </div>


 <?php 


}else{
	include '../include/noacceso.php';
}

?>
<?php
require_once '../include/footer/footer.php';
 ?>

 <script src="../scripts/asientoscontables.js"></script> 

 <script>
 	$(function(){


 		$("#nit" ).autocomplete({
            source: function( request, response ) {
                
                $.ajax({
                    url: "../../controlador/empresa/Buscarempresa.php",
                    type: 'post',
                    dataType: "json",
                    data: {
                        search: request.term
                    },
                    success: function( data ) {
                        response( data );
                    }
                });
            },
            select: function (event, ui) {
	            $('#nombrempresa').val(ui.item.label); // display the selected text
                $('#idempresa').val(ui.item.value); // save selected id to input
	         
                return false;
            }
        });


   


        	
        	
 	});
 </script>


 



 