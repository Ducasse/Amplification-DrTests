Class {
	#name : #DrTestsTestRunnerUITestMinAddAmpTest,
	#superclass : #TestCase,
	#instVars : [
		'drTest'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
DrTestsTestRunnerUITestMinAddAmpTest >> setUp [

	super setUp.
	drTest := DrTests on: { DTTestsRunner }.
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerUITestMinAddAmpTest >> testRunTestsUpdatesUIWithResults [
	<madeBySmallAmp>
	drTest startButton performAction.
	self assert: drTest resultsList roots notEmpty
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerUITestMinAddAmpTest >> testRunTestsUpdatesUIWithResults_amp [
	<madeBySmallAmp>
	| tmp_vSD1X0kVno2 |
	tmp_vSD1X0kVno2 := drTest startButton.
	self
		assert: drTest testsConfiguration class
		equals: DTTestsRunnerConfiguration.
	self assert: drTest resultSelected class equals: UndefinedObject.
	self assert: drTest title class equals: ByteString.
	self assert: drTest resultItemSelected class equals: UndefinedObject.
	tmp_vSD1X0kVno2 performAction
]
