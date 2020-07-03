$(function(){


 


  

    
	$('#addRowBtn').on('click', function(evt){
		evt.preventDefault();

		agregarFila();
	});


	load(1);




	$('.btnGuardarAsientoscontables').on('click', function(evt){
		evt.preventDefault();

		let form = $('#addAsientoscontables').serialize();


		$.ajax({
			url: '../../controlador/asientoscontables/RegistroAsientosContables.php',
			type: 'POST',
			data: form,
			dataType: 'html',
			cache:false,
			async:true,
			contentType: false,
			processData: false,

			beforeSend: function(obj){
				$('#msg').html('<div class="alert alert-info alert-dismissible fade show" role="alert">'+
  											'<strong>Información!  </strong>Enviando datos, porfavor espere un momento.'+
				  							'<button type="button" class="close" data-dismiss="alert" aria-label="Close">'+
				    							'<span aria-hidden="true">&times;</span>'+
				  							'</button>'+
											'</div>');
			},

			success: function(datos){

				if(datos == 'ok'){
							$('#msg').html('<div class="alert alert-success alert-dismissible fade show" role="alert">'+
  											'<strong>Exito!</strong> Registrado Diario correctamente.'+
				  							'<button type="button" class="close" data-dismiss="alert" aria-label="Close">'+
				    							'<span aria-hidden="true">&times;</span>'+
				  							'</button>'+
											'</div>');
							limpiarcampos();
							load(1);

							
						}else if(datos == 'error'){
							$('#msg').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">'+
  											'<strong>ERROR!</strong> Error al ingresar los datos.'+
				  							'<button type="button" class="close" data-dismiss="alert" aria-label="Close">'+
				    							'<span aria-hidden="true">&times;</span>'+
				  							'</button>'+
											'</div>');
						}else if(datos == 'error2'){
							$('#msg').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">'+
  											'<strong>ERROR!</strong>Ya hay un Registro de Diario con este Codigo.'+
				  							'<button type="button" class="close" data-dismiss="alert" aria-label="Close">'+
				    							'<span aria-hidden="true">&times;</span>'+
				  							'</button>'+
											'</div>');
						}else if(datos == '9'){
							$('#msg').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">'+
  											'<strong>ERROR!</strong> Todos los campos son obligatorios.'+
				  							'<button type="button" class="close" data-dismiss="alert" aria-label="Close">'+
				    							'<span aria-hidden="true">&times;</span>'+
				  							'</button>'+
											'</div>');
						}else if(datos == "8"){
							$('#msg').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">'+
  											'<strong>ERROR!</strong> Caracteres mayor de 10 .'+
				  							'<button type="button" class="close" data-dismiss="alert" aria-label="Close">'+
				    							'<span aria-hidden="true">&times;</span>'+
				  							'</button>'+
											'</div>');
						}

			}
		});
	});



	


});

/*
function addRow(){
	let tableLength = $("#asientoscontablesTable tbody tr").length;

	let tableRow;
	let arrayNumber;
	let count;

	if (tableLength > 0) {
		tableRow = $("#asientoscontablesTable tbody tr:last").attr('id');
		arrayNumber = $("#asientoscontablesTable tbody tr:last").attr('class');
		count = tableRow.substring(3);
		count = Number(count) + 1;
		arrayNumber = Number(arrayNumber) + 1;
	}else{
		count = 1;
		arrayNumber = 0;
	}

	$.ajax({
		url: '../../controlador/asientoscontables/FetchAsientosData.php',
		type: 'post',
		dataType: 'json',
		success:function(response) {
			$("#addRowBtn").button("reset");

			let tr = '<tr id="row'+count+'" class="'+arrayNumber+'">'+
					
					'<td style="margin-left:20px;"">'+
						'<input type="text" name="codProd[]" id="codProd'+count+'" autocomplete="off"  class="form-control"  />'+
					'</td style="padding-left:20px;">'+
					
					'<td style="display:none">'+
						'<input type="text" name="statusProd[]" id="statusProd'+count+'" autocomplete="off"  class="form-control" style="display:none"  />'+
					'</td>'+
				
					'<td style="padding-left:20px;"">'+
					'<div class="form-group">'+
					'<input type="text" class="form-control" name="productName[]" id="productName'+count+'" disabled="true" >'+
					
					'</div>'+
					'</td>'+
				
					'<td style="padding-left:20px;"">'+
						'<input type="text" name="rate[]" id="rate'+count+'" autocomplete="off" disabled="true" class="form-control" />'+
						'<input type="hidden" name="rateValue[]" id="rateValue'+count+'" autocomplete="off" class="form-control" />'+
					'</td style="padding-left:20px;">'+
					
					'<td style="padding-left:20px;">'+
						'<div class="form-group">'+
							'<input type="number" name="quantity[]" id="quantity'+count+'"  autocomplete="off" class="form-control" min="1" />'+
						'</div>'+
					'</td>'+
				
					'<td style="padding-left:20px;">'+
						'<input type="text" name="total[]" id="total'+count+'" autocomplete="off" class="form-control" disabled="true" />'+
						'<input type="hidden" name="totalValue[]" id="totalValue'+count+'" autocomplete="off" class="form-control" />'+
					'</td>'+
					
					'<td>'+	
						'<button class="btn btn-default removeProductRowBtn" type="button" onclick="removeProductRow('+count+')"><i class="glyphicon glyphicon-trash"></i></button>'+
					'</td>'+
					'</tr>';

			if(tableLength > 0) {							
				$("#asientoscontablesTable tbody tr:last").after(tr);
			} else {				
				$("#asientoscontablesTable tbody").append(tr);
			}

		} 
	}); 
}
*/


