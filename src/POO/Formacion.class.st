"
ejercicio 5 TP2

PREGUNTAR POR DIFERENCIA ENTRE getPesoMax y arrastreUtil 
"
Class {
	#name : #Formacion,
	#superclass : #Object,
	#instVars : [
		'peso',
		'pesoMax',
		'velMax'
	],
	#category : #POO
}

{ #category : #'de aplicacion' }
Formacion >> arrastreUtil [
^pesoMax .
]

{ #category : #visualizadores }
Formacion >> getPeso [
^peso.
]

{ #category : #visualizadores }
Formacion >> getPesoMax [
^pesoMax .
]

{ #category : #visualizadores }
Formacion >> getVelMax [
^velMax .
]

{ #category : #modificadores }
Formacion >> setPeso: aPeso [
peso:=aPeso.
]

{ #category : #modificadores }
Formacion >> setPesoMax: aPesoMax [
pesoMax :=aPesoMax .
]

{ #category : #modificadores }
Formacion >> setVelMax: aVelMax [
velMax :=aVelMax .
]
