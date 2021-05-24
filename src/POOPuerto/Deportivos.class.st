"
|alq1 persona puert nave nave2 nave3 dia1 dia2 lis|
puert:= Puerto nombre: 'Barcelona'.

persona :=Cliente nombreApellido: 'Alaniz Gustavo' dni: 34087051 telefono: 154244529 correoElectronico: 'alaniz.gustavo.a@gmail.com'.

Barco valorBase: 0.

nave:= Barco matricula: 'ESO245' eslora:100  fabricacion: 1988.

nave2:= Deportivos DeportivosMatricula:'ESO245'  eslora: 10 fabricacion: 2000 cV: 10.

nave3:=Yate yateMatricula:'ESO245'  eslora: 10 fabricacion: 2000 cV: 20 cantCamarotes: 10.

Transcript show: (puert registrarAlquilerUnBarco: nave cliente: persona desde:(Date year:2021  month: 01 day: 01  ) hasta: (Date year:2021  month: 01 day: 03 ) );cr.

puert registrarAlquilerUnBarco: nave2 cliente: persona desde:(Date year:2021  month: 01 day: 01  ) hasta: (Date year:2021  month: 01 day: 03 ).

puert registrarAlquilerUnBarco: nave3 cliente: persona desde:(Date year:2021  month: 01 day: 01  ) hasta: (Date year:2021  month: 01 day: 03 ).



lis:= puert valorAlquileres.
lis do:[:i| Transcript show: i]
"
Class {
	#name : #Deportivos,
	#superclass : #Barco,
	#instVars : [
		'cV'
	],
	#category : #POOPuerto
}

{ #category : #constructor }
Deportivos class >> DeportivosMatricula: aMatricula eslora: dist fabricacion: aAnio cV: aCV [
|nave|
nave:=self new.
nave inicializarDeportivosMatricula: aMatricula eslora: dist fabricacion: aAnio cV: aCV.
^nave.
]

{ #category : #inicializador }
Deportivos >> inicializarDeportivosMatricula: aMatricula eslora: dist fabricacion: aAnio cV: aCV [
	self inicializarMatricula: aMatricula eslora: dist fabricacion: aAnio.
	cV := aCV
]

{ #category : #'de aplicacion' }
Deportivos >> obtenerModulo [
	| mod |
	mod := super obtenerModulo.
	^ mod + cV
]
