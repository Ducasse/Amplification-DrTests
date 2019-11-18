Class {
	#name : #TestAmplificationDrTests,
	#superclass : #AmplificationHelper,
	#category : #TestAmplificationDrTests
}

{ #category : #'as yet unclassified' }
TestAmplificationDrTests >> amplifyAndVisualize [
	<script: 'self new amplifyAndVisualize'>
	| runs |
	ASTHelper uniqueInstance clearTempClasses.
	runs := super amplifyAll.
	Transcript show: (super createMdTable: runs).
	self visualizeAmplification2: runs
]

{ #category : #'as yet unclassified' }
TestAmplificationDrTests >> testTargtsMapping [
"generatedBy: `AmplificationHelper getStringPairsForPackagePrefix: 'DrTest.*'`"
| list |
list := OrderedCollection new.
"list add: DTTestCoverageTest->DTTestCoverage." "Scaled Decimal Problem"
list add: DrTestsTestRunnerUITest->DrTests. "Good!"
list add: DTFilterableListPresenterTest->DTFilterableListPresenter. "Not bad!"
"list add: DrTestsUITest->DrTests." "Internal Error"
list add: DrTestsTestRunnerTest->DTTestsRunner. "Not bad"
"list add: CommentsToTestsTest->CommentTestCase." "Failed"

^ list.
]
