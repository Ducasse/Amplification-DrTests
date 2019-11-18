Class {
	#name : #DrTestsTestRunnerTestMinAmpTest,
	#superclass : #TestCase,
	#instVars : [
		'plugin',
		'package',
		'testToReRun',
		'conf',
		'reRunconf',
		'testCase'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestMinAmpTest >> setUp [
	super setUp.
	package := RPackage organizer
		packageNamed: 'DrTests-TestCoverage-MocksForTests'.
	testToReRun := DTTestCoverageTestForCoverage
		selector: #testMethod1forMock.
	testCase := DTTestCoverageTestForCoverage.
	conf := DTPluginConfiguration
		items:
			({package}
				flatCollect:
					[ :p | p definedClasses select: [ :c | c allSuperclasses includes: TestCase ] ])
		packages: {package}.
	reRunconf := DTReRunConfiguration new.
	plugin := DTTestsRunner new
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestMinAmpTest >> testReRunResultIsDTTestRunnerResult_amp [
	<madeBySmallAmp>
	| pluginResult |
	pluginResult := plugin runForConfiguration: conf.
	self assert: plugin class equals: DTTestsRunner.
	self assert: plugin pragmaForResultTrees class equals: ByteSymbol.
	self assert: pluginResult class equals: DTTestsRunnerResult.
	self assert: pluginResult testsResult class equals: TestResult.
	reRunconf := DTReRunConfiguration new
		previousResult: pluginResult;
		configurationToRun: (DTTestsRunnerConfiguration items: {testToReRun});
		yourself
]
