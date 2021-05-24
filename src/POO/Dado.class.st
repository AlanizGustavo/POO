"
ejercicio 9 TP2

|valor valor2 valor3|
valor:= Dado tirarDados.
 
valor2:=4.

Transcript show: (valor tirarValor: valor2);cr.
"
Class {
	#name : #Dado,
	#superclass : #Object,
	#instVars : [
		'valor'
	],
	#category : #POO
}

{ #category : #'as yet unclassified' }
Dado class >> tirarDados [
|num|
num :=self new.
num tirarDado .
^num.
]

{ #category : #'de aplicacion' }
Dado >> tirarDado [
^6 atRandom.
 
]

{ #category : #'de aplicacion' }
Dado >> tirarValor: unValor [
|exito contador|
contador:=0.
exito:=false.
[exito=false & (contador<3)]
whileTrue: [ exito:=unValor =self tirarDado.contador:=contador+1 ].

^exito .
]
