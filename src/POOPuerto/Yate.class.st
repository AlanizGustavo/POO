Class {
	#name : #Yate,
	#superclass : #Barco,
	#instVars : [
		'cV',
		'cantCamarotes'
	],
	#category : #POOPuerto
}

{ #category : #constructor }
Yate class >> yateMatricula: aMatricula eslora: dist fabricacion: aAnio cV: num cantCamarotes: num2 [
|nave|
nave:=self new.
nave inicializarYateMatricula: aMatricula eslora: dist fabricacion: aAnio cV: num cantCamarotes: num2.
^nave.
]

{ #category : #inicializador }
Yate >> inicializarYateMatricula: aMatricula eslora: dist fabricacion: aAnio cV: num cantCamarotes: num2 [
self inicializarMatricula: aMatricula  eslora: dist  fabricacion: aAnio.
cV:=num.
cantCamarotes:=num2.
]

{ #category : #'de aplicacion' }
Yate >> obtenerModulo [
	| mod |
	mod := super obtenerModulo.
	^ mod + cV + cantCamarotes 
]
