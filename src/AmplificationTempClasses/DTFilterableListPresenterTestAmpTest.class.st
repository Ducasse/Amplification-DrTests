Class {
	#name : #DTFilterableListPresenterTestAmpTest,
	#superclass : #TestCase,
	#instVars : [
		'filterableList'
	],
	#classInstVars : [
		'smallamp_logs'
	],
	#category : #AmplificationTempClasses
}

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestAmpTest class >> logs [ ^ smallamp_logs ifNil: [ smallamp_logs:= OrderedCollection new ]  
]

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestAmpTest >> assert: actual equals: expected description: description [ ^ self
		assert: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestAmpTest >> deny: actual equals: expected description: description [ ^ self
		deny: actual = expected
		description: description
]

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestAmpTest >> isLogging [ ^true
]

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestAmpTest >> logFailure: aString [ self class logs add: aString
]

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestAmpTest >> setUp [
	super setUp.
	filterableList := DTFilterableListPresenter new
							items: (1 to: 20);
							displayBlock: #asString;
							yourself.	
]

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestAmpTest >> should: aBlock notTakeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: false
				description: description ]
]

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestAmpTest >> should: aBlock takeMoreThan: aDuration description: description [ ^ aBlock
		valueWithin: aDuration
		onTimeout: [ self
				assert: true
				description: description ]
]

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestAmpTest >> testFilterString_amp [
	<madeBySmallAmp>
	| tmp_NrghujsWzP2 |
	tmp_NrghujsWzP2 := filterableList filterTextInput.
	self
		assert: filterableList class
		equals: DTFilterableListPresenter
		description: 'testFilterString_amp:1.1'.
	self
		assert: filterableList listPresenter class
		equals: SpListPresenter
		description: 'testFilterString_amp:1.2'.
	self
		assert: filterableList listPresenter hasHeaderTitle class
		equals: False
		description: 'testFilterString_amp:1.3'.
	self
		assert: filterableList listPresenter hasHeaderTitle
		equals: false
		description: 'testFilterString_amp:1.4'.
	self
		assert: filterableList listPresenter icons class
		equals: UndefinedObject
		description: 'testFilterString_amp:1.5'.
	self
		assert: filterableList listPresenter icons
		equals: nil
		description: 'testFilterString_amp:1.6'.
	self
		assert: filterableList listPresenter headerTitle class
		equals: UndefinedObject
		description: 'testFilterString_amp:1.7'.
	self
		assert: filterableList listPresenter headerTitle
		equals: nil
		description: 'testFilterString_amp:1.8'.
	self
		assert: filterableList listPresenter hasIcons class
		equals: False
		description: 'testFilterString_amp:1.9'.
	self
		assert: filterableList listPresenter hasIcons
		equals: false
		description: 'testFilterString_amp:1.10'.
	self
		assert: filterableList allItems class
		equals: Interval
		description: 'testFilterString_amp:1.11'.
	self
		assert: filterableList allItems size
		equals: 20
		description: 'testFilterString_amp:1.12'.
	self
		assert: filterableList filterString class
		equals: ByteString
		description: 'testFilterString_amp:1.13'.
	self
		assert: filterableList filterString
		equals: '**'
		description: 'testFilterString_amp:1.14'.
	self
		assert: filterableList visibleItems class
		equals: Interval
		description: 'testFilterString_amp:1.15'.
	self
		assert: filterableList visibleItems size
		equals: 20
		description: 'testFilterString_amp:1.16'.
	self
		assert: filterableList items class
		equals: Interval
		description: 'testFilterString_amp:1.17'.
	self
		assert: filterableList items size
		equals: 20
		description: 'testFilterString_amp:1.18'.
	self
		assert: filterableList filterTextInput class
		equals: SpTextInputFieldPresenter
		description: 'testFilterString_amp:1.19'.
	self
		assert: filterableList filterTextInput maxLength class
		equals: SmallInteger
		description: 'testFilterString_amp:1.20'.
	self
		assert: filterableList filterTextInput maxLength
		equals: 0
		description: 'testFilterString_amp:1.21'.
	self
		assert: filterableList filterTextInput isPassword class
		equals: False
		description: 'testFilterString_amp:1.22'.
	self
		assert: filterableList filterTextInput isPassword
		equals: false
		description: 'testFilterString_amp:1.23'.
	self
		assert: filterableList labelPresenter class
		equals: SpLabelPresenter
		description: 'testFilterString_amp:1.24'.
	self
		assert: filterableList labelPresenter canTakeKeyboardFocus class
		equals: False
		description: 'testFilterString_amp:1.25'.
	self
		assert: filterableList labelPresenter canTakeKeyboardFocus
		equals: false
		description: 'testFilterString_amp:1.26'.
	self
		assert: filterableList label class
		equals: ByteString
		description: 'testFilterString_amp:1.27'.
	self
		assert: filterableList label
		equals: ''
		description: 'testFilterString_amp:1.28'.
	self
		assert: filterableList help class
		equals: UndefinedObject
		description: 'testFilterString_amp:1.29'.
	self
		assert: filterableList help
		equals: nil
		description: 'testFilterString_amp:1.30'.
	self
		assert: tmp_NrghujsWzP2 class
		equals: SpTextInputFieldPresenter
		description: 'testFilterString_amp:1.1'.
	self
		assert: tmp_NrghujsWzP2 maxLength class
		equals: SmallInteger
		description: 'testFilterString_amp:1.2'.
	self
		assert: tmp_NrghujsWzP2 maxLength
		equals: 0
		description: 'testFilterString_amp:1.3'.
	self
		assert: tmp_NrghujsWzP2 isPassword class
		equals: False
		description: 'testFilterString_amp:1.4'.
	self
		assert: tmp_NrghujsWzP2 isPassword
		equals: false
		description: 'testFilterString_amp:1.5'.
	tmp_NrghujsWzP2 text: 'foo'.
	self
		assert: tmp_NrghujsWzP2 class
		equals: SpTextInputFieldPresenter
		description: 'testFilterString_amp:2.1'.
	self
		assert: tmp_NrghujsWzP2 maxLength class
		equals: SmallInteger
		description: 'testFilterString_amp:2.2'.
	self
		assert: tmp_NrghujsWzP2 maxLength
		equals: 0
		description: 'testFilterString_amp:2.3'.
	self
		assert: tmp_NrghujsWzP2 isPassword class
		equals: False
		description: 'testFilterString_amp:2.4'.
	self
		assert: tmp_NrghujsWzP2 isPassword
		equals: false
		description: 'testFilterString_amp:2.5'
]

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestAmpTest >> testFilterWorks_amp [
	<madeBySmallAmp>
	| tmp_tkNSvTH8DK2 |
	tmp_tkNSvTH8DK2 := filterableList filterTextInput.
	self
		assert: filterableList class
		equals: DTFilterableListPresenter
		description: 'testFilterWorks_amp:1.1'.
	self
		assert: filterableList listPresenter class
		equals: SpListPresenter
		description: 'testFilterWorks_amp:1.2'.
	self
		assert: filterableList listPresenter hasHeaderTitle class
		equals: False
		description: 'testFilterWorks_amp:1.3'.
	self
		assert: filterableList listPresenter hasHeaderTitle
		equals: false
		description: 'testFilterWorks_amp:1.4'.
	self
		assert: filterableList listPresenter icons class
		equals: UndefinedObject
		description: 'testFilterWorks_amp:1.5'.
	self
		assert: filterableList listPresenter icons
		equals: nil
		description: 'testFilterWorks_amp:1.6'.
	self
		assert: filterableList listPresenter headerTitle class
		equals: UndefinedObject
		description: 'testFilterWorks_amp:1.7'.
	self
		assert: filterableList listPresenter headerTitle
		equals: nil
		description: 'testFilterWorks_amp:1.8'.
	self
		assert: filterableList listPresenter hasIcons class
		equals: False
		description: 'testFilterWorks_amp:1.9'.
	self
		assert: filterableList listPresenter hasIcons
		equals: false
		description: 'testFilterWorks_amp:1.10'.
	self
		assert: filterableList allItems class
		equals: Interval
		description: 'testFilterWorks_amp:1.11'.
	self
		assert: filterableList allItems size
		equals: 20
		description: 'testFilterWorks_amp:1.12'.
	self
		assert: filterableList filterString class
		equals: ByteString
		description: 'testFilterWorks_amp:1.13'.
	self
		assert: filterableList filterString
		equals: '**'
		description: 'testFilterWorks_amp:1.14'.
	self
		assert: filterableList visibleItems class
		equals: Interval
		description: 'testFilterWorks_amp:1.15'.
	self
		assert: filterableList visibleItems size
		equals: 20
		description: 'testFilterWorks_amp:1.16'.
	self
		assert: filterableList items class
		equals: Interval
		description: 'testFilterWorks_amp:1.17'.
	self
		assert: filterableList items size
		equals: 20
		description: 'testFilterWorks_amp:1.18'.
	self
		assert: filterableList filterTextInput class
		equals: SpTextInputFieldPresenter
		description: 'testFilterWorks_amp:1.19'.
	self
		assert: filterableList filterTextInput maxLength class
		equals: SmallInteger
		description: 'testFilterWorks_amp:1.20'.
	self
		assert: filterableList filterTextInput maxLength
		equals: 0
		description: 'testFilterWorks_amp:1.21'.
	self
		assert: filterableList filterTextInput isPassword class
		equals: False
		description: 'testFilterWorks_amp:1.22'.
	self
		assert: filterableList filterTextInput isPassword
		equals: false
		description: 'testFilterWorks_amp:1.23'.
	self
		assert: filterableList labelPresenter class
		equals: SpLabelPresenter
		description: 'testFilterWorks_amp:1.24'.
	self
		assert: filterableList labelPresenter canTakeKeyboardFocus class
		equals: False
		description: 'testFilterWorks_amp:1.25'.
	self
		assert: filterableList labelPresenter canTakeKeyboardFocus
		equals: false
		description: 'testFilterWorks_amp:1.26'.
	self
		assert: filterableList label class
		equals: ByteString
		description: 'testFilterWorks_amp:1.27'.
	self
		assert: filterableList label
		equals: ''
		description: 'testFilterWorks_amp:1.28'.
	self
		assert: filterableList help class
		equals: UndefinedObject
		description: 'testFilterWorks_amp:1.29'.
	self
		assert: filterableList help
		equals: nil
		description: 'testFilterWorks_amp:1.30'.
	self
		assert: tmp_tkNSvTH8DK2 class
		equals: SpTextInputFieldPresenter
		description: 'testFilterWorks_amp:1.1'.
	self
		assert: tmp_tkNSvTH8DK2 maxLength class
		equals: SmallInteger
		description: 'testFilterWorks_amp:1.2'.
	self
		assert: tmp_tkNSvTH8DK2 maxLength
		equals: 0
		description: 'testFilterWorks_amp:1.3'.
	self
		assert: tmp_tkNSvTH8DK2 isPassword class
		equals: False
		description: 'testFilterWorks_amp:1.4'.
	self
		assert: tmp_tkNSvTH8DK2 isPassword
		equals: false
		description: 'testFilterWorks_amp:1.5'.
	tmp_tkNSvTH8DK2 text: '2'.
	self
		assert: tmp_tkNSvTH8DK2 class
		equals: SpTextInputFieldPresenter
		description: 'testFilterWorks_amp:2.1'.
	self
		assert: tmp_tkNSvTH8DK2 maxLength class
		equals: SmallInteger
		description: 'testFilterWorks_amp:2.2'.
	self
		assert: tmp_tkNSvTH8DK2 maxLength
		equals: 0
		description: 'testFilterWorks_amp:2.3'.
	self
		assert: tmp_tkNSvTH8DK2 isPassword class
		equals: False
		description: 'testFilterWorks_amp:2.4'.
	self
		assert: tmp_tkNSvTH8DK2 isPassword
		equals: false
		description: 'testFilterWorks_amp:2.5'
]

