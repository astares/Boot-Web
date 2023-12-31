"
Common superclass for components
"
Class {
	#name : #BTComponent,
	#superclass : #WAComponent,
	#category : #'Boot-Web-UI-Components'
}

{ #category : #'icon handling' }
BTComponent class >> btIcon [

	"Private - Generated method"

	^ Form fromBinaryStream:
		  self btIconContents base64Decoded asByteArray readStream
]

{ #category : #'icon handling' }
BTComponent class >> btIconContents [
	
	^ 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAFo9M/3AAAABGdBTUEAALGPC/xhBQAAAtlJ
REFUOBGFU11I01EU//3n9CEduGY9RL1o6UOoJJTag1KgIGLhg0FlBfahVktLdNVMl4HNMjVB
IRDLRDTtYy+SFUFhUpIia62g7MsVpU4dbVPbx/927t0U6aUL5557zv2dc3/nnP8/hDEmLTi6
GkMk6W7Y5E93PypKNjaClsLllksnPg8wGAybw/xeG5NJ+k2VTMGvnz/tgM87hczMXEhLMfzi
yvXx0xKHS9ySJNQbD8wpmezmFiyWYWyKTXArmN+NusvHEaWJBJgP4hXmn2RcZN+vZXlvue/k
mZR8kylqaTkcdkRGahAblxhh6i2zCVpXjUX4szhDQBfmZm2k51FTfRCMeSAAZ8pqoAzxi0wb
1q8DI6BeXw8meyCVn4pukCSFYL70jMvpULW2248I29Sns60kx88dbQWsXBtdxQFEUqZyvIFg
Kp4vtXot0nfuu7jgbmhTMiYTmSCAMbwY7Ed2zlEBHDE/sBNJH759teLjh1EsLv5GQuI2lGqz
loMURBVdnQ2IiYmDXrcXEeHhqDV2ormpQmRRMNkP3bl62O3fkbeHUlPtY6PPoNUaBEBJRYt6
V6vV0GzdLs4pqemiSQLBJ27qO2tj/mmaxz8i2wM+rkmar+V4yrUxl0RgcBOz4q1YrnTlLQsa
Qb0qXBWqq7xTmZs3XNLXU9fi9q2pCiSgQjl36hL/joQWobytPDg4p4LDtcJMSc1WTU9+yR+z
PqwWs2bUSln2ChYu56zQnBGf9e1btTDdaxVnt2tOaPrCCeMXb4gE5MXI6yc4WZyBT+NmuuRs
PHj8qBvz8w7s2n2IIF5YrS9xoigDZvMgMVmRgI8iaUsKkpN3oLurCbMzP2B5M4RXQwM4Vnhe
lDc9NYHenhakpWUhPj6JfFQ2rWAPeDYf9ucXCyf9r3j3dgr6C02CMndGRWlgrLsZuKfS6NcR
Z8lgMCicM+03QiVlwCPc/9+8zKdUaQoK/wKdV6j053KoywAAAABJRU5ErkJggg=='
]

{ #category : #accessing }
BTComponent class >> initialize [
	ThemeIcons availablePacks first icons at: #wa put: self btIcon
]

{ #category : #testing }
BTComponent class >> isAbstract [

	^ self == BTComponent
]

{ #category : #accessing }
BTComponent class >> systemIconName [
	^ #wa
]

{ #category : #testing }
BTComponent >> isDarkTheme [

	^ self session userInfo ifNil: [ false ] ifNotNil: [:userInfo | userInfo isDarkThemeSet ]
]
