"
I can edit a ToStyleSheetTheme.

*main functionality*
I allow user to see the different rules, tokens, and where the theme is saved.

*constructors*
Default, I am initialize with an empty ToStyleSheetTheme.
I have a constructor that take a ToStyleSheetTheme as an argument.
"
Class {
	#name : 'NeoToThemeEditor',
	#superclass : 'Object',
	#instVars : [
		'toStyleSheetTheme'
	],
	#category : 'ToStyleSheetEditor',
	#package : 'ToStyleSheetEditor'
}

{ #category : 'as yet unclassified' }
NeoToThemeEditor class >> toStyleSheetTheme: aToStyleSheetTheme [

	^ self new toStyleSheetTheme: aToStyleSheetTheme; yourself
]

{ #category : 'initialization' }
NeoToThemeEditor >> initialize [

	super initialize.
	toStyleSheetTheme := NeoToStyleSheetThemeForEditor new
]

{ #category : 'as yet unclassified' }
NeoToThemeEditor >> saveOn: aClass [

	^ NeoToStyleSheetThemeAdaptater new toStyleSheetTheme: self toStyleSheetTheme; saveAsToStyleSheetOn: aClass
]

{ #category : 'accessing' }
NeoToThemeEditor >> toStyleSheetTheme [

	^ toStyleSheetTheme
]

{ #category : 'accessing' }
NeoToThemeEditor >> toStyleSheetTheme: anObject [

	toStyleSheetTheme := anObject
]
