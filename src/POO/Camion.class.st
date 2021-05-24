"
Ejercicio 2 del TP2
"
Class {
	#name : #Camion,
	#superclass : #Object,
	#instVars : [
		'matricula',
		'tipo',
		'kmActual',
		'kmService',
		'tara'
	],
	#category : #POO
}

{ #category : #visualizadores }
Camion >> getKmActual [
^kmActual .
]

{ #category : #visualizadores }
Camion >> getKmService [
^kmService .
]

{ #category : #visualizadores }
Camion >> getMatricula [
^matricula.
]

{ #category : #visualizadores }
Camion >> getTara [
^tara.
]

{ #category : #visualizadores }
Camion >> getTipo [
^tipo.
]

{ #category : #modificadores }
Camion >> setKmActual: aKA [
kmActual :=aKA.
]

{ #category : #modificadores }
Camion >> setKmService: kmS [
kmService :=kmS.
]

{ #category : #modificadores }
Camion >> setMatricula: aMatricula [ 
matricula:=aMatricula .
]

{ #category : #modificadores }
Camion >> setTara: aTara [
tara:=aTara.
]

{ #category : #modificadores }
Camion >> setTipo: aTipo [
tipo:=aTipo.
]

{ #category : #'de aplicacion' }
Camion >> verificarService [
^(kmActual >=kmService).
]

{ #category : #'de aplicacion' }
Camion >> verificarTara:n [
|taraLimite|
taraLimite:=1000.
^(tara=>taraLimite ).
]
