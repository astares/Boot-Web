"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestBaselineOfBootWeb,
	#superclass : #PackageManifest,
	#category : #'BaselineOfBootWeb-Manifest'
}

{ #category : #'code-critics' }
ManifestBaselineOfBootWeb class >> ruleClassNotReferencedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#BaselineOfBootWeb)) #'2023-06-23T00:18:08.391136+02:00') )
]
