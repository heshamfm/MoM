"
I represent a test class for a task 

"
Class {
	#name : #TaskTest,
	#superclass : #Object,
	#instVars : [
		'code',
		'name',
		'isDone',
		'deadline',
		'responsible'
	],
	#category : #'Task-Manager'
}

{ #category : #override }
TaskTest >> initialize [ 
	super initialize.
	self name = 'New Task'.
]

{ #category : #test }
TaskTest >> testInitialized [ 
	self assert: isDone not.
	self assert: responsible == ''.
	self assert: code == 0.
	self assert: name == 'New Task'.
	^ self assert: deadline  == Date today .
	
]
