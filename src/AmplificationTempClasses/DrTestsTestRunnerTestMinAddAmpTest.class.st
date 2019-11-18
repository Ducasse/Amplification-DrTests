Class {
	#name : #DrTestsTestRunnerTestMinAddAmpTest,
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
DrTestsTestRunnerTestMinAddAmpTest >> setUp [
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
DrTestsTestRunnerTestMinAddAmpTest >> testAllSelectedClassesAreTestCases [
	<madeBySmallAmp>
	| package |
	package := plugin packagesAvailableForAnalysis anyOne.
	self
		assert:
			((plugin itemsToBeAnalysedFor: {package}) flattened
				allSatisfy: [ :each | each isTestCase ])
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestMinAddAmpTest >> testReRunResultIsDTTestRunnerResult [
	<madeBySmallAmp>
	| pluginResult |
	pluginResult := plugin runForConfiguration: conf.
	reRunconf := DTReRunConfiguration new
		previousResult: pluginResult;
		configurationToRun: (DTTestsRunnerConfiguration items: {testToReRun});
		yourself.
	self
		assert: (plugin runForConfiguration: reRunconf) class
		equals: DTTestsRunnerResult
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestMinAddAmpTest >> testReRunResultIsDTTestRunnerResult_amp [
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

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestMinAddAmpTest >> testRunResultBuildTreeForUI [
	<madeBySmallAmp>
	self
		assert: (plugin runForConfiguration: conf) buildTreeForUI class
		equals: DTTreeNode
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestMinAddAmpTest >> testRunResultIsDTTestRunnerResult [
	<madeBySmallAmp>
	self
		assert: (plugin runForConfiguration: conf) class
		equals: DTTestsRunnerResult
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestMinAddAmpTest >> testSelectedPackagesContainTestCases [
	<madeBySmallAmp>
	self
		assert:
			(plugin packagesAvailableForAnalysis
				allSatisfy:
					[ :package | package definedClasses anySatisfy: [ :class | class isTestCase ] ])
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestMinAddAmpTest >> testTestResultIsNotEmpty [
	<madeBySmallAmp>
	self
		deny: (plugin runForConfiguration: conf) testsResult passed isEmpty
]
