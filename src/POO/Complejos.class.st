"
'Ejercicio de ejemplo'
prueba de Clase Complejos

"
Class {
	#name : #Complejos,
	#superclass : #Object,
	#instVars : [
		'real',
		'imaginario'
	],
	#category : #POO
}

{ #category : #constructor }
Complejos class >> real: partereal imaginario: parteimag [
|numero|
numero:= self new.
numero inicializarReal: partereal imaginario:parteimag. 
^numero.
]

{ #category : #'set and get' }
Complejos >> getImaginario [
^imaginario.
]

{ #category : #'set and get' }
Complejos >> getReal [ 
^real.
]

{ #category : #'set and get' }
Complejos >> inicializarReal: partReal imaginario: partImaginaria [

real:=partReal.
imaginario:=partImaginaria.
]

{ #category : #'propias del tipo' }
Complejos >> modulo [

|nReal nImag modulo|

nReal:=(self getReal)squared.
nImag:=(self getImaginario)squared.
modulo:=(nReal + nImag) sqrt.
^modulo.
 
]

{ #category : #'set and get' }
Complejos >> setImaginario: numImaginario [.
imaginario:= numImaginario.
]

{ #category : #'set and get' }
Complejos >> setReal: numReal [.
real:=numReal.

]

{ #category : #'propias del tipo' }
Complejos >> unidad [
|mod unComplejo unidadReal unidadImaginario |
mod := self modulo.
unidadReal := self getReal / mod.
unidadImaginario := self getImaginario / mod.
unComplejo := self inicializarReal: unidadReal imaginario: unidadImaginario.
^unComplejo
]
