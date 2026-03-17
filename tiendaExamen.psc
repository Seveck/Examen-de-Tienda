Funcion almacen <- stock ( productos )
	almacen<-100
Fin Funcion

Funcion reabastecer ( cantidadEntrada )
	si cantidadEntrada>200 Entonces
		Escribir "Error, la cantidad maxima es de 200 productos"
		
		almacen<-almacen-cantidadEntrada
	SiNo
		Escribir "Reabastecimiento exitoso"
		almacen<-almacen+cantidadEntrada
	FinSi
Fin Funcion

Funcion registroVenta <- venta ( cantidadVenta )
	si cantidadVenta>almacen y cantidadVenta<=almacen entonces
		Escribir "Venta exitosa"
		almacen<-almacen-cantidadVenta
	SiNo
		Escribir "No hay suficientes productos"
		
		almacen<-almacen+cantidadVenta
	FinSi
	
Fin Funcion


Algoritmo tienda
	
	Definir vender,entrada,menu como entero
	Definir slr como cadena
	
	Mientras slr<>"salir" Hacer
		
		Escribir "Digite que quiere ver"
		Escribir "1. Ver stock"
		Escribir "2. Registrar venta"
		Escribir "3. Reabastecer"
		leer menu
		
		Segun menu Hacer
			1:
				Escribir "El stock de la tienda es de: " stock(productos)
			2:
				Escribir "Cuantos productos va a vender?"
				leer vender
				
				escribir venta(vender)
				
			3:
			 Escribir  "Cuantos productos entraran?" 
			 leer entrada
			 reabastecer(entrada)
			 
		 De Otro Modo:
			 Escribir "Error, numero invalido"
	 FinSegun
	 
	 Escribir "Escriba salir si desea salir del menu"
	 leer slr
	 
	Fin Mientras
	
FinAlgoritmo
