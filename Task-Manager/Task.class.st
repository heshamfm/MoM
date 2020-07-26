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
	#category : #'Task-Manager'
}

{ #category : #accessing }
Task >> getName [

	^ name
]

{ #category : #accessing }
Task >> getResponsible [
	^ responsible
]

{ #category : #accessing }
Task >> getStatus [
	^ status.
]

{ #category : #initialize }
Task >> initialize [ 
	name := 'Task Name Here..'.
	status := 'New'
]

{ #category : #accessing }
Task >> setName: newName [ 
	name := newName 
]

{ #category : #accessing }
Task >> setStatus: newStatus [
	status := newStatus 
]