function load(page){



	let query=$("#q").val();
	let per_page=5;
	let parametros = {"action":"ajax","page":page,'query':query,'per_page':per_page};
	$("#loader").fadeIn('slow');

			
	$.ajax({
		url:'../../controlador/asientoscontables/ListPuc.php',
		cache: false,
		asyn:true,
		data: parametros,
		
		beforeSend: function(objeto){

		 //$("#loader").html('<div class="alert-success">Cargando...</div>');
		},
		success:function(data){
		 $(".outer_div").html(data).fadeIn('slow');
		 $("#loader").html("");
		}
	})
}

let debe = 0;
let subtotal = 0;
///funcion añadir fila a la tabla
function agregarFila(){

	let tableLength = $("#asientoscontablesTable tbody tr").length;

	let tableRow;
	let arrayNumber;
	let count;

	if (tableLength < 6) {
		tableRow = $("#asientoscontablesTable tbody tr:last").attr('id');
		arrayNumber = $("#asientoscontablesTable tbody tr:last").attr('class');
		count = tableRow.substring(3);
		count = Number(count) + 1;
		arrayNumber = Number(arrayNumber) + 1;
	}else{
		count = 1;
		arrayNumber = 0;
	}

	$.ajax({
		url: '../../controlador/asientoscontables/FetchAsientosData.php',
		type: 'post',
		dataType: 'json',
		success:function(response) {


		let fila = '<tr id="row'+count+'" class="'+arrayNumber+'">'+
					'<td style="width:7%;">'+count+'</td>'+
					'<td style="margin-left:20px;"><input type="text" name="codigocuenta[]" id="codigocuenta'+count+'" autocomplete="off"  class="form-control"  value="" onchange="getCodigocuenta('+count+')"  /></td>'+
					'<td style="margin-left:20px;"><input type="text" name="nombrecuenta[]" id="nombrecuenta'+count+'" autocomplete="off"  class="form-control"  value="" /></td>'+
					'<td style="padding-left:20px;"><input type="text" name="debe[]"  id="debe'+count+'" autocomplete="off"  class="form-control" onkeyup="sumarsubtotal()" onkeypress="return valideKey(event);"  /></td>'+
					'<td style="padding-left:20px;"><input type="text" name="haber[]" id="haber'+count+'" autocomplete="off"  class="form-control"  value="" onkeyup="sumartotalhaber()" onkeypress="return valideKey(event);" onkeyup="format(this);" /></td>'+
					'<td style="padding-left:20px;">'+
					'<button class="btn btn-default removeProductRowBtn" type="button" id="removeProductRowBtn" onclick="removeProductRow('+count+')"><i class="far fa-trash-alt"></i></button></td>'+
					'<input type="hidden" class="form-control" name="subtotal[]"  onchange="sumarsubtotal()"   id="subtotal'+count+'"  >'+
					'<input type="hidden" class="form-control" name="subtotalhaber[]"  onchange="sumartotalhaber()"   id="subtotalhaber'+count+'"  >'+
				'</tr>';

			sumarsubtotal();
			sumartotalhaber();

			if(tableLength > 0) {							
				$("#asientoscontablesTable tbody tr:last").after(fila);
			} else {				
				$("#asientoscontablesTable tbody").append(fila);
			}


			


			} // /success
	}); // get the product data ajax
	
}



//suma de subtotal por cada producto añadido
function sumarsubtotal(){
  
  const debe=document.getElementsByName("debe[]");
  const sub=document.getElementsByName("subtotal[]");

  let total=0.0;

  for (var i = 0; i < debe.length; i++) {  

  	const inpC=debe[i];
  	const inpS=sub[i];


  	inpS.value  = parseInt(inpC.value);
    document.getElementsByName("subtotal[]")[i].innerHTML=inpS.value;

  }
  
	calcularDebe();
  }


  //suma de subtotal por cada producto añadido
function sumartotalhaber(){
  
  const haber=document.getElementsByName("haber[]");
  const sub=document.getElementsByName("subtotalhaber[]");

  let total=0.0;

  for (var i = 0; i < haber.length; i++) {  

  	const inpC=haber[i];
  	const inpS=sub[i];


  	inpS.value  = parseInt(inpC.value);
    document.getElementsByName("subtotalhaber[]")[i].innerHTML=inpS.value;

  }
  
	calcularhaber();

  }

