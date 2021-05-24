Class {
	#name : #Autor,
	#superclass : #Object,
	#instVars : [
		'nombreApellido',
		'ciudad',
		'pais',
		'fechaNacimiento',
		'colCuadrosAutor'
	],
	#category : #POOPinacoteca
}

{ #category : #constructor }
Autor class >> nombreApellido: aNombre ciudad: aCiudad pais: aPais fechaNacimiento: aFecha [
|artista|
artista:=Autor new.
artista inicializarNombreApellido: aNombre ciudad: aCiudad pais: aPais fechaNacimiento: aFecha.
^artista.
]

{ #category : #'de aplicacion' }
Autor >> agregarCuadroAutor: unCuadro [
	colCuadrosAutor add: unCuadro.
]

{ #category : #initialization }
Autor >> inicializarNombreApellido: aNombre ciudad: aCiudad pais: aPais fechaNacimiento:aFecha [.
nombreApellido:=aNombre.
ciudad:=aCiudad.
pais:=aPais.
colCuadrosAutor:=OrderedCollection new.
]

{ #category : #'de aplicacion' }
Autor >> obtenerColCuadrosAutor [
	^ colCuadrosAutor
]
