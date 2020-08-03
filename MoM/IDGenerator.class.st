"
I generate new unique id's for various objects. I need to be implemented with a database. 
"
Class {
	#name : #IDGenerator,
	#superclass : #Object,
	#category : #MoM
}

{ #category : #'as yet unclassified' }
IDGenerator class >> generateId [
	^ 0.
]

{ #category : #generators }
IDGenerator >> generateId [
	^ 0. "this 0 is just temporarily returned till we start using a database or better yet a fully functional ORM"
]
