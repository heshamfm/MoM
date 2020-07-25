Class {
	#name : #Task,
	#superclass : #Object,
	#instVars : [
		'code',
		'name',
		'responsible',
		'isDone',
		'deadline'
	],
	#category : #'Task-Manager'
}

{ #category : #initialization }
Task >> initialize [ 
	super initialize.
	^ isDone := false.
]

{ #category : #process }
Task >> isDone [ 

	isDone ifNil: isDone = false .

	^ isDone 
]

{ #category : #process }
Task >> markDone [
	^ self isDone == true
]

{ #category : #tests }
Task >> testMarkDone [
	^ self assert: (isDone == isDone )
]
