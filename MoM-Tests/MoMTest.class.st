Class {
	#name : #MoMTest,
	#superclass : #TestCase,
	#category : #'MoM-Tests'
}

{ #category : #tests }
MoMTest >> testInit [ 
	self assert: ((Goal new) name) equals: 'New Name Here..'.
	self assert: Goal new status notNil 
]

{ #category : #tests }
MoMTest >> testMoMStatusConsistency [

	self assert: Goal new consistent
]

{ #category : #tests }
MoMTest >> testMoMStatusValues [
	| g |
	g := Goal new.
	self assert: (Status statuses includes: g status).
]
