Class {
	#name : #BaselineOfTaskManager,
	#superclass : #BaselineOf,
	#category : #BaselineOfTaskManager
}

{ #category : #baselines }
BaselineOfTaskManager >> baseline: spec [
	<baseline>
	spec 
		for: #common 
		do: [		
			spec package: 'TaskManager'.
			spec
				package: 'TaskManager-Tests'
				with: [ spec requires: #( 'TaskManager') ] ] 
]
