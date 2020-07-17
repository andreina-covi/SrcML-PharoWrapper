Class {
	#name : #BaselineOfSrcML,
	#superclass : #BaselineOf,
	#category : #BaselineOfSrcML
}

{ #category : #baselines }
BaselineOfSrcML >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'OSSubprocess'
				with: [ spec
						repository: 'github://pharo-contributions/OSSubprocess:v1.0.0/repository' ].
			spec
				baseline: 'XPath'
				with: [ spec repository: 'github://pharo-contributions/XML-XPath/src' ].
			spec package: 'SrcML' with: [ spec requires: #('XPath' 'OSSubprocess') ] ]
]
