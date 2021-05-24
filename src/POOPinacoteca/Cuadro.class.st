Class {
	#name : #Cuadro,
	#superclass : #Object,
	#instVars : [
		'codigo',
		'nombre',
		'dimensiones',
		'fechaPintado',
		'tecnica',
		'genero'
	],
	#category : #POOPinacoteca
}

{ #category : #constructor }
Cuadro class >> Codigo: aCodigo nombre: aNombre dimensiones: aDimension fechaPintado: aFecha tecnica: aTecnica genero: aGenero [
|picture|
picture:=self new.
picture inicializarCodigo: aCodigo nombre: aNombre dimensiones: aDimension fechaPintado: aFecha tecnica: aTecnica genero: aGenero.
^picture.
]

{ #category : #'de aplicacion' }
Cuadro >> escribir [
	| texto |
	texto := 'codigo: ', codigo asString , ' nombre: ' , nombre
		, ' dimensiones: ' , dimensiones , 'fehca de Pintado: '
		, fechaPintado asString , ' tecnica: ' , tecnica , ' genero: '
		, genero.
	^ texto
]

{ #category : #'de aplicacion' }
Cuadro >> getCodigo [
^codigo.
]

{ #category : #'de aplicacion' }
Cuadro >> getNombre [
^nombre .
]

{ #category : #initialization }
Cuadro >> inicializarCodigo: aCodigo nombre:aNombre dimensiones:aDimension fechaPintado:aFecha tecnica:aTecnica genero: aGenero [
codigo :=aCodigo.
nombre:=aNombre.
dimensiones :=aDimension .
fechaPintado:=aFecha.
tecnica:=aTecnica.
genero:=aGenero.
]

{ #category : #'de aplicacion' }
Cuadro >> verificarCuadroTecnica: unaTecnica genero: unGenero anio: unAnio [
	| exito |
	tecnica = unaTecnica & (genero = unGenero)
		& (fechaPintado year < unAnio)
		ifTrue: [ exito := true ]
		ifFalse: [ exito := false ].
	^ exito
]

{ #category : #'de aplicacion' }
Cuadro >> verificarPertenencia: unaColCuadrosAutor [ 
^unaColCuadrosAutor  includes: self.
]
