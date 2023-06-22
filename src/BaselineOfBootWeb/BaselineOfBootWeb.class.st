"
Baseline for [https://github.com/astares/Boot-Web](https://github.com/astares/Boot-Web)
"
Class {
	#name : #BaselineOfBootWeb,
	#superclass : #BaselineOf,
	#category : #'BaselineOfBootWeb-Base'
}

{ #category : #baselines }
BaselineOfBootWeb >> baseline: spec [

	<baseline>
	spec for: #common do: [
		"Dependencies"
		self
			iniFile: spec;
			seaside: spec.

		"Own packages and groups"
		self bootWeb: spec ]
]

{ #category : #'packages and groups' }
BaselineOfBootWeb >> bootWeb: spec [

	"Packages"
	spec
		package: 'Boot-Web-Core' with: [ spec requires: #('INIFile' 'Seaside3') ];
		package: 'Boot-Web-Core-Tests' with: [ spec requires: #('Boot-Web-Core') ];
		package: 'Boot-Web-UI' with: [ spec requires: #('Boot-Web-Core') ];
		package: 'Boot-Web-UI-Tests' with: [ spec requires: #('Boot-Web-UI') ].

	"Groups"
	spec
		group: 'Core' with: #('Boot-Web-Core');
		group: 'UI' with: #('Boot-Web-UI');
		group: 'Tests' with: #('Boot-Web-Core-Tests' 'Boot-Web-UI-Tests');
		group: 'CI' with: #('Tests');
		group: 'all' with: #('Core' 'Tests');
		group: 'default' with: #('all')
]

{ #category : #dependencies }
BaselineOfBootWeb >> iniFile: spec [

	spec
		baseline: 'INIFile'
		with: [
		spec repository: 'github://astares/Pharo-INIFile:main/src' ]
]

{ #category : #dependencies }
BaselineOfBootWeb >> seaside: spec [

	spec
		baseline: 'Seaside3'
		with: [
		spec repository: 'github://SeasideSt/Seaside:master/repository' ]
]
