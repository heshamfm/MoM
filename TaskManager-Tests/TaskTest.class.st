"
My purpose is to test the Task class 
"
Class {
	#name : #TaskTest,
	#superclass : #TestCase,
	#category : #'TaskManager-Tests'
}

{ #category : #tests }
TaskTest >> testInitialization [
	| t |
	t := Task new.
	self
		assert: t name equals: 'Task Name Here..';
		assert: t status equals: #NEW;
		assert: t status notNil .
]

{ #category : #tests }
TaskTest >> testStatusValue [
	| t |.
	t := Task new.

	^self assert: ( Status statuses includes: t status).
]
