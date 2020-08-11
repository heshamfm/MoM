"
I represent a task that has an automatically generated id, a name and an optional code. I also have a deadline and a status
"
Class {
	#name : #MoMAction,
	#superclass : #Object,
	#instVars : [
		'code',
		'name',
		'dealine',
		'status',
		'responsible'
	],
	#category : #MoM
}

{ #category : #testing }
MoMAction class >> isVoyageRoot [ 
	^ true
]

{ #category : #initialize }
MoMAction >> initialize [ 

	name := 'Action Name Here..'.
	status := #NEW
]

{ #category : #accessing }
MoMAction >> name [

	^ name
]

{ #category : #accessing }
MoMAction >> name: newName [ 
	name := newName 
]

{ #category : #accessing }
MoMAction >> responsible [
	^ responsible
]

{ #category : #accessing }
MoMAction >> status [
	^ status.
]

{ #category : #accessing }
MoMAction >> status: newStatus [
	status := newStatus 
]