//Eliminar Producto registro
function removeProductRow(row = null){
	if (row) {
		$("#row"+row).remove();

		
	}else{
		alert('Error !! Actualizar la Pagina (F5)');
	}
}
//End Eliminar Producto registro






//  //Funcion GETempleado
function getCodigocuenta(row = null){

	let codigocuenta = $("#codigocuenta"+row).val();

		
		

	$.ajax({
		url: '../../controlador/asientoscontables/Buscarplancuentas.php',
		type: 'post',
		data: {codigocuenta : codigocuenta},
		dataType: 'json',
		success:function(response) {
					
			$('#idc'+row).val(response.idc);
			$('#codigocuenta'+row).val(response.n_digitos);
			$('#nombrecuenta'+row).val(response.nombre);
					
		}//Success ajax
			
	});// /ajax function to fetch the product data	
		
		
}
///End GETempleado
///




//funcion de RUT Cliente
function focusRutCliente()
{
    document.getElementById("nit").focus();
}

function checkRut(rut) 
{

  if (rut.value.length <= 1) {
    mostrarDatos.classList.remove('alert-success', 'alert-danger');
    console.log(rut);
  }

  // Obtiene el valor ingresado quitando puntos y guiÃ³n.
  var valor = clean(rut.value);

  // Divide el valor ingresado en dÃ­gito verificador y resto del RUT.
  cuerpo = valor.slice(0, -1);
  dv = valor.slice(-1).toUpperCase();

  // Separa con un GuiÃ³n el cuerpo del dÃ­gito verificador.
  rut.value = format(rut.value);

  // Si no cumple con el mÃ­nimo ej. (n.nnn.nnn)
  if (cuerpo.length < 7) {
    rut.setCustomValidity("RUT Incompleto");
    console.clear();//FRONT-END
    return false;
  }

  // Calcular digito Verificador "metodo del MÃ³dulo 11"
  suma = 0;
  multiplo = 2;

  // Para cada digito del Cuerpo
  for (i = 1; i <= cuerpo.length; i++) {
    // Obtener su Producto con el MÃºltiplo Correspondiente
    index = multiplo * valor.charAt(cuerpo.length - i);

    // Sumar al Contador General
    suma = suma + index;

    // Consolidar Multiplo dentro del rango [2,7]
    if (multiplo < 7) {
      multiplo = multiplo + 1;
    } 
  else 
  {
        multiplo = 2;
    }
    
    
  }

  // Calcular Digito Verificador en base al Modulo 11
  dvEsperado = 11 - (suma % 11);

 // Casos Especiales (0 y K)
    dv = (dv == 'K')?10:dv;
    dv = (dv == 11)?0:dv;
  

  // Validar que el Cuerpo coincide con su DÃ­gito Verificador
  if (dvEsperado != dv) {
    rut.setCustomValidity('');
    $('#mostrarDatos').html('Rut Ingresado No es Valido').css('class="alert alert-success  alert-dismissible  " ');
    console.clear();
    return false;
  } 
  else 
  {

      rut.setCustomValidity('');
      $('#mostrarDatos').html('Rut Ingresado  es Valido').css('class="alert alert-success  alert-dismissible  " ');
      console.clear();//FRONT-END
      return true;
   
  }
}

function format (rut) {
  rut = clean(rut)

  var result = rut.slice(-4, -1) + '-' + rut.substr(rut.length - 1)
  for (var i = 4; i < rut.length; i += 3) {
    result = rut.slice(-3 - i, -i) + '.' + result
  }

  return result
}

function clean (rut) {
  return typeof rut === 'string'
    ? rut.replace(/^0+|[^0-9kK]+/g, '').toUpperCase()
    : ''
}

///funcion para validar input que permita solo numeros asi no dejamos que el usuario digite numeros negativos
function valideKey(evt) {
    let code = evt.which ? evt.which : evt.keyCode;
         if (code == 8) {
                    //backspace
             return true;
          } else if (code >= 48 && code <= 57) {
                    //is a number
             return true;
          } else {
             return false;
       }
 }




//aqui voy sumando los subtotales de todos los productos añadidos

function calcularDebe(){

  const sub = document.getElementsByName("subtotal[]");
  const debe = document.getElementsByName("debe[]");
  let total=0.0;

  

  for (let i = 0; i < sub.length; i++) {
  		const inpC = debe[i];

  	if (isNaN(sub[i])) {
  		total += parseInt(sub[i].value);
  	}

  	
  		
  
 	
  
  }


  //$("#total_debe").html(total);
  $("#totaldebe").val(total);

  
}


function calcularhaber(){

  const sub = document.getElementsByName("subtotalhaber[]");
  const debe = document.getElementsByName("haber[]");
  let total=0.0;

  

  for (let i = 0; i < sub.length; i++) {
  		const inpC = debe[i];

  	if (isNaN(sub[i])) {
  		total += parseInt(sub[i].value);
  	}

  	
  		
  
 	
  
  }


  //$("#total_debe").html(total);
  $("#totalhaber").val(total);

  
}



