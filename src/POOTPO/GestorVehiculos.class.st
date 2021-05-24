Class {
	#name : #GestorVehiculos,
	#superclass : #Object,
	#instVars : [
		'colVehiculos'
	],
	#category : #POOTPO
}

{ #category : #constructor }
GestorVehiculos class >> gestorVehiculos [
	| vehiculo |
	vehiculo  := self new.
	vehiculo  inicializarGestorVehiculos.
	^ vehiculo
]

{ #category : #'de aplicacion' }
GestorVehiculos >> agregarVehiculo: aVehiculo [
colVehiculos add: aVehiculo.
]

{ #category : #'de aplicacion' }
GestorVehiculos >> generarListaKilometraje [
	| listaKilometraje |
	listaKilometraje := colVehiculos
		collect: [ :cadaVehiculo | cadaVehiculo obtenerDatos ].
	^ listaKilometraje
]

{ #category : #inicializador }
GestorVehiculos >> inicializarGestorVehiculos [
	colVehiculos := OrderedCollection new
]
