Class {
	#name : #MoM,
	#superclass : #Object,
	#instVars : [
		'id'
	],
	#category : #MoM
}

{ #category : #accessing }
MoM >> id [
	^ id.
]

{ #category : #initialization }
MoM >> initialize [ 
	id := IDGenerator generateId.
]
