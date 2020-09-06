"
I represent status of Task or Goal
"
Class {
	#name : #MoMStatus,
	#superclass : #AbstractMoM,
	#category : #MoM
}

{ #category : #accessing }
MoMStatus class >> DONE [
	^ #DONE
]

{ #category : #accessing }
MoMStatus class >> NEW [
	^ #NEW.
]

{ #category : #accessing }
MoMStatus class >> PROGRESS [ 
	^ #PROGRESS
]

{ #category : #testing }
MoMStatus class >> isVoyageRoot [ 
	^ true
]

{ #category : #accessing }
MoMStatus class >> statuses [
	^ #(NEW PROGRESS DONE)
]
