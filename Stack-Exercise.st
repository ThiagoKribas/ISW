!classDefinition: #OOStack category: #'Stack-Exercise'!
Object subclass: #OOStack
	instanceVariableNames: 'top'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!
!OOStack commentStamp: '<historical>' prior: 0!
state!


!OOStack methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 21:31:35'!
initialize
	
	top := StackBase new! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 21:59:05'!
isEmpty

	^ top isEmpty.! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 21:56:19'!
pop
	
	|lastItem|
	
	lastItem := self top.
	top := top previous.
	
	^ lastItem! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 21:36:42'!
push: ItemToPush

	top := StackItem with: ItemToPush previous: top! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 22:53:48'!
size

	^top totalSize.! !

!OOStack methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 21:43:50'!
top

	^top content.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStack class' category: #'Stack-Exercise'!
OOStack class
	instanceVariableNames: ''!

!OOStack class methodsFor: 'error descriptions' stamp: 'NR 9/14/2023 08:12:21'!
stackEmptyErrorDescription
	
	^ 'stack is empty!!!!!!'! !

 
!classDefinition: #SentenceFinderByPrefix category: #'Stack-Exercise'!
Object subclass: #SentenceFinderByPrefix
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

 
!classDefinition: #StackComponent category: #'Stack-Exercise'!
Object subclass: #StackComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!StackComponent methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 21:51:53'!
content

	self subclassResponsibility! !

!StackComponent methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 22:00:29'!
isEmpty

	self subclassResponsibility! !

!StackComponent methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 22:57:00'!
previous

	self subclassResponsibility! !

!StackComponent methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 22:55:09'!
totalSize

	self subclassResponsibility! !

 
!classDefinition: #StackBase category: #'Stack-Exercise'!
StackComponent subclass: #StackBase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!StackBase methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 22:58:29'!
content
	
	^ self error: OOStack stackEmptyErrorDescription! !

!StackBase methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 22:01:07'!
isEmpty

	^ true! !

!StackBase methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 22:58:17'!
previous
	
	^ self error: OOStack stackEmptyErrorDescription! !

!StackBase methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 22:55:30'!
totalSize

	^ 0.! !

 
!classDefinition: #StackItem category: #'Stack-Exercise'!
StackComponent subclass: #StackItem
	instanceVariableNames: 'content previous'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!StackItem methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 21:56:51'!
content
	
	^ content! !

!StackItem methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 21:40:53'!
initializeWith: itemContent previous: previousItem

	content := itemContent.
	previous := previousItem.! !

!StackItem methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 22:50:24'!
isEmpty

	^ false! !

!StackItem methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 21:57:34'!
previous
	
	^ previous! !

!StackItem methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 22:56:00'!
totalSize

	^ 1 + previous totalSize! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'StackItem class' category: #'Stack-Exercise'!
StackItem class
	instanceVariableNames: ''!

!StackItem class methodsFor: 'as yet unclassified' stamp: 'cm 9/21/2025 22:51:47'!
with: itemContent previous: previousItem

	^ self new initializeWith: itemContent previous: previousItem! !

 
!classDefinition: #OOStackTest category: #'Stack-Exercise'!
TestCase subclass: #OOStackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:30'!
test01StackShouldBeEmptyWhenCreated

	| stack |
	
	stack := OOStack new.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:29:55'!
test02PushAddElementsToTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'something'.
	
	self deny: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:01'!
test03PopRemovesElementsFromTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'something'.
	stack pop.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:09'!
test04PopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	stack push: pushedObject.
	
	self assert: stack pop = pushedObject! !

!OOStackTest methodsFor: 'test' stamp: 'NR 9/16/2021 17:40:17'!
test05StackBehavesLIFO

	| stack firstPushedObject secondPushedObject |
	
	stack := OOStack new.
	firstPushedObject := 'firstSomething'.
	secondPushedObject := 'secondSomething'.
	
	stack push: firstPushedObject.
	stack push: secondPushedObject.
	
	self assert: stack pop = secondPushedObject.
	self assert: stack pop = firstPushedObject.
	self assert: stack isEmpty 
	! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:20'!
test06TopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: stack top = pushedObject.
	! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:24'!
test07TopDoesNotRemoveObjectFromStack

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: stack size = 1.
	stack top.
	self assert: stack size = 1.
	! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:26'!
