Class {
	#name : #GoalTest,
	#superclass : #TestCase,
	#category : #'Task-Manager-Tests'
}

{ #category : #tests }
GoalTest >> testInit [ 
	self assert: ((Goal new) getName) equals: 'New Name Here..'
]
