Class {
	#name : #Autos,
	#superclass : #Vehiculos,
	#instVars : [
		'cantPuertas'
	],
	#category : #POOTPO
}

{ #category : #constructor }
Autos class >> AutoPatente: aPatente kmActual: aKmActual kmService: aKmService marca: aMarca modelo: aModelo cantPuertas: cant [
|coche|
coche := self new.
coche inicializarAutoPatente: aPatente kmActual: aKmActual kmService: aKmService marca: aMarca modelo: aModelo cantPuertas: cant.
^coche.
]

{ #category : #inicializador }
Autos >> inicializarAutoPatente: aPatente kmActual: aKmActual kmService: aKmService marca: aMarca modelo: aModelo cantPuertas: cant [
self inicializarVehiculosPatente: aPatente kmActual: aKmActual  kmService: aKmService  marca: aMarca  modelo: aModelo.
	
	cantPuertas := cant
]
