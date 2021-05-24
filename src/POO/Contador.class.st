"
Ejercicio 8 TP2
"
Class {
	#name : #Contador,
	#superclass : #Object,
	#instVars : [
		'valor'
	],
	#category : #POO
}

{ #category : #'as yet unclassified' }
Contador >> decrementar [
valor:=valor-1.
]

{ #category : #'as yet unclassified' }
Contador >> decrementar: cant [ 
valor:=valor-cant.
]

{ #category : #'as yet unclassified' }
Contador >> incrementar [
valor:=valor+1.
]

{ #category : #'as yet unclassified' }
Contador >> inicializar: unValor [

valor:=unValor .
]

{ #category : #'as yet unclassified' }
Contador >> mostrarValor [
^valor.
]
