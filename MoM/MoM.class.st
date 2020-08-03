"
I represent a goal which is a collection of tasks. when all tasks are done, then I am done.
"
Class {
	#name : #MoM,
	#superclass : #Object,
	#instVars : [
		'id',
		'code',
		'name',
		'manager',
		'status',
		'actions'
	],
	#category : #MoM
}

{ #category : #testing }
MoM class >> isVoyageRoot [ 
	^ true
]

{ #category : #initialization }
MoM class >> setUpConnection [
	| repository |
	repository  := VOMongoRepository 
			host: 'localhost:27017'
			database: 'mom'.
		repository  enableSingleton .
]

{ #category : #accessing }
MoM >> actions [
	^ actions ifNil: [ actions := Set new ]
]

{ #category : #adding }
MoM >> addAction: anAction [
	self actions add: anAction
]

{ #category : #accessing }
MoM >> consistent [
	(self status = #NEW)
		ifFalse: [ ^ (manager notNil) ];
		ifTrue: [ ^ true ].
]

{ #category : #accessing }
MoM >> id [
	^ id
]

{ #category : #initialize }
MoM >> initialize [ 

	self name: 'New Name Here..'.
	self status: Status NEW.
]

{ #category : #accessing }
MoM >> manager [
	^ manager 
]

{ #category : #accessing }
MoM >> manager: newManager [
	manager := newManager
]

{ #category : #accessing }
MoM >> name [
	^ name.
]

{ #category : #accessing }
MoM >> name: newName [ 
	name := newName 
]

{ #category : #accessing }
MoM >> status [
	^ status.
]

{ #category : #accessing }
MoM >> status: newStstus [
	self manager
		ifNil: [ status := Status NEW ];
		ifNotNil: [ status := newStstus ]
		
]
