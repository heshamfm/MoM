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
Goal >> consistent [
	(self status = #NEW)
		ifFalse: [ ^ (manager notNil) ];
		ifTrue: [ ^ true ].
]

{ #category : #initialize }
Goal >> initialize [ 
	self name: 'New Name Here..'.
	self status: Status NEW.
]

{ #category : #accessing }
Goal >> manager [
	^ manager 
]

{ #category : #accessing }
Goal >> manager: newManager [
	manager := newManager
]

{ #category : #accessing }
Goal >> name [
	^ name.
]

{ #category : #accessing }
Goal >> name: newName [ 
	name := newName 
]

{ #category : #accessing }
Goal >> status [
	^ status.
]

{ #category : #accessing }
Goal >> status: newStstus [
	self manager
		ifNil: [ status := Status NEW ];
		ifNotNil: [ status := newStstus ]
		
]
