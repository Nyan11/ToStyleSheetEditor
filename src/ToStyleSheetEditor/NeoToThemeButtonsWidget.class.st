Class {
	#name : 'NeoToThemeButtonsWidget',
	#superclass : 'SpPresenter',
	#instVars : [
		'buttonAdd',
		'buttonRemove',
		'buttonMoveDown',
		'buttonMoveUp',
		'iconPresenter'
	],
	#category : 'ToStyleSheetEditor',
	#package : 'ToStyleSheetEditor'
}

{ #category : 'layout' }
NeoToThemeButtonsWidget >> defaultLayout [

	| buttonsSize |
	buttonsSize := 24.

	^ SpBoxLayout newVertical
		  spacing: 4;
		  add: (SpBoxLayout newHorizontal
				   add: buttonAdd withConstraints: [ :constraints |
					   constraints
						   width: buttonsSize;
						   height: buttonsSize ];
				   add: buttonRemove withConstraints: [ :constraints |
				   constraints
					   width: buttonsSize;
					   height: buttonsSize ];
				   yourself)
		  expand: false;
		  add: iconPresenter expand: true;
		  add: (SpBoxLayout newHorizontal
				   add: buttonMoveUp withConstraints: [ :constraints |
					   constraints
						   width: buttonsSize;
						   height: buttonsSize ];
				   add: buttonMoveDown withConstraints: [ :constraints |
				   constraints
					   width: buttonsSize;
					   height: buttonsSize ];
				   yourself)
		  expand: false;
		  yourself
]

{ #category : 'accessing' }
NeoToThemeButtonsWidget >> iconPresenter [

	^ iconPresenter
]

{ #category : 'accessing' }
NeoToThemeButtonsWidget >> image: aForm [

	self iconPresenter image: aForm
]

{ #category : 'initialization' }
NeoToThemeButtonsWidget >> initializePresenters [ 

	super initializePresenters.
	buttonAdd := SpButtonPresenter new
		             icon: (Smalltalk ui icons iconNamed: #add);
		             yourself.
	buttonRemove := SpButtonPresenter new
		                icon: (Smalltalk ui icons iconNamed: #delete);
		                yourself.
	buttonMoveDown := SpButtonPresenter new
		                  icon: (Smalltalk ui icons iconNamed: #down);
		                  yourself.
	buttonMoveUp := SpButtonPresenter new
		                icon: (Smalltalk ui icons iconNamed: #up);
		                yourself.
	iconPresenter := SpImagePresenter new
]
