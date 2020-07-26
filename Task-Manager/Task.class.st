"
I represent a task that has an automatically generated id, a name and an optional code. I also have a deadline and a status
"
Class {
	#name : #Task,
	#superclass : #Object,
	#instVars : [
		'id',
		'code',
		'name',
		'dealine',
		'status'
	],
	#category : #'Task-Manager'
}

{ #category : #initialize }
Task >> new [  
	super new.
	name := 'Task Name Here..'.
	^ self 
]
