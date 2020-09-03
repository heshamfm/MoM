"
I represent a goal which is a collection of tasks. when all tasks are done, then I am done.
"
Class {
	#name : #MoM,
	#superclass : #Object,
	#instVars : [
		'code',
		'oname',
		'manager',
		'status',
		'actions'
	],
	#category : #MoM
}

{ #category : #voyage }
MoM class >> descriptionContainer [
	<voyageContainer>
	^ VOContainer new
		collectionName: 'MoM'
		yourself
]

{ #category : #testing }
MoM class >> isVoyageRoot [ 
	^ true
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

	self oname: 'New Name Here..'.
	self status: MoMStatus new.
	
	TinyLogger reset.
	TinyLogger default
		addStdoutLogger;
		addTranscriptLogger;
		addFileLogger;
		addFileLoggerNamed: '../logs/MoMlog.txt';
		clearLog .
	Time now record.
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
MoM >> oname [
	^ oname
]

{ #category : #accessing }
MoM >> oname: anObject [
	oname := anObject
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
