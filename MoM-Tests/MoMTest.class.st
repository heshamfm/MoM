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
	testInstance := MoM new.
	testInstance ifNil: [ testInstance := MoM new ].
]

{ #category : #tests }
MoMTest >> testInit [ 
	self assert: ((MoM new) oname) equals: 'New Name Here..'.
	self assert: MoM new status notNil 
]

{ #category : #test }
MoMTest >> testManager [

	"self flag: #toImplement."
	Transcript show: ((testInstance manager) class).
	"(testInstance manager class) assert: ByteString"
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
