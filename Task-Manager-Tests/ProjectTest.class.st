Class {
	#name : #ProjectTest,
	#superclass : #TestCase,
	#category : #'Task-Manager-Tests'
}

{ #category : #tests }
ProjectTest >> testInit [ 
	self assert: ((Project new) getName) equals: 'New Name Here..'
]
