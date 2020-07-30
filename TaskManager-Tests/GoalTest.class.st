Class {
	#name : #GoalTest,
	#superclass : #TestCase,
	#category : #'TaskManager-Tests'
}

{ #category : #tests }
GoalTest >> testGoalStatusConsistency [

	self assert: Goal new consistent
]

{ #category : #tests }
GoalTest >> testGoalStatusValues [
	| g |
	g := Goal new.
	self assert: (Status statuses includes: g status).
]

{ #category : #tests }
GoalTest >> testInit [ 
	self assert: ((Goal new) name) equals: 'New Name Here..'.
	self assert: Goal new status notNil 
]
