Class {
	#name : #BaselineOfTaskManager,
	#superclass : #BaselineOf,
	#category : #BaselineOfMoM
}

{ #category : #baselines }
BaselineOfTaskManager >> baseline: spec [
	<baseline>
	spec 
		for: #common 
		do: [
			"Packages"
			spec
				package: 'TaskManager';
				package: 'TaskManager-Tests' with: [ spec requires: #('TaskManager') ]]
]

{ #category : #baselines }
BaselineOfTaskManager >> projectClass [
	^ MetacelloCypressBaselineProject
	
]
