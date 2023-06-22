"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestBootWebCore,
	#superclass : #PackageManifest,
	#category : #'Boot-Web-Core-Manifest'
}

{ #category : #'code-critics' }
ManifestBootWebCore class >> ruleBadMessageRule2V1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#'BTIcons class' #iconFor: #true)) #'2023-06-23T00:29:02.243731+02:00') )
]

{ #category : #'code-critics' }
ManifestBootWebCore class >> ruleClassNotReferencedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#BTIcons)) #'2023-06-23T00:23:27.963721+02:00') )
]

{ #category : #'code-critics' }
ManifestBootWebCore class >> ruleLiteralArrayContainsSuspiciousTrueFalseOrNilRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMetaclassDefinition #(#'ManifestBootWebCore class' #ManifestBootWebCore)) #'2023-06-23T00:49:58.266078+02:00') )
]
