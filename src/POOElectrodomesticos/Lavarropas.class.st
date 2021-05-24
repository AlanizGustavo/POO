Class {
	#name : #Lavarropas,
	#superclass : #Electrodomesticos,
	#instVars : [
		'capacidadCarga',
		'tipoCarga',
		'sistemaLavado'
	],
	#category : #POOElectrodomesticos
}

{ #category : #constructor }
Lavarropas class >> LavarropaPrecioBase: monto consEnerg: letra peso: unPeso [
|lava|
lava:=self new.
lava crearLavarropaPrecioBase: monto consEnerg: letra peso: unPeso.
^lava.
]

{ #category : #inicializador }
Lavarropas >> crearLavarropaPrecioBase: monto consEnerg: letra peso: unPeso [
self crearElectrodomesticoPrecio: monto peso: unPeso letra: letra.
capacidadCarga:= 5.
tipoCarga:='Superior'.
sistemaLavado:='Europeo'. 
]
