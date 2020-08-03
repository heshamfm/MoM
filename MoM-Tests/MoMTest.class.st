Class {
	#name : #MoMTest,
	#superclass : #TestCase,
	#category : #'MoM-Tests'
}

{ #category : #tests }
MoMTest >> testInit [ 
	self assert: ((MoM new) name) equals: 'New Name Here..'.
	self assert: MoM new status notNil 
]

{ #category : #tests }
MoMTest >> testMoMStatusConsistency [

	self assert: MoM new consistent
]

{ #category : #tests }
MoMTest >> testMoMStatusValues [
	| g |
	g := MoM new.
	self assert: (Status statuses includes: g status).
]
