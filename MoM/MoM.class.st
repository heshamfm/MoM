"
I represent a goal which is a collection of tasks. when all tasks are done, then I am done.
"
Class {
	#name : #MoM,
	#superclass : #Object,
	#instVars : [
		'code',
		'name',
		'manager',
		'status',
		'actions'
	],
	#category : #MoM
}

{ #category : #'class initialization' }
MoM class >> initialize [ 

	TinyLogger default 
	    ensureFileLoggerNamed: 'D:\Progress.log'; "Add the file logger only if not already"
	    clearLog "This will delete the previous 'Progress.log' file".
]

{ #category : #testing }
MoM class >> isVoyageRoot [ 
	^ true
]

{ #category : #playing }
MoM class >> justATest [
	| study enjoy |
	study := MoMAction selectOne: [ :each | each name = 'Study']. 
	enjoy := MoMAction selectOne: [ :each | each name = 'Enjoy'].
	self new
		name: 'HANAN';
		addAction: study; 
		addAction: enjoy; 
		save.
]

{ #category : #'as yet unclassified' }
MoM class >> populateTestData [
	self new
	   name: 'HANAN';
	   addAction: (MoMAction new name: 'Cook');
	   addAction: (MoMAction new name: 'Pet');
	   addAction: (MoMAction new name: 'Love');
	   save.

	self new
	   name: 'MARIAM';
	   addAction: (MoMAction new name: 'Draw');
	   addAction: (MoMAction new name: 'Dance');
	   save.

	self new
	   name: 'MOHAMMAD';
	   addAction: (MoMAction new name: 'Code');
	   addAction: (MoMAction new name: 'Play');
	   save.

	self new
	   name: 'NADIN';
	   addAction: (MoMAction new name: 'Study');
	   addAction: (MoMAction new name: 'Pray');
	   save.

	self new
	   name: 'NOUREN';
	   addAction: (MoMAction new name: 'Code');
	   addAction: (MoMAction new name: 'Play');
	   save.
]

{ #category : #initialization }
MoM class >> setUpConnection [
	| repository |
	repository  := VOMongoRepository 
			host: 'localhost:27017'
			database: 'minutesDB'.
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

{ #category : #initialize }
MoM >> initialize [ 

	self name: 'New Name Here..'.
	self status: MoMStatus new.
]

{ #category : #accessing }
MoM >> manager [
	^ manager.
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
		ifNil: [ status := MoMStatus NEW ];
		ifNotNil: [ status := newStstus ]
		
]
