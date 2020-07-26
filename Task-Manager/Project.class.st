Class {
	#name : #Project,
	#superclass : #Object,
	#instVars : [
		'id',
		'code',
		'name',
		'manager',
		'tasks'
	],
	#category : #'Task-Manager'
}

{ #category : #access }
Project >> getName [
	^ name.
]

{ #category : #initialize }
Project >> initialize [ 
	self setName: 'New Name Here..'
]

{ #category : #access }
Project >> setName: newName [ 
	name := newName 
]
