"
I represent a task that has an automatically generated id, a name and an optional code. I also have a deadline and a status
"
Class {
	#name : #Task,
	#superclass : #Object,
	#instVars : [
		'id',
		'code',
		'name',
		'dealine',
		'status',
		'responsible'
	],
	#category : #TaskManager
}

{ #category : #accessing }
Task >> id [
	^ id
]

{ #category : #initialize }
Task >> initialize [ 

	id := IDGenerator generateId.
	name := 'Task Name Here..'.
	status := #NEW
]

{ #category : #accessing }
Task >> name [

	^ name
]

{ #category : #accessing }
Task >> name: newName [ 
	name := newName 
]

{ #category : #accessing }
Task >> responsible [
	^ responsible
]

{ #category : #accessing }
Task >> status [
	^ status.
]

{ #category : #accessing }
Task >> status: newStatus [
	status := newStatus 
]
