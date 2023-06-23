"
The webserver
"
Class {
	#name : #BTWebserver,
	#superclass : #Object,
	#classVars : [
		'DefaultPort'
	],
	#category : #'Boot-Web-Core-Runtime'
}

{ #category : #'accessing - defaults' }
BTWebserver class >> defaultPort [
	"Return the default server port"

	^ DefaultPort ifNil: [ DefaultPort := 8080 ]
]

{ #category : #'accessing - defaults' }
BTWebserver class >> defaultPort: anInteger [
	"Sets the default server port"

	DefaultPort := anInteger
]

{ #category : #utilities }
BTWebserver class >> openWebbrowser [
	<script>

	| baseURL |
	baseURL := 'http://localhost'.
	self defaultPort = 80 ifFalse: [
		baseURL := baseURL , ':' , self defaultPort asString ].
	WebBrowser openOn: baseURL
]

{ #category : #'world menu' }
BTWebserver class >> serverMenuCommandOn: aBuilder [
	<worldMenu>

	(aBuilder item: #Webserver)
		order: 80; 
		icon: (self iconNamed: #server).

	(aBuilder item: #'Start webserver')
		parent: #Webserver;
		icon: (self iconNamed: #serverStart);
		action: [ self start ].

	(aBuilder item: #'Stop webserver')
		parent: #Webserver;
		icon: (self iconNamed: #serverStop);
		action: [ self stop ].

	aBuilder withSeparatorAfter.

	(aBuilder item: #'Browse webserver')
		parent: #Webserver;
		icon: (self iconNamed: #server);
		action: [ self openWebbrowser ]
]

{ #category : #'starting/stopping' }
BTWebserver class >> start [
	"Start the default server"
	<script>

	WAServerAdaptor startOn: self defaultPort
]

{ #category : #'starting/stopping' }
BTWebserver class >> stop [
	"Stop the default server"
	<script>

	WAServerAdaptor stop
]

{ #category : #'accessing - defaults' }
BTWebserver class >> systemIconName [

	^ #server
]
