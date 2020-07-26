Class {
	#name : #Goal,
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
Goal >> getName [
	^ name.
]

{ #category : #initialize }
Goal >> initialize [ 
	self setName: 'New Name Here..'
]

{ #category : #access }
Goal >> setName: newName [ 
	name := newName 
]
