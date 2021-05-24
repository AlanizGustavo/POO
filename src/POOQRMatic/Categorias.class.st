Class {
	#name : #Categorias,
	#superclass : #Object,
	#instVars : [
		'nombreCat',
		'estado'
	],
	#category : #POOQRMatic
}

{ #category : #constructor }
Categorias class >> nombreCat: unNombreCat estado: unEstado [
|catego|
catego:=self new.
catego inicializarNombreCat: unNombreCat estado: unEstado.
^catego.
]

{ #category : #modificadores }
Categorias >> getNombre [
^nombreCat .
]

{ #category : #inicializador }
Categorias >> inicializarNombreCat: unNombreCat estado: unEstado [
nombreCat :=unNombreCat .
estado :=unEstado .
]

{ #category : #'de aplicacion' }
Categorias >> obtenerItems: coleccionItems [
	| colItemsCateg|
	colItemsCateg := coleccionItems
		select: [ :cadaItem | cadaItem verificarPertenencia: nombreCat  ].
	^ colItemsCateg
]
