"
Objects that are named
"
Trait {
	#name : #TNamed,
	#instVars : [
		'name'
	],
	#category : #'Boot-Web-Core-Traits'
}

{ #category : #'instance creation' }
TNamed classSide >> named: aString [

	^ (self new)
			initName: aString;
			yourself
]

{ #category : #'private - initialization' }
TNamed >> initName: aString [

	name := aString
]

{ #category : #accessing }
TNamed >> name [

	^ name
]

{ #category : #accessing }
TNamed >> name: anObject [

	name := anObject
]
