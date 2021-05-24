Class {
	#name : #Alquiler,
	#superclass : #Object,
	#instVars : [
		'fechaInicio',
		'fechaFin',
		'posAmarre',
		'cliente',
		'barco',
		'montoAlquiler'
	],
	#category : #POOPuerto
}

{ #category : #constructor }
Alquiler class >> fechaInicio: aFechaIn fechaFin: aFechaFin posAmarre:pos cliente:aCliente barco:aBarco [ 
|alquiler|
alquiler:=self new.
alquiler inicializarFechaInicio: aFechaIn fechaFin: aFechaFin posAmarre:pos cliente:aCliente barco:aBarco.
^alquiler.
]

{ #category : #constructor }
Alquiler class >> fechaInicio: aFechaIn fechaFin: aFechaFin posAmarre: pos cliente: aCliente barco: aBarco montoAlquiler: aAlquiler [
	| alquiler |
	alquiler := self new.
	alquiler
		inicializarFechaInicio: aFechaIn
		fechaFin: aFechaFin
		posAmarre: pos
		cliente: aCliente
		barco: aBarco
		montoAlquiler: aAlquiler.
	^ alquiler
]

{ #category : #'de aplicacion' }
Alquiler >> getMontoAlquiler [
^montoAlquiler .
]

{ #category : #'de aplicacion' }
Alquiler >> inicializarFechaInicio: aFechaIn fechaFin: aFechaFin posAmarre: pos cliente: aCliente barco: aBarco montoAlquiler: aAlquiler [.
	fechaInicio := aFechaIn.
	fechaFin := aFechaFin.
	posAmarre := pos.
	cliente := aCliente.
	barco := aBarco.
	montoAlquiler := aAlquiler.
]

{ #category : #'de aplicacion' }
Alquiler >> obtenerDatos [
	^ '(' , posAmarre asString , ';' , montoAlquiler asString  , ')'
]
