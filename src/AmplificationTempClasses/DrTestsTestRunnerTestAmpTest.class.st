Class {
	#name : #DrTestsTestRunnerTestAmpTest,
	#superclass : #TestCase,
	#instVars : [
		'plugin',
		'package',
		'testToReRun',
		'conf',
		'reRunconf',
		'testCase'
	],
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestAmpTest >> setUp [
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
DrTestsTestRunnerTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestAmpTest >> testAllSelectedClassesAreTestCases_amp [
	<madeBySmallAmp>
	| package |
	package := plugin packagesAvailableForAnalysis anyOne.
	self
		assert: plugin packagesAvailableForAnalysis class
		equals: Array
		description: 'testAllSelectedClassesAreTestCases_amp:1.1'.
	self
		assert: plugin packagesAvailableForAnalysis size
		equals: 184
		description: 'testAllSelectedClassesAreTestCases_amp:1.2'.
	self
		assert: package class
		equals: RPackage
		description: 'testAllSelectedClassesAreTestCases_amp:1.1'.
	self
		assert: package packageManifestOrNil class
		equals: ManifestSpec2CommanderTests class
		description: 'testAllSelectedClassesAreTestCases_amp:1.2'.
	self
		assert: package extendedClasses class
		equals: Array
		description: 'testAllSelectedClassesAreTestCases_amp:1.3'.
	self
		assert: package extendedClasses size
		equals: 0
		description: 'testAllSelectedClassesAreTestCases_amp:1.4'.
	self
		assert: package extensionMethods class
		equals: OrderedCollection
		description: 'testAllSelectedClassesAreTestCases_amp:1.5'.
	self
		assert: package extensionMethods size
		equals: 0
		description: 'testAllSelectedClassesAreTestCases_amp:1.6'.
	self
		assert: package definedClassNames class
		equals: Set
		description: 'testAllSelectedClassesAreTestCases_amp:1.7'.
	self
		assert: package definedClassNames size
		equals: 7
		description: 'testAllSelectedClassesAreTestCases_amp:1.8'.
	self
		assert: package definedClasses class
		equals: Set
		description: 'testAllSelectedClassesAreTestCases_amp:1.9'.
	self
		assert: package definedClasses size
		equals: 7
		description: 'testAllSelectedClassesAreTestCases_amp:1.10'.
	self
		assert: package name class
		equals: ByteSymbol
		description: 'testAllSelectedClassesAreTestCases_amp:1.11'.
	self
		assert: package name size
		equals: 22
		description: 'testAllSelectedClassesAreTestCases_amp:1.12'.
	self
		assert: package methods class
		equals: OrderedCollection
		description: 'testAllSelectedClassesAreTestCases_amp:1.13'.
	self
		assert: package methods size
		equals: 24
		description: 'testAllSelectedClassesAreTestCases_amp:1.14'.
	self
		assert: package isEmpty class
		equals: False
		description: 'testAllSelectedClassesAreTestCases_amp:1.15'.
	self
		assert: package isEmpty
		equals: false
		description: 'testAllSelectedClassesAreTestCases_amp:1.16'.
	self
		assert: package orderedClasses class
		equals: Array
		description: 'testAllSelectedClassesAreTestCases_amp:1.17'.
	self
		assert: package orderedClasses size
		equals: 7
		description: 'testAllSelectedClassesAreTestCases_amp:1.18'.
	self
		assert: package isDefault class
		equals: False
		description: 'testAllSelectedClassesAreTestCases_amp:1.19'.
	self
		assert: package isDefault
		equals: false
		description: 'testAllSelectedClassesAreTestCases_amp:1.20'.
	self
		assert: package isDeprecated class
		equals: False
		description: 'testAllSelectedClassesAreTestCases_amp:1.21'.
	self
		assert: package isDeprecated
		equals: false
		description: 'testAllSelectedClassesAreTestCases_amp:1.22'.
	self
		assert: package extendedClassNames class
		equals: Array
		description: 'testAllSelectedClassesAreTestCases_amp:1.23'.
	self
		assert: package extendedClassNames size
		equals: 0
		description: 'testAllSelectedClassesAreTestCases_amp:1.24'.
	self
		assert: package extensionSelectors class
		equals: Set
		description: 'testAllSelectedClassesAreTestCases_amp:1.25'.
	self
		assert: package extensionSelectors size
		equals: 0
		description: 'testAllSelectedClassesAreTestCases_amp:1.26'.
	self
		assert: package classes class
		equals: Set
		description: 'testAllSelectedClassesAreTestCases_amp:1.27'.
	self
		assert: package classes size
		equals: 7
		description: 'testAllSelectedClassesAreTestCases_amp:1.28'.
	self
		assert: package hierarchyRoots class
		equals: Set
		description: 'testAllSelectedClassesAreTestCases_amp:1.29'.
	self
		assert: package hierarchyRoots size
		equals: 1
		description: 'testAllSelectedClassesAreTestCases_amp:1.30'.
	self
		assert: package selectors class
		equals: Set
		description: 'testAllSelectedClassesAreTestCases_amp:1.31'.
	self
		assert: package selectors size
		equals: 19
		description: 'testAllSelectedClassesAreTestCases_amp:1.32'.
	self
		assert: package roots class
		equals: Set
		description: 'testAllSelectedClassesAreTestCases_amp:1.33'.
	self
		assert: package roots size
		equals: 6
		description: 'testAllSelectedClassesAreTestCases_amp:1.34'.
	self
		assert: package packageName class
		equals: ByteSymbol
		description: 'testAllSelectedClassesAreTestCases_amp:1.35'.
	self
		assert: package packageName size
		equals: 22
		description: 'testAllSelectedClassesAreTestCases_amp:1.36'
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestAmpTest >> testReRunResultIsDTTestRunnerResult_amp [
	<madeBySmallAmp>
	| pluginResult |
	pluginResult := plugin runForConfiguration: conf.
	self
		assert: plugin class
		equals: DTTestsRunner
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.1'.
	self
		assert: plugin pragmaForResultTrees class
		equals: ByteSymbol
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.2'.
	self
		assert: plugin pragmaForResultTrees size
		equals: 28
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.3'.
	self
		assert: pluginResult class
		equals: DTTestsRunnerResult
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.1'.
	self
		assert: pluginResult testsResult class
		equals: TestResult
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.2'.
	self
		assert: pluginResult testsResult hasPassed class
		equals: True
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.3'.
	self
		assert: pluginResult testsResult hasPassed
		equals: true
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.4'.
	self
		assert: pluginResult testsResult failureCount class
		equals: SmallInteger
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.5'.
	self
		assert: pluginResult testsResult failureCount
		equals: 0
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.6'.
	self
		assert: pluginResult testsResult hasFailures class
		equals: False
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.7'.
	self
		assert: pluginResult testsResult hasFailures
		equals: false
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.8'.
	self
		assert: pluginResult testsResult unexpectedPassCount class
		equals: SmallInteger
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.9'.
	self
		assert: pluginResult testsResult unexpectedPassCount
		equals: 0
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.10'.
	self
		assert: pluginResult testsResult runCount class
		equals: SmallInteger
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.11'.
	self
		assert: pluginResult testsResult runCount
		equals: 2
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.12'.
	self
		assert: pluginResult testsResult skippedCount class
		equals: SmallInteger
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.13'.
	self
		assert: pluginResult testsResult skippedCount
		equals: 0
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.14'.
	self
		assert: pluginResult testsResult passedCount class
		equals: SmallInteger
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.15'.
	self
		assert: pluginResult testsResult passedCount
		equals: 2
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.16'.
	self
		assert: pluginResult testsResult hasErrors class
		equals: False
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.17'.
	self
		assert: pluginResult testsResult hasErrors
		equals: false
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.18'.
	self
		assert: pluginResult testsResult expectedDefectCount class
		equals: SmallInteger
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.19'.
	self
		assert: pluginResult testsResult expectedDefectCount
		equals: 0
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.20'.
	self
		assert: pluginResult testsResult unexpectedFailureCount class
		equals: SmallInteger
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.21'.
	self
		assert: pluginResult testsResult unexpectedFailureCount
		equals: 0
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.22'.
	self
		assert: pluginResult testsResult errorCount class
		equals: SmallInteger
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.23'.
	self
		assert: pluginResult testsResult errorCount
		equals: 0
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.24'.
	self
		assert: pluginResult testsResult unexpectedErrorCount class
		equals: SmallInteger
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.25'.
	self
		assert: pluginResult testsResult unexpectedErrorCount
		equals: 0
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.26'.
	self
		assert: pluginResult testsResult expectedPassCount class
		equals: SmallInteger
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.27'.
	self
		assert: pluginResult testsResult expectedPassCount
		equals: 2
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.28'.
	self
		assert: pluginResult summarizeInfo class
		equals: ByteString
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.29'.
	self
		assert: pluginResult summarizeInfo
		equals:
			'2 passed
0 failures
0 errors
0 skipped'
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.30'.
	self
		assert: pluginResult buildTreeForUI class
		equals: DTTreeNode
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.31'.
	self
		assert: pluginResult buildTreeForUI name class
		equals: UndefinedObject
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.32'.
	self
		assert: pluginResult buildTreeForUI name
		equals: nil
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.33'.
	self
		assert: pluginResult buildTreeForUIByClasses class
		equals: DTTreeNode
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.34'.
	self
		assert: pluginResult buildTreeForUIByClasses name class
		equals: UndefinedObject
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.35'.
	self
		assert: pluginResult buildTreeForUIByClasses name
		equals: nil
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.36'.
	self
		assert: pluginResult color class
		equals: Color
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.37'.
	self
		assert: pluginResult color hsvSaturation class
		equals: SmallFloat64
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.38'.
	self
		assert: pluginResult color hsvSaturation
		equals: 0.9394261424017003
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.39'.
	self
		assert: pluginResult color red class
		equals: SmallFloat64
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.40'.
	self
		assert: pluginResult color red
		equals: 0.05571847507331378
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.41'.
	self
		assert: pluginResult color alpha class
		equals: SmallFloat64
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.42'.
	self
		assert: pluginResult color alpha
		equals: 1.0
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.43'.
	self
		assert: pluginResult color brightness class
		equals: SmallFloat64
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.44'.
	self
		assert: pluginResult color brightness
		equals: 0.9198435972629521
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.45'.
	self
		assert: pluginResult color hue class
		equals: SmallFloat64
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.46'.
	self
		assert: pluginResult color hue
		equals: 120.0
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.47'.
	self
		assert: pluginResult color green class
		equals: SmallFloat64
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.48'.
	self
		assert: pluginResult color green
		equals: 0.9198435972629521
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.49'.
	self
		assert: pluginResult color chroma class
		equals: SmallFloat64
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.50'.
	self
		assert: pluginResult color chroma
		equals: 0.8641251221896383
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.51'.
	self
		assert: pluginResult color lightness class
		equals: SmallFloat64
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.52'.
	self
		assert: pluginResult color lightness
		equals: 0.48778103616813295
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.53'.
	self
		assert: pluginResult color hslSaturation class
		equals: SmallFloat64
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.54'.
	self
		assert: pluginResult color hslSaturation
		equals: 0.8857715430861723
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.55'.
	self
		assert: pluginResult color saturation class
		equals: SmallFloat64
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.56'.
	self
		assert: pluginResult color saturation
		equals: 0.9394261424017003
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.57'.
	self
		assert: pluginResult color luminance class
		equals: SmallFloat64
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.58'.
	self
		assert: pluginResult color luminance
		equals: 0.5629599217986315
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.59'.
	self
		assert: pluginResult color blue class
		equals: SmallFloat64
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.60'.
	self
		assert: pluginResult color blue
		equals: 0.05571847507331378
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.61'.
	self
		assert: pluginResult buildTreeForUIByClassesAndProtocol class
		equals: DTTreeNode
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.62'.
	self
		assert: pluginResult buildTreeForUIByClassesAndProtocol name class
		equals: UndefinedObject
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.63'.
	self
		assert: pluginResult buildTreeForUIByClassesAndProtocol name
		equals: nil
		description: 'testReRunResultIsDTTestRunnerResult_amp:1.64'.
	reRunconf := DTReRunConfiguration new
		previousResult: pluginResult;
		configurationToRun: (DTTestsRunnerConfiguration items: {testToReRun});
		yourself.
	self
		assert: reRunconf class
		equals: DTReRunConfiguration
		description: 'testReRunResultIsDTTestRunnerResult_amp:2.1'.
	self
		assert: reRunconf originalConfiguration class
		equals: UndefinedObject
		description: 'testReRunResultIsDTTestRunnerResult_amp:2.2'.
	self
		assert: reRunconf originalConfiguration
		equals: nil
		description: 'testReRunResultIsDTTestRunnerResult_amp:2.3'.
	self
		assert: reRunconf configurationToRun class
		equals: DTTestsRunnerConfiguration
		description: 'testReRunResultIsDTTestRunnerResult_amp:2.4'.
	self
		assert: reRunconf previousResult class
		equals: DTTestsRunnerResult
		description: 'testReRunResultIsDTTestRunnerResult_amp:2.5'.
	self
		assert: reRunconf previousResult summarizeInfo class
		equals: ByteString
		description: 'testReRunResultIsDTTestRunnerResult_amp:2.6'.
	self
		assert: reRunconf previousResult summarizeInfo
		equals:
			'2 passed
0 failures
0 errors
0 skipped'
		description: 'testReRunResultIsDTTestRunnerResult_amp:2.7'
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestAmpTest >> testRunResultBuildTreeForUI_amp [
	<madeBySmallAmp>
	
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestAmpTest >> testRunResultIsDTTestRunnerResult_amp [
	<madeBySmallAmp>
	
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestAmpTest >> testSelectedPackagesContainTestCases_amp [
	<madeBySmallAmp>
	
]

{ #category : #'as yet unclassified' }
DrTestsTestRunnerTestAmpTest >> testTestResultIsNotEmpty_amp [
	<madeBySmallAmp>
	
]
