Class {
	#name : #Electrodomesticos,
	#superclass : #Object,
	#instVars : [
		'precioBase',
		'color',
		'consEnerg',
		'peso',
		'descripción',
		'marca'
	],
	#category : #POOElectrodomesticos
}

{ #category : #constructor }
Electrodomesticos class >> ElectrodomesticoPrecio: monto peso: unPeso letra: unaLetra [
|electro|
electro:=self new.
electro crearElectrodomesticoPrecio: monto peso: unPeso letra: unaLetra.
^electro.
]

{ #category : #inicializador }
Electrodomesticos >> crearElectrodomesticoPrecio: monto peso: unPeso letra: unaLetra [
precioBase:=monto.
peso:=unPeso.
consEnerg:=unaLetra.
color:='Blanco'.
descripción :='electrodomestico'.
marca:='nacional'.
]
