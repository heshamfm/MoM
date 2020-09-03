Class {
	#name : #BaselineOfMoM,
	#superclass : #BaselineOf,
	#category : #BaselineOfMoM
}

{ #category : #baselines }
BaselineOfMoM >> baseline: spec [
	<baseline>
	spec 
		for: #common 
		do: [
			"Packages"
			spec
            baseline: 'Voyage' 
            with: [ spec repository: 'github://pharo-nosql/voyage/mc' ].
			
			"spec
				baseline: 'TinyLogger'
				with: [ spec repository: 'github://jecisc/TinyLogger:v1.x.x/src' ]."
				
			spec
				package: 'MoM';
				package: 'MoM-Tests' with: [ spec requires: #('MoM') ] ]
]

{ #category : #baselines }
BaselineOfMoM >> projectClass [
	^ MetacelloCypressBaselineProject
	
]
