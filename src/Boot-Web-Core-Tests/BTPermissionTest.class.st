"
A BTPermissionTest is a test class for testing the behavior of BTPermission
"
Class {
	#name : #BTPermissionTest,
	#superclass : #TestCase,
	#category : #'Boot-Web-Core-Tests-IAM'
}

{ #category : #tests }
BTPermissionTest >> testInstanceCreation [

	self assert: (BTPermission read) name equals: 'READ'
]

{ #category : #tests }
BTPermissionTest >> testReadPermission [

	self assert: (BTPermission read) name equals: 'READ'
]

{ #category : #tests }
BTPermissionTest >> testWritePermission [

	self assert: (BTPermission write) name equals: 'WRITE'
]
