"
I represent status of Task or Goal
"
Class {
	#name : #Status,
	#superclass : #Object,
	#category : #MoM
}

{ #category : #'as yet unclassified' }
Status class >> DONE [
	^ #DONE
]

{ #category : #accessing }
Status class >> NEW [
	^ #NEW.
]

{ #category : #'as yet unclassified' }
Status class >> PROGRESS [ 
	^ #PROGRESS
]

{ #category : #accessing }
Status class >> statuses [
	^ #(NEW PROGRESS DONE)
]
