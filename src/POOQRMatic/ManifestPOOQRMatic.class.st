"
|qr item1 item2 item3 categ1 categ2 categ3 cola|


qr:=QRMatic QRMatic .
item1 :=Items nmbreIt: 'pasta' descripcion:'comida'  precio:200.
item2:=Items nmbreIt: 'control' descripcion:'tv'  precio:400.
item3:=Items nmbreIt: 'cartuchera' descripcion:'escolar'  precio:600.

categ1:=Categorias nombreCat: 'escolar' estado:'visible'.
categ2:=Categorias nombreCat: 'deporte' estado:'visible'.

item1 agregarCategoriaItem: categ1.

qr agregarItems: item1.
qr agregarItems: item2.
qr agregarItems: item3.

qr agregarCategoria: categ1. 
qr agregarCategoria: categ2.

item1 agregarCategoriaItem: categ1.
item2 agregarCategoriaItem: categ1.
item3 agregarCategoriaItem: categ1.

cola:=qr buscarItems: categ1 . 
cola do:[:cada| Transcript show: cada getNombre asString]  .
"
Class {
	#name : #ManifestPOOQRMatic,
	#superclass : #PackageManifest,
	#category : #'POOQRMatic-Manifest'
}
