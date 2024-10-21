Class {
	#name : 'NeoToStyleSheetThemeForEditor',
	#superclass : 'ToStyleSheetTheme',
	#instVars : [
		'defaultTokenProperties',
		'technicalTokenProperties'
	],
	#category : 'ToStyleSheetEditor',
	#package : 'ToStyleSheetEditor'
}

{ #category : 'accessing' }
NeoToStyleSheetThemeForEditor class >> defaultTokenProperties [

	^ {  }
]

{ #category : 'initialization' }
NeoToStyleSheetThemeForEditor >> initialize [ 

	super initialize.
	styleSheet := self styleSheetFromEditor.
]

{ #category : 'initialization' }
NeoToStyleSheetThemeForEditor >> styleSheetFromEditor [

	^ ToStyleSheet new
]
