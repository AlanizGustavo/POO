"
Punto 7 TP2
"
Class {
	#name : #Proyecto,
	#superclass : #Object,
	#instVars : [
		'temaProyecto',
		'votosFavor',
		'votosContra'
	],
	#category : #POO
}

{ #category : #constructor }
Proyecto class >> nuevoProyectoTema: aName [ 

| investigacion|
investigacion:=self new.
investigacion iniciaTema: aName .
^investigacion.
]

{ #category : #constructor }
Proyecto class >> nuevoProyectoTema: aName favor: fav contra: cont [ 

| investigacion|
investigacion:=self new.
investigacion inicializarNuevoProyectoTema: aName favor: fav contra: cont .
^investigacion.
]

{ #category : #'de aplicacion' }
Proyecto >> contra [
votosContra :=votosContra +1.
]

{ #category : #'de aplicacion' }
Proyecto >> contra: aNumber [ 
votosContra :=votosContra + aNumber .
]

{ #category : #'de aplicacion' }
Proyecto >> estado [
^[ 'TEMA: ', temaProyecto ;cr. 'VOTOS A FAVOR: ',votosFavor ;cr. 'VOTOS EN CONTRA :',votosContra ;cr. ].
]

{ #category : #'de aplicacion' }
Proyecto >> favor [
votosFavor :=votosFavor +1.
]

{ #category : #'de aplicacion' }
Proyecto >> favor: aNumber [ 
votosFavor:=votosFavor +aNumber .
]

{ #category : #'de aplicacion' }
Proyecto >> iniciaTema: aName [ 

temaProyecto :=aName.
votosFavor :=0.
votosContra :=0.
]

{ #category : #'de aplicacion' }
Proyecto >> iniciaTema: aName favor: fav contra: cont [ .

temaProyecto :=aName.
votosFavor :=fav.
votosContra :=cont.
]
