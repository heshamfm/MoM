"
I represent a task that has an automatically generated id, a name and an optional code. I also have a deadline and a status
"
Class {
	#name : #Action,
	#superclass : #Object,
	#instVars : [
		'id',
		'code',
		'name',
		'dealine',
		'status',
		'responsible'
	],
	#category : #MoM
}

{ #category : #testing }
Action class >> isVoyageRoot [ 
	^ true
]

{ #category : #accessing }
Action >> id [
	^ id
]

{ #category : #initialize }
Action >> initialize [ 

	name := 'Action Name Here..'.
	status := #NEW
]

{ #category : #accessing }
Action >> name [

	^ name
]

{ #category : #accessing }
Action >> name: newName [ 
	name := newName 
]

{ #category : #accessing }
Action >> responsible [
	^ responsible
]

{ #category : #accessing }
Action >> status [
	^ status.
]

{ #category : #accessing }
Action >> status: newStatus [
	status := newStatus 
]
