Class {
	#name : #Televisor,
	#superclass : #Electrodomesticos,
	#instVars : [
		'pulgadas',
		'resolucion',
		'puertos',
		'esSmart'
	],
	#category : #POOElectrodomesticos
}

{ #category : #constructor }
Televisor class >> TelevisorPrecioBase: monto consEnerg: letra peso: unPeso [
|tele|
tele:=self new.
tele crearTelevisorPrecioBase: monto consEnerg: letra peso: unPeso.
^tele.
]

{ #category : #inicializador }
Televisor >> crearTelevisorPrecioBase: monto consEnerg: letra peso: unPeso [
self crearElectrodomesticoPrecio: monto peso:unPeso  letra: letra.
resolucion :='HD 1366x768Px'.
pulgadas :=32.
puertos:=1.
esSmart := false. 
]
