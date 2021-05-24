Class {
	#name : #QRMatic,
	#superclass : #Object,
	#instVars : [
		'colCategorias',
		'colItems'
	],
	#category : #POOQRMatic
}

{ #category : #constructor }
QRMatic class >> QRMatic [
|empresa|
empresa:=self new.
empresa inicializarQRMatic.
^empresa.
]

{ #category : #modificadores }
QRMatic >> agregarCategoria:categ [ 
colCategorias add: categ.
]

{ #category : #modificadores }
QRMatic >> agregarItems: aItem [
	colItems  add: aItem.
]

{ #category : #'de aplicacion' }
QRMatic >> buscarItems: aCategoria [
	^aCategoria obtenerItems: colItems
]

{ #category : #initialization }
QRMatic >> inicializarQRMatic [
colCategorias := OrderedCollection new.
colItems :=OrderedCollection new.
]
