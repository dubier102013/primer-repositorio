Proceso sin_titulo
	//METODO1
	//crear un algoritmo con varios metodos para realizar las operaciones basicas de una cuenta bancarria 
	//deposito retiro y consulta de saldo. usuario con saldo de 99999999999999
	//Nota el saldo de la cuenta nnca debe quedar negativo.
	
	
	//METODO2
	//suponga que usted debe dieñar un programa para controlar la entrada y salida de vehiculos 
	//de un parqueadero que tiene 250 cupos. implemente varios metodos 
	//de tal forma que cuando ingrese o salga un vehiculo infrome el total de 
	//vehiculos que hay en el parqueadero. NOTA: al iniciar no hay ningun vehiculo
	//en el parquedero.
	
	//METODO3
	//hacer un algoritmo con menus de conversion de monedas
	//euros a pesos 1 euro=4,403.29 pesos
	//dolares a pesos 1 dolar= 3,998.50
	//yen a pesos 1 yen =37.25
	//libra esterlina a pesos = 4841,74
	
	definir saldototal,deposito,retiro,cupos,dolar,euro,yen,libraesterlina,conversion como numerico;
	Definir respuestaOpcion,respuestaMenuPrincipal,respuestaMenuOpcion,respuestaMenuOpcionretiro,respuestaMenuOpcionconsulta,respuestaparqueo,respuestaingreso,respuestasalida,respuestacupos,respuestaconversion,respuestaeuropeso,respuestadolarpeso,respuestayenpeso,respuestalibrapeso como texto;
	Definir RegresarMenuPrincipal,RegresarMenucuenta,regresarDeposito,regresarRetiro,regresarConsulta,regresarparqueo,regresaringreso,regresosalida,regresocupos,regresarconversion,regresoeuropeso,regresoyenpeso,regresodolarpeso,regresolibrapeso como Logico;
	saldototal=99999999999999;
	cupos=500;
	
	
	RegresarMenuPrincipal = Verdadero;
	
	Mientras RegresarMenuPrincipal = Verdadero Hacer
		
		Limpiar Pantalla;
		
		Escribir "Menú principal";
		Escribir "";
		Escribir "1. Cuenta Bancaria";
		Escribir "2. Parqueadero";
		Escribir "3. conversion de divisas"; 
		Escribir "4. Salir";
		Leer respuestaMenuPrincipal;
		
		segun respuestaMenuPrincipal hacer
			
			"1" :
				RegresarMenucuenta = Verdadero;
				Mientras RegresarMenucuenta = Verdadero Hacer
				Limpiar Pantalla;
				
				Escribir "Opción elegida: Cuenta Bancaria";
				Escribir "";
				Escribir "1. Deposito";
				Escribir "2. Retiro";
				Escribir "3. Consulta";
				Escribir "4. Regresar al menu principal";
				Escribir "5. Salir";
				Leer respuestaOpcion;
				
				Segun respuestaOpcion Hacer
					
					"1": 
						regresarDeposito = Verdadero;
						mientras regresarDeposito = Verdadero hacer
						Limpiar Pantalla;
						Escribir "cuanto es el monto a depositar";
						leer deposito;
						Limpiar Pantalla;
						saldototal=saldototal+deposito;
						escribir"El deposito fue realizado con exito"; 
						Esperar 2 segundos;
						Limpiar Pantalla;
						Escribir "";
						Escribir "";
						Escribir "1. Desea hacer otro Deposito";
						Escribir "2. Ir Menú cuenta bancaria";
						Escribir "3. Ir Menu principal";
						Escribir "4. Salir";
						Leer respuestaMenuOpcion;
						
						segun respuestaMenuOpcion hacer
							    "1":
								
									regresarDeposito = Verdadero;
								"2":	
									regresarDeposito = falso;
									RegresarMenucuenta = Verdadero;
									
								"3":
									regresarDeposito = falso;
									RegresarMenucuenta = falso;
									RegresarMenuPrincipal=verdadero;
									
								"4":
									regresarDeposito = falso;
									RegresarMenucuenta = falso;
									RegresarMenuPrincipal=falso;
									
								De Otro Modo:
									escribir"opcion invalida";
									regresarDeposito = falso;
									RegresarMenucuenta = falso;
									RegresarMenuPrincipal=falso;
								    esperar 4 segundos;
						FinSegun
						
						
						
					FinMientras
					
				"2":
					
					regresarRetiro = Verdadero;
					mientras regresarRetiro= Verdadero hacer
						Limpiar Pantalla;
						Escribir "cuanto es el monto a retirar";
						leer retiro ;
						Limpiar Pantalla;
						si(retiro<saldototal) entonces
							saldototal=saldototal-retiro;
						SiNo
							escribir" su saldo a retirar supera al que tiene en la cuenta";
						FinSi
						
						escribir"El retiro fue realizado con exito"; 
						Esperar 2 segundos;
						Limpiar Pantalla;
						Escribir "";
						Escribir "";
						Escribir "1. Desea hacer otro retiro";
						Escribir "2. Ir Menú cuenta bancaria";
						Escribir "3. Ir Menu principal";
						Escribir "4. Salir";
						Leer respuestaMenuOpcionretiro;
						
						segun respuestaMenuOpcionretiro hacer
							"1":
								
								regresarRetiro = Verdadero;
							"2":	
								regresarRetiro = falso;
								RegresarMenucuenta = Verdadero;
								
							"3":
								regresarRetiro = falso;
								RegresarMenucuenta = falso;
								RegresarMenuPrincipal=verdadero;
								
							"4":
								regresarRetiro = falso;
								RegresarMenucuenta = falso;
								RegresarMenuPrincipal=falso;
								
							De Otro Modo:
								escribir"opcion invalida";
								regresarRetiro = falso;
								RegresarMenucuenta = falso;
								RegresarMenuPrincipal=falso;
								esperar 4 segundos;
						FinSegun
						
						
						
					FinMientras
					
				"3":
					regresarConsulta = Verdadero;
					mientras regresarConsulta= Verdadero hacer
						Limpiar Pantalla;
					
						
						
						escribir"su saldo en cuenta es: ",saldototal; 
						esperar 4 segundos;
						Limpiar Pantalla;
						
						
						Escribir "";
						Escribir "1. Ir Menú cuenta bancaria";
						Escribir "2. Ir Menu principal";
						Escribir "3. Salir";
						Leer respuestaMenuOpcionconsulta;
						
						segun respuestaMenuOpcionconsulta hacer
							
							"1":
                                regresarConsulta= falso;
								RegresarMenucuenta = Verdadero;
								
							"2":
								regresarConsulta = falso;
								RegresarMenucuenta = falso;
								RegresarMenuPrincipal=verdadero;
								
							"3":
								regresarConsulta = falso;
								RegresarMenucuenta = falso;
								RegresarMenuPrincipal=falso;
								
							De Otro Modo:
								escribir"opcion invalida";
								regresarConsulta = falso;
								RegresarMenucuenta = falso;
								RegresarMenuPrincipal=falso;
								esperar 4 segundos;
						FinSegun
						
						
						
						
					FinMientras
				"4":
					RegresarMenucuenta = falso;
					RegresarMenuPrincipal=falso;
					
					
				De Otro Modo:
					escribir"opcion invalida";
					RegresarMenucuenta = falso;
					RegresarMenuPrincipal=falso;
					esperar 4 segundos;
				finsegun
			finmientras
			
			
			"2" :
				regresarparqueo = Verdadero;
				
				Mientras regresarparqueo = Verdadero Hacer
					
					Limpiar Pantalla;
					
					Escribir "MENU PARQUEDERO";
					Escribir "";
					Escribir "1. Ingreso";
					Escribir "2. Salida";
					Escribir "3. Cupos libres"; 
					Escribir "4. Salir";
					Leer respuestaparqueo;
					
					segun respuestaparqueo hacer
						
						"1":
							regresaringreso=verdadero;
							Mientras regresaringreso=verdadero hacer
								limpiar pantalla;
								si(cupos>0)entonces
									cupos=cupos-1;
								SiNo
									Escribir "No hay cupos";
								finsi
								
								Escribir " Su vehiculo se ingreso";
								Esperar 2 segundos;
								limpiar Pantalla;
								Escribir "";
								Escribir "";
								Escribir "1. Desea hacer otro ingreso";
								Escribir "2. Ir Menú parqueadero";
								Escribir "3. Ir Menu principal";
								Escribir "4. Salir";
								Leer respuestaingreso;
								
								segun respuestaingreso hacer
									"1":
										
										regresaringreso = Verdadero;
									"2":	
										regresaringreso = falso;
										regresarparqueo = Verdadero;
										
									"3":
										regresaringreso = falso;
										regresarparqueo = falso;
										RegresarMenuPrincipal=verdadero;
										
									"4":
										regresaringreso = falso;
										regresarparqueo = falso;
										RegresarMenuPrincipal=falso;
										
									De Otro Modo:
										escribir"opcion invalida";
										regresaringreso = falso;
										regresarparqueo = falso;
										RegresarMenuPrincipal=falso;
										esperar 4 segundos;
								FinSegun
							FinMientras
							
						"2":
							regresosalida=verdadero;
							Mientras regresosalida=verdadero hacer
								limpiar pantalla;
								si(cupos<=499)entonces
									cupos=cupos+1;
									
								SiNo
									Escribir "No hay vehiculos a retirar";
								FinSi
								escribir " ser etiro su vehiculo";
								esperar 4 segundos;
								limpiar pantalla;
								
								Escribir "";
								Escribir "";
								Escribir "1. Desea hacer otra salida";
								Escribir "2. Ir Menú parqueadero";
								Escribir "3. Ir Menu principal";
								Escribir "4. Salir";
								Leer respuestasalida;
								
								segun respuestasalida hacer
									"1":
										
										regresosalida = Verdadero;
									"2":	
										regresosalida = falso;
										regresarparqueo = Verdadero;
										
									"3":
										regresosalida = falso;
										regresarparqueo = falso;
										RegresarMenuPrincipal=verdadero;
										
									"4":
										regresosalida = falso;
										regresarparqueo = falso;
										RegresarMenuPrincipal=falso;
										
									De Otro Modo:
										escribir"opcion invalida";
										regresosalida = falso;
										regresarparqueo = falso;
										RegresarMenuPrincipal=falso;
										esperar 4 segundos;
								FinSegun
							FinMientras
							
						"3": 
							regresocupos=verdadero;
							Mientras regresocupos=verdadero hacer
								limpiar pantalla;
								escribir"Quedan  ",cupos," cupos disponibles"; 
								esperar 4 segundos;
								Limpiar Pantalla;
								
								
								Escribir "";
								Escribir "1. Ir MENU PARQUEADERO";
								Escribir "2. Ir Menu principal";
								Escribir "3. Salir";
								Leer respuestaMenuOpcionconsulta;
								
								segun respuestaMenuOpcionconsulta hacer
									
									"1":
										regresocupos= falso;
										regresarparqueo = Verdadero;
										
									"2":
										regresocupos = falso;
										regresarparqueo = falso;
										RegresarMenuPrincipal=verdadero;
										
									"3":
										regresocupos = falso;
										regresarparqueo = falso;
										RegresarMenuPrincipal=falso;
										
									De Otro Modo:
										escribir"opcion invalida";
										regresocupos = falso;
										regresarparqueo = falso;
										RegresarMenuPrincipal=falso;
										esperar 4 segundos;
								FinSegun
								
							FinMientras
						"4":
							regresarparqueo= falso;
							RegresarMenuPrincipal=falso;
							
							
						De Otro Modo:
							escribir"opcion invalida";
							regresarparqueo = falso;
							RegresarMenuPrincipal=falso;
							esperar 4 segundos;
					FinSegun
				FinMientras
				
			"3" :
				regresarconversion=verdadero;
				mientras regresarconversion=verdadero hacer
					
				
					limpiar pantalla;
					Escribir "";
					Escribir "MENU CONVERSION";
					Escribir "1. Conversion de Dolares a Pesos";
					Escribir "2. Conversion de Euros a Pesos";
					Escribir "3. Conversion de Yen a Pesos ";
					Escribir "4. Conversion de Libra Esterlina a Pesos";
					Escribir "5. Salir";
					Leer respuestaconversion;
					limpiar pantalla;
					
					
					segun  respuestaconversion hacer
						
						"1": 
							regresodolarpeso=verdadero;
							mientras regresodolarpeso=verdadero hacer
								Escribir "digite la cantidad de dolares a converitir a pesos";
								leer dolar;
								Limpiar Pantalla;
								conversion=dolar*3998.50;
								
								Escribir dolar," dolar equivalen a ",conversion," Pesos";
								conversion=0;
								
								esperar 3 segundos;
								limpiar pantalla;
								
								Escribir "";
								Escribir "";
								Escribir "1. Desea hacer otra Conversion de Dolar a Peso";
								Escribir "2. Ir Menú Conversion";
								Escribir "3. Ir Menu principal";
								Escribir "4. Salir";
								Leer respuestadolarpeso;
								
								Segun respuestadolarpeso hacer
									"1":
										regresodolarpeso=verdadero;
										
									"2":
										regresodolarpeso = falso;
										regresarconversion=verdadero;
										
										
									"3":
										regresodolarpeso = falso;
										regresarconversion=falso;
										RegresarMenuPrincipal=Verdadero;
									"4":	
										regresodolarpeso = falso;
										regresarconversion=falso;
										RegresarMenuPrincipal=falso;
									De Otro Modo:
										escribir"opcion invalida";
										regresodolarpeso = falso;
										regresarconversion=falso;
										RegresarMenuPrincipal=falso;
										esperar 4 segundos;
								FinSegun
								
							FinMientras
							
						"2":
							regresoeuropeso=verdadero;
							mientras regresoeuropeso=verdadero hacer
								Escribir "digite la cantidad de Euros a converitir a pesos";
								leer euro;
								Limpiar Pantalla;
								conversion=euro*4403.29;
								Escribir euro," Euros equivalen a ",conversion," Pesos";
								conversion=0;
								
								esperar 3 segundos;
								limpiar pantalla;
								
								Escribir "";
								Escribir "";
								Escribir "1. Desea hacer otra Conversion de Euro a Peso";
								Escribir "2. Ir Menú Conversion";
								Escribir "3. Ir Menu principal";
								Escribir "4. Salir";
								Leer respuestaeuropeso;
								
								Segun respuestaeuropeso hacer
									"1":
										regresoeuropeso=verdadero;
										
									"2":
										regresoeuropeso = falso;
										regresarconversion=verdadero;
										
										
									"3":
										regresoeuropeso = falso;
										regresarconversion=falso;
										RegresarMenuPrincipal=Verdadero;
									"4":	
										regresoeuropeso = falso;
										regresarconversion=falso;
										RegresarMenuPrincipal=falso;
									De Otro Modo:
										escribir"opcion invalida";
										regresoeuropeso = falso;
										regresarconversion=falso;
										RegresarMenuPrincipal=falso;
										esperar 4 segundos;
								FinSegun
								
							FinMientras
							
						"3":
							regresoyenpeso=verdadero;
							mientras regresoyenpeso=verdadero hacer
								Escribir "digite la cantidad de yen a converitir a pesos";
								leer yen;
								Limpiar Pantalla;
								conversion=yen*37.25;
								Escribir yen," yen equivalen a ",conversion," Pesos";
								conversion=0;
								
								esperar 4 segundos;
								limpiar pantalla;
								
								Escribir "";
								Escribir "";
								Escribir "1. Desea hacer otra Conversion de yen a Peso";
								Escribir "2. Ir Menú Conversion";
								Escribir "3. Ir Menu principal";
								Escribir "4. Salir";
								Leer respuestayenpeso;
								
								Segun respuestayenpeso hacer
									"1":
										regresoyenpeso=verdadero;
										
									"2":
										regresoyenpeso = falso;
										regresarconversion=verdadero;
										
										
									"3":
										regresoyenpeso = falso;
										regresarconversion=falso;
										RegresarMenuPrincipal=Verdadero;
									"4":	
										regresoyenpeso = falso;
										regresarconversion=falso;
										RegresarMenuPrincipal=falso;
									De Otro Modo:
										escribir"opcion invalida";
										regresoyenpeso = falso;
										regresarconversion=falso;
										RegresarMenuPrincipal=falso;
										esperar 4 segundos;
								FinSegun
								
							FinMientras
							
						"4":
							regresolibrapeso=verdadero;
							mientras regresolibrapeso=verdadero hacer
								Escribir "digite la cantidad de libras esterlinas  a converitir a pesos";
								leer libraesterlina;
								Limpiar Pantalla;
								conversion=libraesterlina*4841.74;
								Escribir libraesterlina," libras esterlinas equivalen a ",conversion," Pesos";
								conversion=0;
								
								esperar 4 segundos;
								limpiar pantalla;
								
								Escribir "";
								Escribir "";
								Escribir "1. Desea hacer otra Conversion de libra esterlina a Peso";
								Escribir "2. Ir Menú Conversion";
								Escribir "3. Ir Menu principal";
								Escribir "4. Salir";
								Leer respuestalibrapeso;
								
								Segun respuestalibrapeso hacer
									"1":
										regresolibrapeso=verdadero;
										
									"2":
										regresolibrapeso = falso;
										regresarconversion=verdadero;
										
										
									"3":
										regresolibrapeso = falso;
										regresarconversion=falso;
										RegresarMenuPrincipal=Verdadero;
									"4":	
										regresolibrapeso= falso;
										regresarconversion=falso;
										RegresarMenuPrincipal=falso;
									De Otro Modo:
										escribir"opcion invalida";
										regresolibrapeso = falso;
										regresarconversion=falso;
										RegresarMenuPrincipal=falso;
										esperar 4 segundos;
								FinSegun
								
							FinMientras
							
						   "5":
						
							regresarconversion= falso;
							RegresarMenuPrincipal=falso;
							
							
						De Otro Modo:
							escribir"opcion invalida";
							regresarconversion = falso;
							RegresarMenuPrincipal=falso;
							esperar 4 segundos;
					 FinSegun
							
				
					
				FinMientras
			
				
			"4" :
				
				RegresarMenuPrincipal = Falso;
				esperar 4 segundos;
			De Otro Modo:
				Limpiar Pantalla;
				escribir"opcion invalida";
				RegresarMenuPrincipal = Falso;
				esperar 4 segundos;
		FinSegun
		
		
		
		
		
		
	FinMientras
	
	
	
FinProceso
