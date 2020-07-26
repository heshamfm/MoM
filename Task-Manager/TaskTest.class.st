"
My purpose is to test the Task class 
"
Class {
	#name : #TaskTest,
	#superclass : #TestCase,
	#category : #'Task-Manager'
}

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
