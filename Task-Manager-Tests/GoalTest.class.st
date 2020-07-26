Class {
	#name : #GoalTest,
	#superclass : #TestCase,
	#category : #'Task-Manager-Tests'
}

{ #category : #tests }
GoalTest >> testGoalStatusValues [
	| x |
	x := Goal new.
	self assert: (#('Active' 'Inactive' 'Done') includes: x getStatus).
]

{ #category : #tests }
GoalTest >> testInit [ 
	self assert: ((Goal new) getName) equals: 'New Name Here..'
]