test08CanNotPopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:31'!
test09CanNotPopWhenThereAreNoObjectsInTheStackAndTheStackHadObjects

	| stack  |
	
	stack := OOStack new.
	stack push: 'something'.
	stack pop.
	
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:44'!
test10CanNotTopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack top ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

 
!classDefinition: #SentenceFinderByPrefixTest category: #'Stack-Exercise'!
TestCase subclass: #SentenceFinderByPrefixTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!
(Smalltalk at: #qq__ ifAbsentPut: [OrderedCollection new]) add: (#[74 65 99 92 122 108 121 122 99 106 104 116 104 121 112 117 99 75 108 122 114 123 118 119 99 126 112 117 107 118 126 122 61 59 99 126 112 117 107 118 126 122 61 59 17 74 65 99 92 122 108 121 122 99 106 104 116 104 121 112 117 99 75 108 122 114 123 118 119 99 126 112 117 107 118 126 122 61 59 99 126 112 117 107 118 126 122 61 59 99 74 124 112 122 92 117 112 125 108 121 122 112 123 128 52 62 56 60 63 53 112 116 104 110 108 17 94 112 117 58 57 17 56 55 53 55 17 95 61 59 17 86 119 108 117 39 90 116 104 115 115 123 104 115 114 39 74 118 110 98 90 119 124 121 100 39 93 84 39 98 74 118 80 117 123 108 121 119 121 108 123 108 121 87 121 112 116 112 123 112 125 108 122 39 93 84 84 104 114 108 121 53 118 122 106 118 110 52 108 108 116 53 58 60 55 59 100 17 94 112 117 107 118 126 122 17 94 112 117 58 57 39 105 124 112 115 123 39 118 117 39 81 104 117 39 56 58 39 57 55 57 60 39 57 58 65 56 56 65 59 55 39 74 118 116 119 112 115 108 121 65 39 74 115 104 117 110 39 56 64 53 56 53 61 17 74 118 80 117 123 108 121 119 121 108 123 108 121 39 93 84 84 104 114 108 121 53 118 122 106 118 110 52 108 108 116 53 58 60 55 59 39 124 124 112 107 65 39 57 107 63 109 104 105 55 106 52 57 59 55 107 52 59 58 109 106 52 104 62 60 62 52 106 58 109 108 104 58 60 56 61 57 104 63 39 81 104 117 39 56 58 39 57 55 57 60 17 90 123 104 106 114 91 118 89 108 110 112 122 123 108 121 84 104 119 119 112 117 110 74 118 110 112 123 39 93 84 84 104 114 108 121 53 118 122 106 118 110 52 108 108 116 53 58 59 64 63 39 124 124 112 107 65 39 106 108 56 107 59 59 64 106 52 107 106 108 57 52 59 104 61 62 52 63 109 60 106 52 108 107 64 62 106 58 60 109 61 55 58 109 39 81 104 117 39 56 58 39 57 55 57 60 17 93 84 65 39 57 55 57 60 55 56 56 58 57 58 55 63 39 111 123 123 119 122 65 54 54 110 112 123 111 124 105 53 106 118 116 54 86 119 108 117 90 116 104 115 115 123 104 115 114 54 118 119 108 117 122 116 104 115 115 123 104 115 114 52 125 116 39 75 104 123 108 65 39 84 118 117 39 81 104 117 39 56 58 39 56 60 65 55 63 65 57 59 39 57 55 57 60 39 74 118 116 116 112 123 79 104 122 111 65 39 104 106 61 106 62 55 106 39 87 115 124 110 112 117 122 65 39 57 55 57 60 55 56 56 58 57 58 55 63 39 111 123 123 119 122 65 54 54 110 112 123 111 124 105 53 106 118 116 54 86 119 108 117 90 116 104 115 115 123 104 115 114 54 118 119 108 117 122 116 104 115 115 123 104 115 114 52 125 116 17 199 175 63 8 17 56 64 57 53 56 61 63 53 60 61 53 56 17 92 58 59 61 60 52 93 87 85 55 56 53 108 104 53 116 112 115 53 104 121 17 92 58 59 61 60 52 93 87 85 55 56 17 52 52 52 52 52 52 52 52 52 52 17 57 55 57 60 52 55 62 52 56 55 91 56 61 65 58 55 65 56 62 53 58 56 59 64 57 58 52 55 58 65 55 55 17 74 65 99 92 122 108 121 122 99 106 104 116 104 121 112 117 99 75 118 126 117 115 118 104 107 122 99 80 117 110 108 39 56 99 80 90 94 56 52 57 55 57 59 52 56 74 52 87 104 121 106 112 104 115 53 122 123 17 58 57 62 57 58 17 52 52 52 52 52 52 52 52 52 52 17 57 55 57 60 52 55 62 52 56 62 91 56 55 65 60 55 65 55 64 53 61 58 61 63 64 63 52 55 58 65 55 55 17 74 65 99 92 122 108 121 122 99 106 104 116 104 121 112 117 99 75 108 122 114 123 118 119 99 106 99 126 112 117 107 118 126 122 61 59 52 92 122 108 121 77 112 115 108 122 99 77 112 115 108 86 124 123 122 99 80 90 94 56 52 57 55 57 59 52 56 74 52 89 108 106 124 119 108 121 104 123 118 121 118 53 122 123 17 57 60 62 59 58 17 52 52 52 52 52 52 52 52 52 52 17 57 55 57 60 52 55 64 52 55 64 91 57 57 65 60 60 65 56 64 53 59 58 62 57 64 63 52 55 58 65 55 55 17 74 65 99 92 122 108 121 122 99 106 104 116 104 121 112 117 99 75 118 126 117 115 118 104 107 122 99 80 117 110 108 39 56 99 74 118 107 112 110 118 89 108 119 108 123 112 107 118 52 76 113 108 121 106 112 106 112 118 53 122 123 17 62 63 55 58 17 52 52 52 52 52 52 52 52 52 52 17 57 55 57 60 52 55 64 52 57 56 91 57 56 65 56 60 65 59 58 53 63 56 64 56 62 61 52 55 58 65 55 55 17 74 65 99 92 122 108 121 122 99 106 104 116 104 121 112 117 99 75 118 126 117 115 118 104 107 122 99 80 117 110 108 39 56 99 90 123 104 106 114 52 76 127 108 121 106 112 122 108 53 122 123 17 59 61 57 62 17 52 52 52 52 52 52 52 52 52 52 17 17 52 52 52 52 52 52 52 52 52 52 17 52 52 52 52 52 52 52 52 52 52 17 57 55 57 60 52 55 62 52 55 59 91 56 62 65 57 55 65 58 57 53 59 58 58 63 55 62 52 55 58 65 55 55 17 74 65 99 92 122 108 121 122 99 106 104 116 104 121 112 117 99 75 108 122 114 123 118 119 99 126 112 117 107 118 126 122 61 59 99 126 112 117 107 118 126 122 61 59 52 92 122 108 121 77 112 115 108 122 99 77 112 115 108 86 124 123 122 99 57 55 57 60 52 56 74 52 87 104 121 106 112 104 115 52 57 53 122 123 17 55 17 52 52 52 52 52 52 52 52 52 52 17 57 55 57 60 52 55 62 52 55 59 91 57 56 65 60 57 65 58 57 53 60 60 59 63 55 62 52 55 58 65 55 55 17 74 65 99 92 122 108 121 122 99 106 104 116 104 121 112 117 99 75 108 122 114 123 118 119 99 126 112 117 107 118 126 122 61 59 99 126 112 117 107 118 126 122 61 59 52 92 122 108 121 77 112 115 108 122 99 77 112 115 108 86 124 123 122 99 57 55 57 60 52 56 74 52 87 104 121 106 112 104 115 52 57 53 122 123 17 64 56 64 57 17 52 52 52 52 52 52 52 52 52 52 17 57 55 57 60 52 55 64 52 56 55 91 55 55 65 58 55 65 58 61 53 61 56 59 57 64 63 52 55 58 65 55 55 17 74 65 99 92 122 108 121 122 99 106 104 116 104 121 112 117 99 75 108 122 114 123 118 119 99 126 112 117 107 118 126 122 61 59 99 126 112 117 107 118 126 122 61 59 52 92 122 108 121 77 112 115 108 122 99 77 112 115 108 86 124 123 122 99 74 118 107 112 110 118 89 108 119 108 123 112 107 118 52 76 113 108 121 106 112 106 112 118 53 122 123 17 63 56 61 57 17 52 52 52 52 52 52 52 52 52 52 17 57 55 57 60 52 55 64 52 57 56 91 57 58 65 55 55 65 55 55 53 58 64 60 56 62 61 52 55 58 65 55 55 17 74 65 99 92 122 108 121 122 99 106 104 116 104 121 112 117 99 75 108 122 114 123 118 119 99 126 112 117 107 118 126 122 61 59 99 126 112 117 107 118 126 122 61 59 52 92 122 108 121 77 112 115 108 122 99 77 112 115 108 86 124 123 122 99 90 123 104 106 114 52 76 127 108 121 106 112 122 108 53 122 123 17 62 58 59 63 17 52 52 52 52 52 52 52 52 52 52 17 17])!
