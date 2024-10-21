Class {
	#name : 'NeoToThemeWritablePropertyPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'pseudoSelector',
		'featureSelector',
		'pseudoWriter',
		'pseudoReader',
		'featureInput'
	],
	#category : 'ToStyleSheetEditor',
	#package : 'ToStyleSheetEditor'
}

{ #category : 'accessing' }
NeoToThemeWritablePropertyPresenter >> featureInput [

	^ featureInput
]

{ #category : 'accessing' }
NeoToThemeWritablePropertyPresenter >> featureSelector [

	^ featureSelector
]

{ #category : 'initialization' }
NeoToThemeWritablePropertyPresenter >> initialize [

	pseudoSelector := SpRadioButtonPresenter new label: 'Pseudo'; yourself.
	featureSelector := SpRadioButtonPresenter new label: 'Feature'; yourself.
	pseudoReader := SpTextPresenter new.
	pseudoWriter := SpTextPresenter new.
	featureInput := SpTextInputFieldPresenter new.
]

{ #category : 'accessing' }
NeoToThemeWritablePropertyPresenter >> pseudoReader [

	^ pseudoReader
]

{ #category : 'accessing' }
NeoToThemeWritablePropertyPresenter >> pseudoSelector [

	^ pseudoSelector
]

{ #category : 'accessing' }
NeoToThemeWritablePropertyPresenter >> pseudoWriter [

	^ pseudoWriter
]
