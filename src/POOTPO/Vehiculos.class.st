Class {
	#name : #Vehiculos,
	#superclass : #Object,
	#instVars : [
		'patente',
		'kmActual',
		'kmService',
		'marca',
		'modelo'
	],
	#category : #POOTPO
}

{ #category : #constructor }
Vehiculos class >> vehiculosPatente: aPatente kmActual: aKmActual kmService: aKmService marca: aMarca modelo: aModelo [
	| movil |
	movil := self new.
	movil
		inicializarVehiculosPatente: aPatente
		kmActual: aKmActual
		kmService: aKmService
		marca: aMarca
		modelo: aModelo.
	^ movil
]

{ #category : #inicializador }
Vehiculos >> inicializarVehiculosPatente: aPatente kmActual: aKmActual kmService: aKmService marca: aMarca modelo: aModelo [.
patente :=aPatente.
kmActual :=aKmActual.
kmService :=aKmService .
marca:=aMarca.
modelo:=aModelo. 
]

{ #category : #'de aplicacion' }
Vehiculos >> obtenerDatos [
	| datos |
	datos := patente , ': ' , kmActual asString.
	^ datos
]
