Class {
	#name : #DTFilterableListPresenterTestMinAmpTest,
	#superclass : #TestCase,
	#instVars : [
		'filterableList'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestMinAmpTest >> setUp [
	super setUp.
	filterableList := DTFilterableListPresenter new
							items: (1 to: 20);
							displayBlock: #asString;
							yourself.	
]

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestMinAmpTest >> testFilterString_amp [
	<madeBySmallAmp>
	| tmp_NrghujsWzP2 |
	tmp_NrghujsWzP2 := filterableList filterTextInput.
	self assert: filterableList allItems class equals: Interval.
	self assert: filterableList filterString class equals: ByteString.
	self assert: filterableList visibleItems class equals: Interval.
	self assert: filterableList items class equals: Interval.
	self
		assert: filterableList labelPresenter class
		equals: SpLabelPresenter.
	self assert: filterableList label class equals: ByteString.
	self assert: filterableList help class equals: UndefinedObject.
	tmp_NrghujsWzP2 text: 'foo'
]
