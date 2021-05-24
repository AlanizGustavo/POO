Class {
	#name : #Items,
	#superclass : #Object,
	#instVars : [
		'nombreIt',
		'descripcion',
		'precio',
		'colCategoriasPertenece'
	],
	#category : #POOQRMatic
}

{ #category : #constructor }
Items class >> nmbreIt: unNombre descripcion: unaDescripcion precio: valor [
|elemento|
elemento:=self new.
elemento inicializarNombreIt: unNombre descripcion: unaDescripcion precio: valor.
^elemento.
]

{ #category : #modificadores }
Items >> agregarCategoriaItem: aCateg [ 
colCategoriasPertenece add: aCateg .
]

{ #category : #'de aplicacion' }
Items >> getNombre [
^nombreIt .
]

{ #category : #initialization }
Items >> inicializarNombreIt:unNombre descripcion:unaDescripcion precio: valor [
nombreIt:=unNombre.
descripcion :=unaDescripcion.
precio:=valor.
colCategoriasPertenece:=OrderedCollection new.
]

{ #category : #'de aplicacion' }
Items >> verificarPertenencia: nombreCateg [
	^ colCategoriasPertenece
		contains: [ :unaCategoria | unaCategoria getNombre  = nombreCateg ]
]
