Class {
	#name : 'NeoToThemeTestSaveClass',
	#superclass : 'NeoToStyleSheetThemeForEditor',
	#category : 'ToStyleSheetEditor',
	#package : 'ToStyleSheetEditor'
}

{ #category : 'cleanup' }
NeoToThemeTestSaveClass class >> cleanUp [

	self instanceSide compile: 'styleSheetFromEditor<r><r><t>^ [ ToStyleSheet new ] value' expandMacros
]

{ #category : 'as yet unclassified' }
NeoToThemeTestSaveClass class >> defaultTokenProperties [

	^NeoToStyleSheetThemeAdaptater new.
]

{ #category : 'testing' }
NeoToThemeTestSaveClass class >> isCleanUp [

	| method |
	method := self instanceSide
		          compiledMethodAt: #styleSheetFromEditor
		          ifAbsent: [ ^ false ].
	^ method ast source = 'styleSheetFromEditor

	^ [ ToStyleSheet new ] value'
]

{ #category : 'as yet unclassified' }
NeoToThemeTestSaveClass >> styleSheetFromEditor [

	^ [
| topseudoproperty1 topseudoproperty2 tofeatureproperty3 topseudoproperty4 topseudoproperty5 topseudoproperty6 tofeatureproperty7 tofeatureproperty8 tofeatureproperty9 topseudoproperty10 tofeatureproperty11 |
topseudoproperty1 := ToPseudoProperty new.
topseudoproperty2 := ToPseudoProperty new.
tofeatureproperty3 := ToFeatureProperty new.
topseudoproperty4 := ToPseudoProperty new.
topseudoproperty5 := ToPseudoProperty new.
topseudoproperty6 := ToPseudoProperty new.
tofeatureproperty7 := ToFeatureProperty new.
tofeatureproperty8 := ToFeatureProperty new.
tofeatureproperty9 := ToFeatureProperty new.
topseudoproperty10 := ToPseudoProperty new.
tofeatureproperty11 := ToFeatureProperty new.
ToStyleSheet new
   rawWritablePropertyIndex: (ToPropertyIndex new
         addProperty: (topseudoproperty4
               reader: [:e |  e background paint ifNotNil: [:f |  f color ] ifNil: [ Color transparent ] ];
               writer: [:e :v |  e background: v ];
               name: #'background-color';
               yourself);
         addProperty: (tofeatureproperty3
               name: #geometry;
               yourself);
         addProperty: (ToPseudoProperty new
               writer: [:e :v |  e text attributes: {(BlTextForegroundAttribute paint: v)} ];
               name: #'label-text-foreground';
               yourself);
         addProperty: (ToPseudoProperty new
               reader: [:e |  e layout orientation ];
               writer: [:e :v |  e layout orientation: v ];
               name: #'layout-orientation';
               yourself);
         addProperty: (ToFeatureProperty new
               name: #outskirts;
               yourself);
         addProperty: (topseudoproperty5
               reader: [:e |  e constraints ];
               writer: [:e :v |  v value: e constraints ];
               name: #'layout-constraints';
               yourself);
         addProperty: (ToFeatureProperty new
               name: #iconImage;
               yourself);
         addProperty: (ToFeatureProperty new
               name: #label;
               yourself);
         addProperty: (topseudoproperty1
               reader: [:e |  e layout direction ];
               writer: [:e :v |  e layout direction: v ];
               name: #'layout-direction';
               yourself);
         addProperty: (ToFeatureProperty new
               name: #border;
               yourself);
         addProperty: (ToFeatureProperty new
               name: #icon;
               yourself);
         addProperty: (topseudoproperty6
               writer: [:e :v |  e text attributes: v attributes ];
               name: #'text-attributes-with-builder';
               yourself);
         addProperty: (tofeatureproperty11
               name: #background;
               yourself);
         addProperty: (ToFeatureProperty new
               name: #width;
               yourself);
         addProperty: (ToPseudoProperty new
               writer: [:e :v |  e text attributes: {(BlTextBackgroundAttribute paint: v)} ];
               name: #'label-text-background';
               yourself);
         addProperty: (topseudoproperty2
               reader: [:e |  e border ];
               writer: [:e :v |  e border: v build ];
               name: #'border-with-builder';
               yourself);
         addProperty: (tofeatureproperty7
               name: #layout;
               yourself);
         addProperty: (ToFeatureProperty new
               name: #padding;
               yourself);
         addProperty: (ToFeatureProperty new
               name: #innerImage;
               yourself);
         addProperty: (ToFeatureProperty new
               name: #text;
               yourself);
         addProperty: (ToFeatureProperty new
               name: #justified;
               yourself);
         addProperty: (ToFeatureProperty new
               name: #margin;
               yourself);
         addProperty: (ToPseudoProperty new
               reader: [:e |  e layout interspace ];
               writer: [:e :v |  e layout interspace: v ];
               name: #'layout-interspace';
               yourself);
         addProperty: (tofeatureproperty8
               name: #height;
               yourself);
         addProperty: (topseudoproperty10
               writer: [:e :v |  e label ifNotNil: [ e label text attributes: {(BlTextForegroundAttribute paint: v)} ] ];
               name: #'button-label-text-foreground';
               yourself);
         addProperty: (ToPseudoProperty new
               writer: [:e :v |  e withInnerFormDo: [:form |  e innerImage: (form collectColors: [:color |  v alpha: color alpha ]) ] ifNone: [  ] ];
               name: #'image-inner-form-color';
               yourself);
         addProperty: (tofeatureproperty9
               name: #mouseCursor;
               yourself);
         addProperty: (ToFeatureProperty new
               name: #size;
               yourself);
         yourself);
   script: (ToStyleScript new
         addStyleRule: (ToStyleRule new
               selector: (ToTypeSelector new
                     type: ToLabeledIcon;
                     yourself);
               styleRules: {(ToStyleRule new
                     selector: (ToParentSelector new
                           depth: 1;
                           left: (ToParentSelector new
                                 depth: 1;
                                 left: ToUniversalSelector new;
                                 right: (ToTypeSelector new
                                       type: ToButton;
                                       yourself);
                                 yourself);
                           right: (ToStampSelector new
                                 addAllStamps: {#'icon-first'};
                                 yourself);
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty1;
                           value: [:e |  BlLayoutDirection leftToRight ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToParentSelector new
                           depth: 1;
                           left: (ToParentSelector new
                                 depth: 1;
                                 left: ToUniversalSelector new;
                                 right: (ToTypeSelector new
                                       type: ToButton;
                                       yourself);
                                 yourself);
                           right: (ToStampSelector new
                                 addAllStamps: {#'label-first'};
                                 yourself);
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty1;
                           value: [:e |  BlLayoutDirection rightToLeft ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself)};
               skinEventListeners: {(ToPropertyWriter new
                     property: tofeatureproperty7;
                     value: [:e |  BlLinearLayout horizontal ];
                     eventClass: ToInstallSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: topseudoproperty5;
                     value: [:e |  [:c |  c horizontal fitContent.
                        c vertical fitContent.
                        c linear vertical alignCenter.
                        c linear horizontal alignCenter ] ];
                     eventClass: ToInstallSkinEvent;
                     yourself)};
               yourself);
         addStyleRule: (ToStyleRule new
               selector: (ToTypeSelector new
                     type: ToLabel;
                     yourself);
               styleRules: {(ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#H1};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty6;
                           value: [:e |  e textAttributesBuilder
                                 defaultFontSize: (e valueOfTokenNamed: #'font-size-H1');
                                 lineSpacing: (e valueOfTokenNamed: #'line-height-H1');
                                 yourself ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#H2};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty6;
                           value: [:e |  e textAttributesBuilder
                                 defaultFontSize: (e valueOfTokenNamed: #'font-size-H2');
                                 lineSpacing: (e valueOfTokenNamed: #'line-height-H2');
                                 yourself ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#H3};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty6;
                           value: [:e |  e textAttributesBuilder
                                 defaultFontSize: (e valueOfTokenNamed: #'font-size-H3');
                                 lineSpacing: (e valueOfTokenNamed: #'line-height-H3');
                                 yourself ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#H4};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty6;
                           value: [:e |  e textAttributesBuilder
                                 defaultFontSize: (e valueOfTokenNamed: #'font-size-H4');
                                 lineSpacing: (e valueOfTokenNamed: #'line-height-H4');
                                 yourself ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#H5};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty6;
                           value: [:e |  e textAttributesBuilder
                                 defaultFontSize: (e valueOfTokenNamed: #'font-size-H5');
                                 lineSpacing: (e valueOfTokenNamed: #'line-height-H5');
                                 yourself ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#default};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty6;
                           value: [:e |  e textAttributesBuilder
                                 foreground: (e valueOfTokenNamed: #'color-text');
                                 yourself ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#danger};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty6;
                           value: [:e |  e textAttributesBuilder
                                 foreground: (e valueOfTokenNamed: #'color-error');
                                 yourself ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#link};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty6;
                           value: [:e |  e textAttributesBuilder
                                 foreground: (e valueOfTokenNamed: #'color-link');
                                 yourself ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#primary};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty6;
                           value: [:e |  e textAttributesBuilder
                                 foreground: (e valueOfTokenNamed: #'color-text-light-solid');
                                 yourself ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#secondary};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty6;
                           value: [:e |  e textAttributesBuilder
                                 foreground: (e valueOfTokenNamed: #'color-text-secondary');
                                 yourself ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#success};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty6;
                           value: [:e |  e textAttributesBuilder
                                 foreground: (e valueOfTokenNamed: #'color-success');
                                 yourself ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#warning};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty6;
                           value: [:e |  e textAttributesBuilder
                                 foreground: (e valueOfTokenNamed: #'color-warning');
                                 yourself ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself)};
               skinEventListeners: {(ToPropertyWriter new
                     property: topseudoproperty6;
                     value: [:e |  e textAttributesBuilder
                           weight: (e valueOfTokenNamed: #'font-weight-strong');
                           defaultFontName: (e valueOfTokenNamed: #'font-family-code');
                           defaultFontSize: (e valueOfTokenNamed: #'font-size');
                           lineSpacing: (e valueOfTokenNamed: #'line-height');
                           yourself ];
                     eventClass: ToInstallSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: topseudoproperty6;
                     value: [:e |  e textAttributesBuilder foreground: (e valueOfTokenNamed: #'color-text-disabled') ];
                     eventClass: ToDisabledSkinEvent;
                     yourself)};
               yourself);
         addStyleRule: (ToStyleRule new
               selector: (ToTypeSelector new
                     type: ToButton;
                     yourself);
               styleRules: {(ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#'small-sizing'};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: tofeatureproperty8;
                           value: [:e |  e valueOfTokenNamed: #'control-height-small' ];
                           eventClass: ToInstallSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: tofeatureproperty3;
                           value: [:e |  BlRoundedRectangleGeometry cornerRadius: (e valueOfTokenNamed: 'border-radius-small') ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#'large-sizing'};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: tofeatureproperty8;
                           value: [:e |  e valueOfTokenNamed: #'control-height-large' ];
                           eventClass: ToInstallSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: tofeatureproperty3;
                           value: [:e |  BlRoundedRectangleGeometry cornerRadius: (e valueOfTokenNamed: 'border-radius-large') ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#round};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: tofeatureproperty3;
                           value: [:e |  BlRoundedRectangleGeometry cornerRadius: e requestedHeight ];
                           eventClass: ToInstallSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToOrSelector new
                           left: (ToStampSelector new
                                 addAllStamps: {#text};
                                 yourself);
                           right: (ToStampSelector new
                                 addAllStamps: {#link};
                                 yourself);
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty2;
                           value: [:e |  e borderBuilder paint: Color transparent ];
                           supplement: true;
                           eventClass: ToInstallSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty2;
                           value: [:e |  e borderBuilder paint: Color transparent ];
                           supplement: true;
                           eventClass: ToHoveredSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty2;
                           value: [:e |  e borderBuilder paint: Color transparent ];
                           supplement: true;
                           eventClass: ToLeavedSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty2;
                           value: [:e |  e borderBuilder paint: Color transparent ];
                           supplement: true;
                           eventClass: ToPressedSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#primary};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty2;
                           value: [:e |  e borderBuilder paint: (e valueOfTokenNamed: #'color-primary') ];
                           supplement: true;
                           eventClass: ToInstallSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty4;
                           value: [:e |  e valueOfTokenNamed: #'color-primary' ];
                           eventClass: ToInstallSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty10;
                           value: [:e |  e valueOfTokenNamed: #'color-primary-text' ];
                           eventClass: ToInstallSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty10;
                           value: [:e |  e valueOfTokenNamed: #'color-primary-text' ];
                           eventClass: ToPressedSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty10;
                           value: [:e |  e valueOfTokenNamed: #'color-primary-text' ];
                           eventClass: ToHoveredSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty10;
                           value: [:e |  e valueOfTokenNamed: #'color-primary-text' ];
                           eventClass: ToLeavedSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty2;
                           value: [:e |  e borderBuilder paint: (e valueOfTokenNamed: #'color-primary') ];
                           supplement: true;
                           eventClass: ToLeavedSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty4;
                           value: [:e |  e valueOfTokenNamed: #'color-primary-hover' ];
                           eventClass: ToHoveredSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty4;
                           value: [:e |  e valueOfTokenNamed: #'color-primary' ];
                           eventClass: ToLeavedSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty4;
                           value: [:e |  e valueOfTokenNamed: #'color-primary-pressed' ];
                           eventClass: ToPressedSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#dashed};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty2;
                           value: [:e |  e borderBuilder dashArray: (e valueOfTokenNamed: #'dash-array') ];
                           supplement: true;
                           eventClass: ToInstallSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty2;
                           value: [:e |  e borderBuilder dashArray: (e valueOfTokenNamed: #'dash-array') ];
                           supplement: true;
                           eventClass: ToHoveredSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty2;
                           value: [:e |  e borderBuilder dashArray: (e valueOfTokenNamed: #'dash-array') ];
                           supplement: true;
                           eventClass: ToLeavedSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#text};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty4;
                           value: [:e |  e valueOfTokenNamed: #'color-bg-container' ];
                           eventClass: ToLeavedSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty4;
                           value: [:e |  e valueOfTokenNamed: #'color-bg-text-hover' ];
                           eventClass: ToPressedSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty4;
                           value: [:e |  e valueOfTokenNamed: #'color-bg-text-active' ];
                           eventClass: ToHoveredSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty10;
                           value: [:e |  e valueOfTokenNamed: #'color-text' ];
                           eventClass: ToHoveredSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty10;
                           value: [:e |  e valueOfTokenNamed: #'color-text' ];
                           eventClass: ToPressedSkinEvent;
                           yourself)};
                     yourself) . 
                  (ToStyleRule new
                     selector: (ToStampSelector new
                           addAllStamps: {#link};
                           yourself);
                     skinEventListeners: {(ToPropertyWriter new
                           property: topseudoproperty10;
                           value: [:e |  e valueOfTokenNamed: #'color-primary' ];
                           eventClass: ToInstallSkinEvent;
                           yourself) . 
                        (ToPropertyWriter new
                           property: topseudoproperty10;
                           value: [:e |  e valueOfTokenNamed: #'color-primary' ];
                           eventClass: ToLeavedSkinEvent;
                           yourself)};
                     yourself)};
               skinEventListeners: {(ToPropertyWriter new
                     property: tofeatureproperty9;
                     value: [:e |  e isEnabled ifTrue: [ Cursor webLink ] ifFalse: [  ] ];
                     eventClass: ToHoveredSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: tofeatureproperty9;
                     value: nil;
                     eventClass: ToLeavedSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: topseudoproperty4;
                     value: [:e |  e valueOfTokenNamed: #'color-bg-container-disabled' ];
                     eventClass: ToDisabledSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: topseudoproperty4;
                     value: [:e |  e valueOfTokenNamed: #'color-bg-container' ];
                     eventClass: ToInstallSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: tofeatureproperty8;
                     value: [:e |  e valueOfTokenNamed: #'control-height' ];
                     eventClass: ToInstallSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: tofeatureproperty3;
                     value: [:e |  BlRoundedRectangleGeometry cornerRadius: (e valueOfTokenNamed: 'border-radius') ];
                     eventClass: ToInstallSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: topseudoproperty4;
                     value: [:e |  e valueOfTokenNamed: #'color-bg-container' ];
                     eventClass: ToUninstallSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: tofeatureproperty8;
                     value: [:e |  e valueOfTokenNamed: #'control-height' ];
                     eventClass: ToUninstallSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: tofeatureproperty3;
                     value: [:e |  BlRoundedRectangleGeometry cornerRadius: (e valueOfTokenNamed: 'border-radius') ];
                     eventClass: ToUninstallSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: topseudoproperty2;
                     value: [:e |  e borderBuilder
                           dashArray: #();
                           paint: (e valueOfTokenNamed: #'color-border');
                           width: (e valueOfTokenNamed: #'border-width-primary-selection') ];
                     eventClass: ToInstallSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: topseudoproperty2;
                     value: [:e |  e borderBuilder
                           dashArray: #();
                           paint: (e valueOfTokenNamed: #'color-border');
                           width: (e valueOfTokenNamed: #'border-width-primary-selection') ];
                     supplement: true;
                     eventClass: ToUninstallSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: topseudoproperty10;
                     value: [:e |  e valueOfTokenNamed: #'color-primary-hover' ];
                     eventClass: ToHoveredSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: topseudoproperty2;
                     value: [:e |  e borderBuilder paint: (e valueOfTokenNamed: #'color-primary-hover') ];
                     eventClass: ToHoveredSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: topseudoproperty2;
                     value: [:e |  e borderBuilder
                           dashArray: #();
                           paint: (e valueOfTokenNamed: #'color-border');
                           width: (e valueOfTokenNamed: #'border-width-primary-selection') ];
                     eventClass: ToLeavedSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: topseudoproperty10;
                     value: [:e |  e valueOfTokenNamed: #'color-text' ];
                     eventClass: ToInstallSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: topseudoproperty10;
                     value: [:e |  e valueOfTokenNamed: #'color-text' ];
                     eventClass: ToUninstallSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: topseudoproperty10;
                     value: [:e |  e valueOfTokenNamed: #'color-text' ];
                     eventClass: ToLeavedSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: topseudoproperty2;
                     value: [:e |  e borderBuilder paint: (e valueOfTokenNamed: #'color-primary-pressed') ];
                     eventClass: ToPressedSkinEvent;
                     yourself) . 
                  (ToPropertyWriter new
                     property: topseudoproperty10;
                     value: [:e |  e valueOfTokenNamed: #'color-primary-pressed' ];
                     eventClass: ToPressedSkinEvent;
                     yourself)};
               yourself);
         addStyleRule: (ToStyleRule new
               selector: (ToIdSelector new
                     id: #'space-root';
                     yourself);
               skinEventListeners: {(ToPropertyWriter new
                     property: tofeatureproperty11;
                     value: [:e |  e valueOfTokenNamed: #'background-color' ];
                     eventClass: ToInstallSkinEvent;
                     yourself)};
               yourself);
         yourself);
   yourself
	] value.
]
