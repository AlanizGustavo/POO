"
Ejercicio 6 TP2

|humano1|
humano1 := Persona nombre: 'GUSTAVO'apellido:'ALANIZ' fechaNacimiento: (Date year: 2005 month: 02  day:28 ).

Transcript show: humano1 tieneLaEdadDE;cr .

humano1 esMayorEdad: (humano1 tieneLaEdadDE ).

"
Class {
	#name : #Persona,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'apellido',
		'fechaNacimiento'
	],
	#category : #POO
}

{ #category : #constructor }
Persona class >> nombre: aNombre apellido: aApellido fechaNacimiento:aFecha [
|humano|

humano:= self new.
humano inicializarNombre: aNombre apellido:aApellido fechaNacimiento:aFecha. 
^humano.
]

{ #category : #'de aplicacion' }
Persona >> esMayorEdad: aEdad [
	| exito |
	exito := aEdad >= 18
		ifTrue: [ true ]
		ifFalse: [ false ].
	^ exito
]

{ #category : #visualizadores }
Persona >> getFechaNacimiento [
^fechaNacimiento .
]

{ #category : #'de aplicacion' }
Persona >> inicializarNombre: aNombre apellido: aApellido fechaNacimiento:aFecha [
nombre :=aNombre.
apellido :=aApellido .
fechaNacimiento :=aFecha .
]

{ #category : #'de aplicacion' }
Persona >> tieneLaEdadDE [	
	| hoy edad aux1 |
	hoy := Date today. 
	aux1 :=Date year: hoy year  month: fechaNacimiento monthIndex  day: fechaNacimiento dayOfMonth .
	(aux1 isOnOrAfter:  hoy)ifTrue: [ 
		edad:=hoy year-fechaNacimiento year -1.
		]ifFalse:[
		edad:=(hoy year-fechaNacimiento year).
		].
	^edad.
	
]
