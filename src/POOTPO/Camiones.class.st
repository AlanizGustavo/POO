"
|auto1 auto2 camion1 camion2 gestor1 lista|

gestor1:= GestorVehiculos gestorVehiculos.

auto1:= Autos AutoPatente: 'ABC-999' kmActual: 80000 kmService:120000  marca: 'FORD' modelo:'FIESTA'  cantPuertas: 5.
auto2:= Autos AutoPatente: 'AGG-888' kmActual: 30000 kmService:120000  marca: 'FIAT' modelo:'UNO'  cantPuertas: 3.

camion1 :=Camiones camionPatente: 'PYY-777' kmActual: 50000 kmService: 100000 marca: 'MERCEDEZ BENZ'  modelo: 'C1'  tipo: 'ACOPLADO' tara: 8000.
camion2 :=Camiones camionPatente: 'ZVV-666' kmActual: 20000 kmService: 100000 marca: 'MERCEDEZ BENZ'  modelo: 'C1'  tipo: 'ACOPLADO' tara: 8000.

gestor1 agregarVehiculo: auto1. 
gestor1 agregarVehiculo: auto2.
gestor1 agregarVehiculo: camion1.
gestor1 agregarVehiculo: camion2.

lista:= gestor1 generarListaKilometraje. 

lista do: [:i|Transcript show: i asString;cr ]

"
Class {
	#name : #Camiones,
	#superclass : #Vehiculos,
	#instVars : [
		'tipo',
		'tara'
	],
	#category : #POOTPO
}

{ #category : #constructor }
Camiones class >> camionPatente: aPatente kmActual: aKmActual kmService: aKmService marca: aMarca modelo: aModelo tipo: aTipo tara: aTara [
|truck|
truck :=self new.
truck inicializarCamionPatente: aPatente kmActual: aKmActual kmService: aKmService marca: aMarca modelo: aModelo tipo: aTipo tara: aTara.
^truck .
	
]

{ #category : #inicializador }
Camiones >> inicializarCamionPatente: aPatente kmActual: aKmActual kmService: aKmService marca: aMarca modelo: aModelo tipo: aTipo tara: aTara [.
		self inicializarVehiculosPatente: aPatente  kmActual: aKmActual  kmService: aKmService  marca:  aMarca modelo: aModelo .
		
	
	tipo := aTipo.
	tara := aTara
]
