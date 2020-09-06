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
			baseline: 'Seaside3'
			with: [ spec repository: 'github://SeasideSt/Seaside:v3.4.2/repository'].

			spec
				baseline:'Voyage'
				with: [ spec repository: 'github://pharo-nosql/voyage:1.7/mc';
				    loads: 'mongo tests' ].
			spec
				package: 'MoM';
				package: 'MoM-Tests' with: [ spec requires: #('MoM') ] ]
]

{ #category : #baselines }
BaselineOfMoM >> projectClass [
	^ MetacelloCypressBaselineProject
	
]
