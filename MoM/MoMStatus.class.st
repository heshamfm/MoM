"
I represent status of Task or Goal
"
Class {
	#name : #MoMStatus,
	#superclass : #Object,
	#category : #MoM
}

{ #category : #'as yet unclassified' }
MoMStatus class >> DONE [
	^ #DONE
]

{ #category : #accessing }
MoMStatus class >> NEW [
	^ #NEW.
]

{ #category : #'as yet unclassified' }
MoMStatus class >> PROGRESS [ 
	^ #PROGRESS
]

{ #category : #accessing }
MoMStatus class >> statuses [
	^ #(NEW PROGRESS DONE)
]