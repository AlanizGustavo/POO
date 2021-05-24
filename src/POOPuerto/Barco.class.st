Class {
	#name : #Barco,
	#superclass : #Object,
	#instVars : [
		'matricula',
		'eslora',
		'fabricacion'
	],
	#classVars : [
		'valorBase'
	],
	#category : #POOPuerto
}

{ #category : #constructor }
Barco class >> matricula: aMatricula eslora: dist fabricacion: aAnio [ 

|nave|
nave:= self new.
nave inicializarMatricula: aMatricula eslora: dist fabricacion: aAnio .
^nave.

]

{ #category : #'as yet unclassified' }
Barco class >> valorBase:valor [.
valorBase :=valor.
]

{ #category : #'de aplicacion' }
Barco >> calcularValorAlquiler: cantDias [
	| alquiler |
	alquiler := cantDias * self obtenerModulo .
	^ alquiler
]

{ #category : #visualizadores }
Barco >> getMatricula [
^matricula.
]

{ #category : #'de aplicacion' }
Barco >> inicializarMatricula: aMatricula eslora: dist fabricacion: aAnio [
	matricula := aMatricula.
	eslora := dist.
	fabricacion := aAnio.
	
]

{ #category : #'de aplicacion' }
Barco >> obtenerModulo [
	| mod |
	mod := eslora  * 10 + valorBase.
	^ mod
]
