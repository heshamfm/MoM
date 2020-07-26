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
	^ self assert: Task new isInitialized 
]
