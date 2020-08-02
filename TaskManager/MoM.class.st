Class {
	#name : #MoM,
	#superclass : #Object,
	#instVars : [
		'id'
	],
	#category : #TaskManager
}

{ #category : #accessing }
MoM >> id [
	^ id.
]

{ #category : #initialization }
MoM >> initialize [ 
	id := IDGenerator generateId.
]
