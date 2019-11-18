Class {
	#name : #DrTestsTestRunnerUITestAmpTest,
	#superclass : #TestCase,
	#instVars : [
		'drTest'
	],
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
DrTestsTestRunnerUITestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerUITestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerUITestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerUITestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerUITestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerUITestAmpTest >> setUp [

	super setUp.
	drTest := DrTests on: { DTTestsRunner }.
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerUITestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerUITestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerUITestAmpTest >> testRunTestsUpdatesUIWithResults_amp [
	<madeBySmallAmp>
	| tmp_vSD1X0kVno2 |
	tmp_vSD1X0kVno2 := drTest startButton.
	self
		assert: drTest class
		equals: DrTests
		description: 'testRunTestsUpdatesUIWithResults_amp:1.1'.
	self
		assert: drTest plugins class
		equals: Array
		description: 'testRunTestsUpdatesUIWithResults_amp:1.2'.
	self
		assert: drTest plugins size
		equals: 1
		description: 'testRunTestsUpdatesUIWithResults_amp:1.3'.
	self
		assert: drTest testsConfiguration class
		equals: DTTestsRunnerConfiguration
		description: 'testRunTestsUpdatesUIWithResults_amp:1.4'.
	self
		assert: drTest resultSelected class
		equals: UndefinedObject
		description: 'testRunTestsUpdatesUIWithResults_amp:1.5'.
	self
		assert: drTest resultSelected
		equals: nil
		description: 'testRunTestsUpdatesUIWithResults_amp:1.6'.
	self
		assert: drTest title class
		equals: ByteString
		description: 'testRunTestsUpdatesUIWithResults_amp:1.7'.
	self
		assert: drTest title
		equals: 'Dr Tests - Tests Runner'
		description: 'testRunTestsUpdatesUIWithResults_amp:1.8'.
	self
		assert: drTest resultItemSelected class
		equals: UndefinedObject
		description: 'testRunTestsUpdatesUIWithResults_amp:1.9'.
	self
		assert: drTest resultItemSelected
		equals: nil
		description: 'testRunTestsUpdatesUIWithResults_amp:1.10'.
	self
		assert: tmp_vSD1X0kVno2 class
		equals: SpButtonPresenter
		description: 'testRunTestsUpdatesUIWithResults_amp:1.1'.
	self
		assert: tmp_vSD1X0kVno2 contextMenu class
		equals: UndefinedObject
		description: 'testRunTestsUpdatesUIWithResults_amp:1.2'.
	self
		assert: tmp_vSD1X0kVno2 contextMenu
		equals: nil
		description: 'testRunTestsUpdatesUIWithResults_amp:1.3'.
	tmp_vSD1X0kVno2 performAction.
	self
		assert: tmp_vSD1X0kVno2 class
		equals: SpButtonPresenter
		description: 'testRunTestsUpdatesUIWithResults_amp:2.1'.
	self
		assert: tmp_vSD1X0kVno2 contextMenu class
		equals: UndefinedObject
		description: 'testRunTestsUpdatesUIWithResults_amp:2.2'.
	self
		assert: tmp_vSD1X0kVno2 contextMenu
		equals: nil
		description: 'testRunTestsUpdatesUIWithResults_amp:2.3'
]
