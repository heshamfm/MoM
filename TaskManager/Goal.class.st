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

{ #category : #accessing }
Goal >> getManager [
	^ manager 
]

{ #category : #accessing }
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
		setStatus: 'New'.
]

{ #category : #accessing }
Goal >> setManager: newManager [
	manager := newManager
]

{ #category : #accessing }
Goal >> setName: newName [ 
	name := newName 
]

{ #category : #accessing }
Goal >> setStatus: newStstus [
	self getManager
		ifNil: [ status := 'New' ];
		ifNotNil: [ status := newStstus ]
		
]
