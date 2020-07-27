Class {
	#name : #GoalTest,
	#superclass : #TestCase,
	#category : #'TaskManager-Tests'
}

{ #category : #tests }
GoalTest >> testGoalStatusConsistency [
	| x |
	x := Goal new.
	x setManager: nil.
	x setStatus: 'Active'.
	self assert: x getStatus equals: 'New'
]

{ #category : #tests }
GoalTest >> testGoalStatusValues [
	| x |
	x := Goal new.
	self assert: (#('New' 'Active' 'Done') includes: x getStatus).
]

{ #category : #tests }
GoalTest >> testInit [ 
	self assert: ((Goal new) getName) equals: 'New Name Here..'
]
