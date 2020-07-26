"
My purpose is to test the Task class 
"
Class {
	#name : #TaskTest,
	#superclass : #Object,
	#category : #'Task-Manager'
}

{ #category : #test }
TaskTest >> testInitialization [
	| a |
	a := Task new.
	a assert: a isInitialized.
	a assert: a name equals: 'Task Name Here..'.
	^ self
]