{ #category : #'as yet unclassified' }
DTFilterableListPresenterTestAmpTest >> testLabel_amp [
	<madeBySmallAmp>
	filterableList label: 'title'.
	self
		assert: filterableList class
		equals: DTFilterableListPresenter
		description: 'testLabel_amp:1.1'.
	self
		assert: filterableList listPresenter class
		equals: SpListPresenter
		description: 'testLabel_amp:1.2'.
	self
		assert: filterableList listPresenter hasHeaderTitle class
		equals: False
		description: 'testLabel_amp:1.3'.
	self
		assert: filterableList listPresenter hasHeaderTitle
		equals: false
		description: 'testLabel_amp:1.4'.
	self
		assert: filterableList listPresenter icons class
		equals: UndefinedObject
		description: 'testLabel_amp:1.5'.
	self
		assert: filterableList listPresenter icons
		equals: nil
		description: 'testLabel_amp:1.6'.
	self
		assert: filterableList listPresenter headerTitle class
		equals: UndefinedObject
		description: 'testLabel_amp:1.7'.
	self
		assert: filterableList listPresenter headerTitle
		equals: nil
		description: 'testLabel_amp:1.8'.
	self
		assert: filterableList listPresenter hasIcons class
		equals: False
		description: 'testLabel_amp:1.9'.
	self
		assert: filterableList listPresenter hasIcons
		equals: false
		description: 'testLabel_amp:1.10'.
	self
		assert: filterableList allItems class
		equals: Interval
		description: 'testLabel_amp:1.11'.
	self
		assert: filterableList allItems size
		equals: 20
		description: 'testLabel_amp:1.12'.
	self
		assert: filterableList filterString class
		equals: ByteString
		description: 'testLabel_amp:1.13'.
	self
		assert: filterableList filterString
		equals: '**'
		description: 'testLabel_amp:1.14'.
	self
		assert: filterableList visibleItems class
		equals: Interval
		description: 'testLabel_amp:1.15'.
	self
		assert: filterableList visibleItems size
		equals: 20
		description: 'testLabel_amp:1.16'.
	self
		assert: filterableList items class
		equals: Interval
		description: 'testLabel_amp:1.17'.
	self
		assert: filterableList items size
		equals: 20
		description: 'testLabel_amp:1.18'.
	self
		assert: filterableList filterTextInput class
		equals: SpTextInputFieldPresenter
		description: 'testLabel_amp:1.19'.
	self
		assert: filterableList filterTextInput maxLength class
		equals: SmallInteger
		description: 'testLabel_amp:1.20'.
	self
		assert: filterableList filterTextInput maxLength
		equals: 0
		description: 'testLabel_amp:1.21'.
	self
		assert: filterableList filterTextInput isPassword class
		equals: False
		description: 'testLabel_amp:1.22'.
	self
		assert: filterableList filterTextInput isPassword
		equals: false
		description: 'testLabel_amp:1.23'.
	self
		assert: filterableList labelPresenter class
		equals: SpLabelPresenter
		description: 'testLabel_amp:1.24'.
	self
		assert: filterableList labelPresenter canTakeKeyboardFocus class
		equals: False
		description: 'testLabel_amp:1.25'.
	self
		assert: filterableList labelPresenter canTakeKeyboardFocus
		equals: false
		description: 'testLabel_amp:1.26'.
	self
		assert: filterableList label class
		equals: ByteString
		description: 'testLabel_amp:1.27'.
	self
		assert: filterableList label
		equals: 'title'
		description: 'testLabel_amp:1.28'.
	self
		assert: filterableList help class
		equals: UndefinedObject
		description: 'testLabel_amp:1.29'.
	self
		assert: filterableList help
		equals: nil
		description: 'testLabel_amp:1.30'
]
