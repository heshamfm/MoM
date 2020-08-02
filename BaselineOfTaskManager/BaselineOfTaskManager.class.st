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
			"Packages"
			spec
				package: 'TaskManager';
				package: 'TaskManager-Tests' with: [ spec requires: #('TaskManager') ].
				
			spec
				baseline: 'Garage'
					with: [ spec
					loads: 'postgresV2';
					repository: 'github://pharo-rdbms/garage' ]]
]

{ #category : #baselines }
BaselineOfTaskManager >> projectClass [
	^ MetacelloCypressBaselineProject
	
]
