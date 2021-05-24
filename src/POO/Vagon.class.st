"
Ejercicio 4 TP2

|vagon2|

vagon2 := Vagon anioInstalacion: 1988  largo: 100 ancho: 10 cantPasajeros:50.

Transcript show: vagon2 getAnioInstalacion;cr . 
Transcript show: vagon2 getLargo ;cr. 
Transcript show: vagon2 getAncho ;cr.
Transcript show: vagon2 getPeso;cr.
Transcript show: vagon2 getCantPasajeros ;cr.   
Transcript show: vagon2 verificarAntiguedad .
"
Class {
	#name : #Vagon,
	#superclass : #Object,
	#instVars : [
		'anioInstalacion',
		'largo',
		'ancho',
		'peso',
		'cantPasajeros'
	],
	#category : #POO
}

{ #category : #constructor }
Vagon class >> anioInstalacion: aAnio largo:aLargo ancho:aAncho cantPasajeros:aCant [
|vagon1|
vagon1:=self new.
vagon1 inicializarAnioInstalacion:aAnio largo:aLargo ancho:aAncho cantPasajeros:aCant .
^vagon1.


]

{ #category : #'de aplicacion' }
Vagon >> actualizarPeso:k [ 
|valorPeso|
valorPeso := cantPasajeros *k.
peso:=valorPeso.

]

{ #category : #visualizadores }
Vagon >> getAncho [
^ancho.
]

{ #category : #visualizadores }
Vagon >> getAnioInstalacion [
^anioInstalacion .
]

{ #category : #visualizadores }
Vagon >> getCantPasajeros [
^cantPasajeros .
]

{ #category : #visualizadores }
Vagon >> getLargo [
^largo .
]

{ #category : #visualizadores }
Vagon >> getPeso [
^peso.
]

{ #category : #'de aplicacion' }
Vagon >> inicializarAnioInstalacion: aAnio largo:aLargo ancho:aAncho cantPasajeros:aCant [

anioInstalacion :=aAnio .
largo :=aLargo .
ancho :=aAncho .

peso:=(aCant*80).
cantPasajeros :=aCant .

]

{ #category : #modificadores }
Vagon >> setAncho:aAncho [
ancho:=aAncho .
]

{ #category : #modificadores }
Vagon >> setAnioInstalacion: aAnio [
anioInstalacion :=aAnio .
]

{ #category : #modificadores }
Vagon >> setCantPasajeros:aCant [
cantPasajeros :=aCant.
]

{ #category : #modificadores }
Vagon >> setLargo:aLargo [
largo :=aLargo.
]

{ #category : #modificadores }
Vagon >> setPeso: aPeso [
peso:=aPeso.
]

{ #category : #'de aplicacion' }
Vagon >> verificarAntiguedad [
|anioActual|
anioActual := Date today year .

^(anioActual  - anioInstalacion ).

]
