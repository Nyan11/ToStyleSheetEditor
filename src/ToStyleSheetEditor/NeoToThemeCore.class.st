Class {
	#name : 'NeoToThemeCore',
	#superclass : 'SpPresenter',
	#instVars : [
		'listOfContexts',
		'listOfEvents',
		'listOfProperties',
		'listOfValues',
		'buttonsContexts',
		'buttonsEvents',
		'buttonsProperties',
		'buttonsValues',
		'menuOfContexts',
		'menuOfEvents',
		'toStyleSheetTheme',
		'menuOfProperties'
	],
	#category : 'ToStyleSheetEditor',
	#package : 'ToStyleSheetEditor'
}

{ #category : 'layout' }
NeoToThemeCore >> defaultLayout [

	^ SpPanedLayout newVertical
		  positionOfSlider: 1 / 4;
		  add: (SpBoxLayout newHorizontal
				   spacing: 4;
				   add: buttonsContexts expand: false;
				   add: listOfContexts expand: true;
				   yourself);
		  add: (SpPanedLayout newVertical
				   positionOfSlider: 1 / 3;
				   add: (SpBoxLayout newHorizontal
						    spacing: 4;
						    add: buttonsEvents expand: false;
						    add: listOfEvents expand: true;
						    yourself);
				   add: (SpPanedLayout newVertical
						    add: (SpBoxLayout newHorizontal
								     spacing: 4;
								     add: buttonsProperties expand: false;
								     add: listOfProperties expand: true;
								     yourself);
						    add: (SpBoxLayout newHorizontal
								     spacing: 4;
								     add: buttonsValues expand: false;
								     add: listOfValues expand: true;
								     yourself);
						    yourself);
				   yourself);
		  yourself
]

{ #category : 'initialization' }
NeoToThemeCore >> initializeContexts [

	listOfContexts := SpTreeTablePresenter new
		                  children: [ :aToStyleRule |
			                  aToStyleRule styleRules ];
		                  whenSelectedItemChangedDo: [ :aToStyleRule | self updateSelectedStyleRuleWith: aToStyleRule ];
		                  contextMenu: self menuOfContexts;
		                  expandRoots;
		                  yourself.
	listOfContexts addColumn:
		(SpStringTableColumn title: 'Selector' evaluated: [ :styleRule |
			 styleRule == listOfContexts roots first
				 ifTrue: [ styleRule printString ]
				 ifFalse: [
					 | printer |
					 printer := ToSelectorPrinter new.
					 styleRule selector accept: printer.
					 printer contents ] ]).

	listOfContexts addColumn: (SpStringTableColumn
			 title: 'Nb of listeners'
			 evaluated: [ :styleRule |
				 | size |
				 styleRule == listOfContexts roots first
					 ifTrue: [ '' ]
					 ifFalse: [
						 size := styleRule skinEventListeners size.
						 size = 0
							 ifTrue: [ 'No listeners' ]
							 ifFalse: [ size printString ] ] ]).

	buttonsContexts := NeoToThemeButtonsWidget new
]

{ #category : 'initialization' }
NeoToThemeCore >> initializeEvents [

	listOfEvents := SpTablePresenter new
		                whenSelectedItemChangedDo: [ :aToSkinEvent |  ];
		                contextMenu: self menuOfEvents;
		                yourself.
	listOfEvents addColumn:
		(SpStringTableColumn title: 'EventName' evaluated: [ :eventClass |
			eventClass name  ]).

	buttonsEvents := NeoToThemeButtonsWidget new
]

{ #category : 'initialization' }
NeoToThemeCore >> initializeMenus [

	menuOfContexts := SpMenuPresenter new
		                  addItem: [ :item |
			                  item
				                  icon: (self iconNamed: #smallInspectIt);
				                  name: 'Inspect';
				                  action: [
					                  self listOfContexts selectedItem inspect ];
				                  yourself ];
		                  yourself.
	menuOfProperties := SpMenuPresenter new
		                addItem: [ :item |
			                item
				                icon: (self iconNamed: #smallInspectIt);
				                name: 'Inspect';
				                action: [ self listOfProperties selectedItem inspect ];
				                yourself ];
		                yourself
]

{ #category : 'initialization' }
NeoToThemeCore >> initializePresenters [

	super initializePresenters.
	self initializeMenus.
	self initializeContexts.
	self initializeEvents.
	self initializeProperties.
	listOfValues := SpTablePresenter new.
	buttonsValues := NeoToThemeButtonsWidget new
]

{ #category : 'initialization' }
NeoToThemeCore >> initializeProperties [

	listOfProperties := SpTablePresenter new
		                    whenSelectedItemChangedDo: [ :aToSkinEventListener |  ];
		                    contextMenu: self menuOfProperties;
		                    yourself.
	listOfProperties addColumn: (SpStringTableColumn
			 title: 'Property name'
			 evaluated: [ :aToSkinEventListener | aToSkinEventListener isAction ifTrue: [ aToSkinEventListener action printString ] ifFalse: [ aToSkinEventListener property name ] ]).

	buttonsProperties := NeoToThemeButtonsWidget new
]

{ #category : 'accessing' }
NeoToThemeCore >> listOfContexts [

	^ listOfContexts
]

{ #category : 'accessing' }
NeoToThemeCore >> listOfEvents [

	^ listOfEvents
]

{ #category : 'accessing' }
NeoToThemeCore >> listOfProperties [

	^ listOfProperties
]

{ #category : 'accessing' }
NeoToThemeCore >> listOfValues [

	^ listOfValues
]

{ #category : 'initialization' }
NeoToThemeCore >> menuOfContexts [

	^ menuOfContexts
]

{ #category : 'initialization' }
NeoToThemeCore >> menuOfEvents [

	^ menuOfEvents
]

{ #category : 'initialization' }
NeoToThemeCore >> menuOfProperties [

	^ menuOfProperties
]

{ #category : 'accessing' }
NeoToThemeCore >> toStyleSheetTheme [

	^ toStyleSheetTheme
]

{ #category : 'accessing' }
NeoToThemeCore >> toStyleSheetTheme: aToStyleSheetTheme [

	toStyleSheetTheme := aToStyleSheetTheme.
	self listOfContexts roots: { aToStyleSheetTheme }
]

{ #category : 'as yet unclassified' }
NeoToThemeCore >> updateSelectedStyleRuleWith: aToStyleRule [

	| eventClasses properties |
	self flag: #TODO.
	"reset property list when no style rule are selected."
	"present the list of all possible properties when ToTheme is selected."
	"manage the multi-selection (rules + properties or rules + events or rules + properties + events)"
	
	aToStyleRule ifNil: [
		self listOfEvents items: {  }.
		^ self ].
	aToStyleRule == self toStyleSheetTheme ifTrue: [
		self listOfEvents items: {  }.
		^ self ].
	eventClasses := (aToStyleRule skinEventListeners collect: #eventClass)
		                asSet asArray.
	properties := aToStyleRule skinEventListeners.
	self listOfEvents items: eventClasses.
	self listOfProperties items: properties
]
