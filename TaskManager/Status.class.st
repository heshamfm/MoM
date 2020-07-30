"
I represent status of Task or Goal
"
Class {
	#name : #Status,
	#superclass : #SharedPool,
	#category : #TaskManager
}

{ #category : #accessing }
Status class >> statuses [
	^ #(#NEW #PROGRESS #DONE)
]
