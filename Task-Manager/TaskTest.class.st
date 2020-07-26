"
My purpose is to test the Task class 
"
Class {
	#name : #TaskTest,
	#superclass : #TestCase,
	#category : #'Task-Manager'
}

{ #category : #test }
TaskTest >> testInitialization [
	| a |
	a := Task new.
	self assert: a isNil not.
	self assert: (a getName) equals: 'Task Name Here..'.
	^ self
]

{ #category : #tests }
TaskTest >> testStatusValue [
	| a |.
	a := Task new.
	^self assert: (#(New Progress Done) includes: a getStatus).
]
