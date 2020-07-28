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
	x status ~= 'New'
		ifTrue: [ self assert: x responsible notNil ].
	x responsible ifNil: [ self assert: x status equals: 'New' ]
]

{ #category : #tests }
TaskTest >> testInitialization [
	| a |
	a := Task new.
	self
		assert: a name equals: 'Task Name Here..';
		assert: a status equals: 'New'.
]

{ #category : #tests }
TaskTest >> testStatusValue [
	| t |.
	t := Task new.

	^self assert: (#('New' 'Progress' 'Done') includes: t status).
]
