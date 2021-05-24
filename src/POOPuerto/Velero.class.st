Class {
	#name : #Velero,
	#superclass : #Barco,
	#instVars : [
		'cantMastiles'
	],
	#category : #POOPuerto
}

{ #category : #constructor }
Velero class >> veleroMatricula: aMatricula eslora: dist fabricacion: aAnio cantMastiles: num [
|nave|
nave:=self new.
nave inicializarVeleroMatricula: aMatricula eslora: dist fabricacion: aAnio cantMastiles: num.
^nave.
]

{ #category : #inicializador }
Velero >> inicializarVeleroMatricula: aMatricula eslora: dist fabricacion: aAnio cantMastiles: num [
self inicializarMatricula: aMatricula  eslora: dist  fabricacion: aAnio.
cantMastiles :=num.
]

{ #category : #'de aplicacion' }
Velero >> obtenerModulo [
	| mod |
	mod := super obtenerModulo.
	^ mod + cantMastiles 
]
