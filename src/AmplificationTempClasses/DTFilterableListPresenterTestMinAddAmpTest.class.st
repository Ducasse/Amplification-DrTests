Class {
	#name : #DTFilterableListPresenterTestMinAddAmpTest,
	#superclass : #TestCase,
	#instVars : [
		'filterableList'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestMinAddAmpTest >> setUp [
	super setUp.
	filterableList := DTFilterableListPresenter new
							items: (1 to: 20);
							displayBlock: #asString;
							yourself.	
]

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestMinAddAmpTest >> testFilterString [
	<madeBySmallAmp>
	filterableList filterTextInput text: 'foo'.
	self assert: filterableList filterString equals: '*foo*'
]

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestMinAddAmpTest >> testFilterString_amp [
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

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestMinAddAmpTest >> testFilterWorks [
	<madeBySmallAmp>
	self assertCollection: filterableList allItems equals: (1 to: 20).
	self assertCollection: filterableList visibleItems equals: (1 to: 20).
	filterableList filterTextInput text: '2'.
	self assertCollection: filterableList allItems equals: (1 to: 20).
	self assertCollection: filterableList visibleItems equals: #(2 12 20)
]

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestMinAddAmpTest >> testLabel [
	<madeBySmallAmp>
	self assert: filterableList label equals: ''.
	filterableList label: 'title'.
	self assert: filterableList label equals: 'title'
]
