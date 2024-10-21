Class {
	#name : 'NeoToThemeEditorTest',
	#superclass : 'TestCase',
	#category : 'ToStyleSheetEditor',
	#package : 'ToStyleSheetEditor'
}

{ #category : 'tests' }
NeoToThemeEditorTest >> testSaveTheme1 [

	| class theme |
	"test the save function of the ToThemeEditor with an empty ToStyleSheet"
	class := NeoToThemeTestSaveClass.
	class cleanUp.
	self assert: class isCleanUp.

	NeoToThemeEditor new
		saveOn: class.
	theme := class new.

	self assert: theme styleRules isEmpty.
	self assert: theme defaultTokenProperties isEmpty
]

{ #category : 'tests' }
NeoToThemeEditorTest >> testSaveTheme2 [

	| class theme |
	"test the save function of the ToThemeEditor with an empty ToStyleSheet"
	class := NeoToThemeTestSaveClass.
	class cleanUp.
	self assert: class isCleanUp.

	NeoToThemeEditor new
		toStyleSheetTheme: class new;
		saveOn: class.
	theme := class new.

	self assert: theme styleRules isEmpty.
	self assert: theme defaultTokenProperties isEmpty
]

{ #category : 'tests' }
NeoToThemeEditorTest >> testSaveTheme3 [

	| class theme |
	"test the save function of the ToThemeEditor with an empty ToStyleSheet"
	class := NeoToThemeTestSaveClass.
	class cleanUp.
	self assert: class isCleanUp.

	NeoToThemeEditor new
		toStyleSheetTheme: ToBeeThemeGenerated new;
		saveOn: class.
	theme := class new.

	self assert: theme styleRules isEmpty.
	self assert: theme defaultTokenProperties isEmpty
]
