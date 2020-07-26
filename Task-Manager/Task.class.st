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
		'status'
	],
	#category : #'Task-Manager'
}

{ #category : #accessing }
Task >> getName [

	^ name
]

{ #category : #accessing }
Task >> getStatus [
	^ status.
]

{ #category : #initialize }
Task >> new [  
	super new.
	self setName: 'Task Name Here..'.
	self setStatus: 'New'.

]

{ #category : #accessing }
Task >> setName: newName [ 
	name := newName 
]

{ #category : #accessing }
Task >> setStatus: newStatus [
	status := newStatus 
]
