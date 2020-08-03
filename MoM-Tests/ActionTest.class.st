"
My purpose is to test the Task class 
"
Class {
	#name : #ActionTest,
	#superclass : #TestCase,
	#category : #'MoM-Tests'
}

{ #category : #tests }
ActionTest >> testInitialization [
	| t |
	t := Action new.
	self
		assert: t name equals: 'Action Name Here..';
		assert: t status equals: Status NEW;
		assert: t status notNil .
]

{ #category : #tests }
ActionTest >> testMoMId [
	
]

{ #category : #tests }
ActionTest >> testStatusValue [
	| t |.
	t := Action new.

	^self assert: ( Status statuses includes: t status).
]
