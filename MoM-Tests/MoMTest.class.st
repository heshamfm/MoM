Class {
	#name : #MoMTest,
	#superclass : #TestCase,
	#instVars : [
		'testInstance'
	],
	#classInstVars : [
		'testInstance'
	],
	#category : #'MoM-Tests'
}

{ #category : #initialization }
MoMTest >> setUp [ 
	testInstance ifNil: [ testInstance := MoM new ].
	
	Transcript show: 'setUp ===================='
]

{ #category : #tests }
MoMTest >> testInit [ 
	self assert: ((MoM new) name) equals: 'New Name Here..'.
	self assert: MoM new status notNil 
]

{ #category : #test }
MoMTest >> testManager [

	"self flag: #toImplement."
	testInstance manager class assert: ByteString
]

{ #category : #tests }
MoMTest >> testMoMStatusConsistency [

	self assert: MoM new consistent
]

{ #category : #tests }
MoMTest >> testMoMStatusValues [
	| g |
	g := MoM new.
	self assert: (MoMStatus statuses includes: g status).
]
