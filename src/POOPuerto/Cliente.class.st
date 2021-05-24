Class {
	#name : #Cliente,
	#superclass : #Object,
	#instVars : [
		'nombreApellido',
		'dni',
		'telefono',
		'correoElectronico'
	],
	#category : #POOPuerto
}

{ #category : #constructor }
Cliente class >> nombreApellido: aNombre dni: numDni telefono:tel correoElectronico: correo [ 
|cliente|
cliente:=self new.
cliente inicializarNombreApellido: aNombre dni: numDni telefono:tel correoElectronico: correo.
^cliente.

]

{ #category : #'de aplicacion' }
Cliente >> inicializarNombreApellido: aNombre dni: numDni telefono:tel correoElectronico: correo [.
nombreApellido :=aNombre.
dni:=numDni.
telefono:=tel.
correoElectronico :=correo.
]
