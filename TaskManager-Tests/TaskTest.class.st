"
My purpose is to test the Task class 
"
Class {
	#name : #TaskTest,
	#superclass : #TestCase,
	#category : #'TaskManager-Tests'
}

{ #category : #tests }
TaskTest >> checkTaskConsistency [
	| x |
	x := Task new.
	x getStatus ~= 'New'
		ifTrue: [ self assert: x getResponsible notNil ].
	x getResponsible ifNil: [ self assert: x getStatus equals: 'New' ]
]

{ #category : #tests }
TaskTest >> testInitialization [
	| a |
	a := Task new.
	self 	assert: (a getName) equals: 'Task Name Here..';
			assert: a getStatus equals: 'New'.
]

{ #category : #tests }
TaskTest >> testStatusValue [
	| a |.
	a := Task new.

	^self assert: (#('New' 'Progress' 'Done') includes: a getStatus).
]
