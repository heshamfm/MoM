Class {
	#name : #GoalTest,
	#superclass : #TestCase,
	#category : #'TaskManager-Tests'
}

{ #category : #tests }
GoalTest >> testGoalStatusConsistency [
	| x |
	x := Goal new.
	x manager: nil.
	x status: 'Active'.
	self assert: x status equals: 'New'
]

{ #category : #tests }
GoalTest >> testGoalStatusValues [
	| x |
	x := Goal new.
	self assert: (#('New' 'Active' 'Done') includes: x status).
]

{ #category : #tests }
GoalTest >> testInit [ 
	self assert: ((Goal new) name) equals: 'New Name Here..'
]
