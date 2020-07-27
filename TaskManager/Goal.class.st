"
I represent a goal which is a collection of tasks. when all tasks are done, then I am done.
"
Class {
	#name : #Goal,
	#superclass : #Object,
	#instVars : [
		'id',
		'code',
		'name',
		'manager',
		'status',
		'tasks'
	],
	#category : #TaskManager
}

{ #category : #access }
Goal >> getName [
	^ name.
]

{ #category : #accessing }
Goal >> getStatus [
	^ status.
]

{ #category : #initialize }
Goal >> initialize [ 
	self 
		setName: 'New Name Here..';
		setStatus: 'Active'.
]

{ #category : #access }
Goal >> setName: newName [ 
	name := newName 
]

{ #category : #access }
Goal >> setStatus: newStstus [
	status := newStstus 
]
