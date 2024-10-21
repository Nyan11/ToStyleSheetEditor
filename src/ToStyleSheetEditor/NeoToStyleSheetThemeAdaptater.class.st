Class {
	#name : 'NeoToStyleSheetThemeAdaptater',
	#superclass : 'Object',
	#instVars : [
		'toStyleSheetTheme',
		'styleSheet'
	],
	#category : 'ToStyleSheetEditor',
	#package : 'ToStyleSheetEditor'
}

{ #category : 'accessing' }
NeoToStyleSheetThemeAdaptater >> defaultTokenProperties [
	self toStyleSheetTheme defaultTokenProperties.
]

{ #category : 'as yet unclassified' }
NeoToStyleSheetThemeAdaptater >> saveAsToStyleSheetOn: aClass [

	self signalErrorIfCannotSaveOn: aClass.
	self saveTokenPropertiesOn: aClass.
	self saveStyleSheetOn: aClass
]

{ #category : 'as yet unclassified' }
NeoToStyleSheetThemeAdaptater >> saveStyleSheetOn: aClass [

	| styleSheetMethod |
	styleSheetMethod := Stash new serialize: self toStyleSheetTheme styleSheet.
	aClass compile:
		('styleSheetFromEditor<r><r><t>^ [<r><1s><r><t>] value.' expandMacrosWith:
			 styleSheetMethod).
	
]

{ #category : 'as yet unclassified' }
NeoToStyleSheetThemeAdaptater >> saveTokenPropertiesOn: aClass [

	| defaultTokenPropertiesMethod |
	defaultTokenPropertiesMethod := Stash new serialize:
		                                self defaultTokenProperties.
	aClass class compile:
		('defaultTokenProperties<r><r><t>^<1s>.' expandMacrosWith:
			 defaultTokenPropertiesMethod)
]

{ #category : 'signalling' }
NeoToStyleSheetThemeAdaptater >> signalErrorIfCannotSaveOn: aClass [

	NeoToStyleSheetThemeForEditor == aClass ifTrue: [
		NeoToStyleSheetThemeEditorCannotSave signal:
			'Cannot save on ToStyleSheetThemeForEditor, create a subclass.' ]
]

{ #category : 'accessing' }
NeoToStyleSheetThemeAdaptater >> toStyleSheetTheme [

	^ toStyleSheetTheme
]

{ #category : 'accessing' }
NeoToStyleSheetThemeAdaptater >> toStyleSheetTheme: anObject [

	toStyleSheetTheme := anObject
]
