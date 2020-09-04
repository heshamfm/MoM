"
I represent a task that has an automatically generated id, a name and an optional code. I also have a deadline and a status
"
Class {
	#name : #MoMAction,
	#superclass : #AbstractMoM,
	#instVars : [
		'code',
		'oname',
		'dealine',
		'status',
		'responsible'
	],
	#category : #MoM
}

{ #category : #testing }
MoMAction class >> isVoyageRoot [ 
	^ false
]

{ #category : #initialize }
MoMAction >> initialize [ 

	oname := 'Action Name Here..'.
	status := #NEW
]

{ #category : #accessing }
MoMAction >> oname [
	^ oname
]

{ #category : #accessing }
MoMAction >> oname: anObject [
	oname := anObject
]

{ #category : #accessing }
MoMAction >> responsible [
	^ responsible
]

{ #category : #accessing }
MoMAction >> status [
	^ status.
]

{ #category : #accessing }
MoMAction >> status: newStatus [
	status := newStatus 
]
