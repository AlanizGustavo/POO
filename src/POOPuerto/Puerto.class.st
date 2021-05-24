"
|alq1 persona puert nave dia1 dia2|
puert:= Puerto nombre: 'Barcelona'.

persona :=Cliente nombreApellido: 'Alaniz Gustavo' dni: 34087051 telefono: 154244529 correoElectronico: 'alaniz.gustavo.a@gmail.com'.
Barco valorBase: 0.
nave:= Barco matricula: 'ESO245' eslora:100  fabricacion: 1988.


Transcript show: (puert registrarAlquilerUnBarco: nave cliente: persona desde:(Date year:2021  month: 01 day: 01  ) hasta: (Date year:2021  month: 01 day: 03 ) );cr.

Transcript show: nave getModulo .
"
Class {
	#name : #Puerto,
	#superclass : #Object,
	#instVars : [
		'colAlquileres',
		'nombre',
		'colAmarres'
	],
	#category : #POOPuerto
}

{ #category : #constructor }
Puerto class >> nombre: aNombre [ 
|puerto|
puerto:=self new.
puerto inicializarPuertoNombre:aNombre .
^puerto.
]

{ #category : #'de aplicacion' }
Puerto >> inicializarPuertoNombre:aNombre [.
colAlquileres:=OrderedCollection new .
nombre:=aNombre.
colAmarres :=OrderedCollection new.
]

{ #category : #'de aplicacion' }
Puerto >> obtenerAmarreLibre [
|numero|
numero:=5.
^numero.
]

{ #category : #'de aplicacion' }
Puerto >> registrarAlquilerUnBarco: unBarco cliente: aCliente desde: fechaInicio hasta: fechaHasta [
	| cantDias unValorAlquiler unAmarre unAlquiler |
	cantDias := (fechaHasta - fechaInicio) days.
	unValorAlquiler := unBarco calcularValorAlquiler: cantDias.
	unAmarre := self obtenerAmarreLibre.
	unAlquiler := Alquiler
		fechaInicio: fechaInicio
		fechaFin: fechaHasta
		posAmarre: unAmarre
		cliente: aCliente
		barco: unBarco
		montoAlquiler: unValorAlquiler.
	colAlquileres add: unAlquiler.
	^ unAlquiler getMontoAlquiler
]

{ #category : #'de aplicacion' }
Puerto >> valorAlquileres [
|lista|
lista:=colAlquileres collect: [ :cadaAlquiler | cadaAlquiler obtenerDatos ].
^lista.
]
