Class {
	#name : #BaselineOfAmplificationDrTests,
	#superclass : #BaselineOf,
	#category : #BaselineOfAmplificationDrTests
}

{ #category : #baselines }
BaselineOfAmplificationDrTests >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'TestAmplificationDrTests'
				with: [ spec requires: #('Amplification' 'DrTests') ].
			spec
				package: 'AmplificationTempClasses'
				with: [ spec requires: #('TestAmplificationDrTests') ].
			spec
				baseline: 'Amplification'
				with: [ spec repository: 'github://mabdi/small-amp:betav0.3/src' ].
			spec
				baseline: 'DrTests'
				with: [ spec repository: 'github://ObjectProfile/DrTests:v1.0.1/src' ] ]
]
