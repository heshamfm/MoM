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
	self assert: a class equals: Task.
	self assert: (a getName) equals: 'Task Name Here..'.
	^ self
]

{ #category : #tests }
TaskTest >> testStatusValue [
	| a |.
	a := Task new.
	Transcript show: a getStatus .
	^self assert: (#('New' 'Progress' 'Done') includes: a getStatus).
]
