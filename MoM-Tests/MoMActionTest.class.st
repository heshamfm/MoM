"
My purpose is to test the Task class 
"
Class {
	#name : #MoMActionTest,
	#superclass : #TestCase,
	#category : #'MoM-Tests'
}

{ #category : #tests }
MoMActionTest >> testInitialization [
	| t |
	t := MoMAction new.
	self
		assert: t oname equals: 'Action Name Here..';
		assert: t status equals: MoMStatus NEW;
		assert: t status notNil .
]

{ #category : #tests }
MoMActionTest >> testMoMId [
	
]

{ #category : #tests }
MoMActionTest >> testStatusValue [
	| t |.
	t := MoMAction new.

	^self assert: ( MoMStatus statuses includes: t status).
]
