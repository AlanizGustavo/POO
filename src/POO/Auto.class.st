"
Ejercicio 1a del TP2

|auto1 auto2|
auto1 := Auto modelo: 'Ford Fiesta ' cantKmRecorridos: 100000 patente:'ABC-123'.

auto2 := Auto modelo: 'Ford Fiesta ' cantKmRecorridos: 100000 patente:'ABC-123'.

Transcript show: auto1 getModelo;cr .
Transcript show: auto1 getCantKmRecorridos;cr.

auto1 setModelo: 'Fiat Uno'.
auto1 setCantidadKmRecorridos: 999.

Transcript show: auto1 getModelo;cr .
Transcript show: auto1 getCantKmRecorridos;cr.

Transcript show: auto2 getModelo;cr .
Transcript show: auto2 getCantKmRecorridos;cr.

(auto1 comparePatente: auto2)ifTrue: [ Transcript show: 'LAS PATENTES SON IGUALES' ] ifFalse: [ Transcript show:'NO SON LA MISMA PATENTE' ].
"
Class {
	#name : #Auto,
	#superclass : #Object,
	#instVars : [
		'modelo',
		'cantKmRecorridos',
		'patente'
	],
	#category : #POO
}

{ #category : #constructor }
Auto class >> modelo: partereal cantKmRecorridos: parteimag patente: nPatente [
|coche|
coche:= self new.
coche modelo: partereal andarKm:parteimag patente:nPatente. 
^coche.
]

{ #category : #'de aplicacion' }
Auto >> comparePatente: aAuto [
^((self getPatente) = (aAuto getPatente )).
]

{ #category : #visualizadores }
Auto >> getCantKmRecorridos [
^cantKmRecorridos .
]

{ #category : #visualizadores }
Auto >> getModelo [
^modelo.
]

{ #category : #visualizadores }
Auto >> getPatente [
^patente.
]

{ #category : #'de aplicacion' }
Auto >> modelo: aModelo andarKm:n patente: aPatente [

modelo:= aModelo.
cantKmRecorridos:= n.
patente:=aPatente.
]

{ #category : #modificadores }
Auto >> setCantidadKmRecorridos: cantKm [.
cantKmRecorridos :=cantKm.
]

{ #category : #modificadores }
Auto >> setModelo: aModelo [.
modelo:=aModelo .
]

{ #category : #modificadores }
Auto >> setPatente: aPatente [
patente:=aPatente .
]
