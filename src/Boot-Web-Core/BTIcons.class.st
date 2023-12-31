"
Utility class to provide icons
"
Class {
	#name : #BTIcons,
	#superclass : #Object,
	#category : #'Boot-Web-Core-Utilities'
}

{ #category : #'private - accessing' }
BTIcons class >> availableIconNames [
	<sampleInstance>

	^ (self class methods select: [:each | each selector endsWith: self iconPrefix ])
			collect: [:each | each selector allButLast: self iconPrefix size ]
]

{ #category : #'private - accessing' }
BTIcons class >> availableIcons [
	<sampleInstance>

	| iconPack |
	iconPack := self defaultIconPack.
	^ self availableIconNames collect: [:each | iconPack icons at: each asSymbol ]
]

{ #category : #'private - defaults' }
BTIcons class >> defaultIconPack [
	<sampleInstance>

	^ ThemeIcons availablePacks first
]

{ #category : #icons }
BTIcons class >> groupIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAADcklEQVR42oWTe0xbdRTHv7/7
6r0t9FIGslIYDAZbjaibks2ZGQeyMR1Rg0vmFuMMGmM0M8Zk0e2PxUgMEhP/cKbTzUFMiKwh
KiUrqe4VMY5VdOVhMujI2mFLS6GvS1va29t6IdkS/1h2TnL+Ovmc1/cQqNba2kqZTKYOjuMO
x6LR2uDCQnwxFPpifGKiBw8wshra2tpKqiuM87ICJptJwh9cwnwgIPv9flMwGAw9EHDx2+PE
ZKpM60WRTaeSsFh/xdDIOCRJavL5fFdG+rrWpxLxt6BkeCkW/b79o7PT/wNcOnNCqwISWq0W
CSmC0b9cOH/RBdeteXN/99ElURT/VhS5IrLgRzopZeKx+MuHPumz3wM4LMdog6hP8RzNxmMR
+ObuoP/y1I8//TbVbv/62KmS0tJ345El1D5cgwKxCKOXr87evuWpO3rKnid3Wxns7nAKvKYx
GongnxkPbi8ma8zlBl+5sSwsCLxOW6hD86sHAZaH98YYhgcGGz6wOKbuAT48+Ox7daXsV1Ii
BZc3CmLccYml2BONhrlRomY172tC5SOPAQwH95gTFwaGmj7uuXplDdDde6MjFFnu5qe6igUN
DV1xOXJ1h8AwXDJz/UtBWQ6St988AFYsBqFpOGwOjI1Nbuy0Oj2k/xfPnnCSdjBKGELADoNe
h3DhLmgf2gSWoRD3ujA7dBIt26thNm9BJCah94dh26dW54trSzw9MN1D8/oj6chNtO99FJ5g
FpMeGVqtAIoiCC+Pw+u3YEeMxcaqKjhDXkQr6cFlOf1Z5yvnneTzc386c5TQyMl38M7h3fjO
NoNEmgbHMcjSbpCyn5GXZdQmjNhSUIPfA24wj6eQSMiZf71LO8lLRzqHjZueaK1al8UbB57B
ydN/gNdw6qwrEOqtWGeiQag8NNBjf9lxuG6OwG2wIaUqNjSXOEMYjt9Wt3V/V8veF3a3ND/F
nLVeU2enoRRMo2z7BPRFOlCEgpJT8PyG15D2Ethz3yAlJyEFVkbvnpEzFJdsrt785M5QTKmn
WaGksD66tXxPtkFQl6rqa01ztUX1aMhuQ++CBZmVNKKTsT5yvycRzQWvl7atP8eIAkXUjlY1
S6m+S3wadrctk3JJw9HrsffvC1gtqangGrgN/HNEQ1Xms3mSX8mFhQQ/szi7eC2fzs+pObn/
APU1bVpyLK7bAAAAAElFTkSuQmCC'
]

{ #category : #'private - utilities' }
BTIcons class >> iconFor: aSymbol [

	| encoded |
	encoded := self perform: (aSymbol, self iconPrefix) asSymbol.
	^ Form fromBinaryStream:
		  encoded base64Decoded asByteArray readStream
]

{ #category : #'private - defaults' }
BTIcons class >> iconPrefix [

	^ 'IconContents'
]

{ #category : #'private - initialization' }
BTIcons class >> initIcons [

	| iconPack |
	iconPack := self defaultIconPack.
	self availableIconNames do: [:each |
		 iconPack icons at: each asSymbol put: (self iconFor: each) ]
]

{ #category : #'class initialization' }
BTIcons class >> initialize [

	 self initIcons
]

{ #category : #icons }
BTIcons class >> permissionIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAB4klEQVR42p2STUsbYRSFz5tk
Juokgq2SCRQHi91EiC5CfoBFUHca7VIXZitR+iEuumkVtFi7SEBCXVXQ2oKuBP0JutSYERXc
1yQkaSZxkji3bwZx0YxWe9f3POdczmW4Z9LpFO3t7oAxhr6+AbS2tbG/d9hd4lwuR2tr33BV
0jjABuKro6OvoCgK+yegUNDo0+IistksGhpEeGQZvb0vEY/HEQ6HEQgE2L2AyckIJRNJuJtd
EJ0CiAidnS8QCg3jzesZvJt5i8HBfmYJyGQy1OXrhtvthiQ1wSHYTYCul+H3+3mCCQwNhbC6
GsfISIhZJvj4YY6Wlr5AFEXY7fx+AqrVKvSybgLz+TycThGpy1/WJ5yfn1I0GsPKytebkGSm
MAwDBhmo2U5FIlhe/mydQD055p4GNjZ+Yn5+gYsNE1SDNDU2IhaLYnx8DDabrR6gniRI10uo
VKrwer1YX9/E7Ox7011R2vFj8zuCwaB1C6qaoCu9iEr5Gh0dzyG5XNxRYlvb23Swf4Dp6Sl4
PB7rP1DVIyqWinA4BAgOJ3y+rjufrA5Qi61pv3lM4ElLa63zB4lNwMXFGaXSl9xZhFd+BlmW
Hyw2AcnkIXfXIAgCenoCjxLfnqAV0iS5nj5aXNfC/8wf9Z647/Mkr6MAAAAASUVORK5CYII='
]

{ #category : #icons }
BTIcons class >> roleIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAACxklEQVR42qWSa0hTYRjH/+ds
7oaXdCTeUGFimqQujXQRBgWhgpmQFJoSYmZIKUaiEvYhFQmirCSZlFAiNLECqehDapmraH3I
wsA2Q13Oy07LXc+2c05nLgTRMOh5eeDlfZ/n91wJ/KcQf/tQKtOlUqlMLRAI8liW7eK1U6vV
Lv4zQKFQ9AqFwnLfXSKRgOO4WZvNlmowGCxbAniHmMjtQTO9N88TWaocjGl1KDt7FU6ns5mi
qLYtAZ97cg9MrxDD+QdTQAikAOdF54O3MM0tadr7Joo3BQw+GpJLJKKmb1NTIztW+tm4qKAh
RXIaBNJtAG0B4/HCSRnVwQX9pzcFvHuvazfNG7NVKlWOaVaPuXE14uUSJCYmgWM8oCmDxW1d
SAg99tC8DtBaQKYkZxfeyyy5scdMUWAZBiKxGBLCAf1gPXLyyuC2LsFq/FgaU6Lp2zCFk3vJ
+Nq6eoM0vYKQy8PgcrpA0zREogBou0ugTN0FMbeChuee6jcRpQPGjiPLG0rQNGZ+SDunySAd
DNweD980DvwI8UPbg3CnHjp+cnXzuRBHJrDgMMpybPP81SLtGqDruKDp8OXXrXYyBE6LHbwB
oqOjYF3Q49LFCoyEnIA0PnU1IssBbi/j4hcr7uft0sVVwJn9ZFLNhZbJkKxKmBeWICBJ2B0O
BAUFQnPtFO4Iq/jABBje26e+w4vKoq7Urk3hccu+L7Hl3TtDSBlcDidkMhlm9JNYHihCjbkW
DkmE35Dz580sfc+3Pbv+dA3QcVR4pbBtrDk4LB58erBbf2H8bjXMxgncshTCLFP4/T00CF+G
L9VlDDV3fw1QnEHubmhs1tlEcdzo2Cv78ORC4FdvDGziSBDCAL8z46VduicvPKapabhd7fyL
ad0qH0oiqj4ZOd2ijZgWyGMzyeBwJSGShvLLQbN2Ss8sz4xwtH3O18s/xeA3oKg/IFEaTekA
AAAASUVORK5CYII='
]

{ #category : #icons }
BTIcons class >> serverIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAC0UlEQVR4Xo2SbU+SURzG+RS2
hDdufQBtM0e58GHa8o2W3mbWkjbLhzURTTNEHnwowNKG2oM6JUWF2+fHTJ2aJaFCPlAzJygG
OMPM8qF8wqtbXli2rK7t2v7n7Fy/c8520fbk4nKEkZkpIUViKckXSEj9qBEjehNG3kxDILxL
enoyCVdXVwbtMHl7s4hJ4ypsi1uUHbDad2Fz2kGtd2G2bWBIZ0Jz6wvLHtDL69RBIIvlS2hG
FqEbW4FhcgWmuU0YzduYNu9QswOmDw7MWhwUaAe2Tw7M29dxIyGV3Af4+voR3X1mDAwuoLd/
Hl09c9Q8D/34MgVcxYz1O+yft2Ff3sTYWxvKK/oRxU44CGhpe4/Orlm0tk+joWkS6toJ1KhH
oax5jdLyPsgLn0GUrUZMnBTnw64jPj7lIEBNjqK+8R1U5DiU1XqUP9WitGwQfEEJMgRS5D8o
hrJKjampKQhF9+HjG8j9BeBPlCk0qFDqUKbQ4knJSzwsom6Vd1N/lcJgMGBraxvf1jfw5es6
4mJvwfMEk9gHBAaeIeQFXXhcPIDCwl7k5z9HrqwDUkkL2Ox0aLXDWFvbwsLCMmZm7QgJYeNs
UNBPgLu7B1MirUdeXidk0nbkZDdBLKqjXIuIiBS0tXXBal2C0bSEVxoTgoOjQGfQD/YiLU1M
ioQqZ1AoUEOQoYZISCI8PBnVNc2YMFiocpnR1jEM9lUO/lioa9FJZDqvygnYsxNwIQmKikYq
bMGAZgbquh4kcsU4tJUyWYklg6/aBxDhXBQ9UkE3/hGDQzNIThUg5BxbcyjgKFVRHk9uEWSo
nIAwgoukm3eo0CW4uR1DQEAktRdN0v4md4/jTA4n17L3ipjYe2D5ROK0z0VcTuSBL6zElajY
PNq/5OcfQGRlKZHAKaLal4/bPAXkBa3IypZr6HQ6g/Y/8vI6SVRW9qChUYPsnCJNaGgE9/cz
PwCyhvLlWzqQAwAAAABJRU5ErkJggg=='
]

{ #category : #icons }
BTIcons class >> serverStartIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAADR0lEQVR4Xn2T71fTZRyG+S80
4RV56k3Hc6jciTpHICnNOnVYfCWhCZiiCAxGlEbbhCg2TjQdIYlCwWIIU0crDhAiiOA8xL6B
4kFqG7+22QYRHCL5Nbia7ByOnNPpc859zvPmup7nOef+hDw5JzOydQWfaU0qtdYkDjro/9VJ
v2in8lKdVaMtNUkkksiQ/xtr3ygu3yqe6TU8U4+zHjgHM/FwmT5xFMtP3S71GY1JocjT7dgR
GrZF0NH1O+LdBe7en8c+tohzfBXHmB/HhB/n5BpjrkA8fh4GLnB7/0aRm2/aImhpG6LH6qOz
20N7xwQ3ezzYBv/i3vBCAF7CN7PK1NwyA0Muqr69wcmMj7cKmiw22q6P09xip8nyANPVIeob
Bqhv/IXq7zopK2+l4PNG0k5oiBfSSUxM1W0RNDRaMf8wTOOVe9TVi9QY+rhY1UthkQGlUsPZ
c5UYjSbsdgenPikmIkIibMK7JS9G5p0vIfF8Dqll+ZRUmKmouIlef52c3HOINhsrKys8+meZ
2dkFUlKziY19LSiQ7JUIh5vep2SgmNbJFgy/1XC09SgHNXI0xRbSjmvo6uxiIQB7vbPYHX8g
laYSFxcnhGx7altYglmgxl5Ns+tHFlcfMTI3TJ2zluzeLA4pPyLlSCENDddwu2dwOP+kq/tB
4P/pbNwe/UGU7thtGbXOSuaX51hfX9+IdfoW+pESdpdHkpx6hksXjQzdn6TfNo7Z0kumXBUU
PK/YZZKLR5ha9G7Cj+Nf82NxX+E5YziyFCXlFbXYRDc9t0epu9yCUlUaFLycJzEliq9TMfkF
7TPmALyGb9nDhUkN6hE5uy4/TVLyp3xZWoU46KM30FZ5zile3SsNdkCaJdW9eecF0u1vUT+t
3xC4lhx86BQ4OPgKMd/EIktWkZmlJu5dGeHhO9m3T4bscEZQEBoWGpbbeZwi1zF+nq8LvmBl
gq+8uSTciiFNpSUzs4zomCT2RL9HUk4+6oLv2f/GO4rNDhx4+4CQcTXFVTRygralKmqnNMit
hyisLrBqtUYUiguB9p3ldH4N+q+bAxU+bfrPbYzaHyVsj9guPBv5jCB5Kbi6UXtiBIOhnWvm
O3TcsBEfn6B4kvkXxV9YN+ClYBQAAAAASUVORK5CYII='
]

{ #category : #icons }
BTIcons class >> serverStopIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAADQ0lEQVR4Xn2Ta0zTVxiHG+GD
prilxuhGCH5RYrJsxokGvI24DBJmYLBWQDrYZthGwka5VNFkCIFMN7WbFVfhr4ZIVWyV1V28
Z8oGlbXjzrLBWumFiy24xa4rkVKe/R3T2SzZmzx5v5z3OTnn/I7kydq4cbNm2zalQS7PNXT2
2LF22bF02dhVUWVev36TJjo6WiH5v2rrsOP2BBmbmGHUM8uo9xEhRjwz/NjjxNpp43X5dsPD
zaKiohLDBNe/HaSrz0/PwH2GhgPYHTPYhkPYnSKuWe64QgyPzIiyEJ7fHnDlWjthgm8u9/O9
2cvN1jGu3XBx8zu3eIx79A78gc05xfhEkMn7QQbtE1wwWdDVm8IFLSYrV687+fqSjS8u/oLh
fD9nmrtpNloRGm9Rd+wqtfuNFKuOkJVTREqK3BwmONPcTovpZ84Z+zh9tovGUxaEE+0crrvE
+x/s4ZDmGCdPNmGxWNHrz7JuXZLh8XBkZGSM8Nk56qsbaThkouF4G5/rbnFYe4Oaj5ppatIz
PR1kauoBPl+AAweOsGVL6pzgueXLS7Ryhft2TQ0/NdTTUVuLPr+Q/bsE9u37kordJ6g7qiMQ
mMbr9eFyTaIqqSQtLdMgeXbJEsXl3FzsgvCYO//0lswsKlU6du4U2Lu3hpHRSRyu3+nqvUuu
sgiZbJFCok1Lc/eVlTNUVcWvTzAoMlBRwSdrUygvb0Ct/pD+ATed3Q7xZUZ5dauSpUufUUhM
LzyP3+kg6PeL/BnWp/0+Tq/dQJkoKFbtobt3jNY2O+237aSmbiciMiJG8lVcHIGxMUKzof8S
CnF+TQKlZTreK1TTYXWLIbvHxwfrycsvmstAa04OQ0lJuNPTuKtU4s3PY1z5Bo701xhMTkZY
vZmSUh1Z2e/w1o5i4lasJCExmepqYU6weOFCxQ+yRbhiY/GIeJctY1zswyLmp56mMr9KvAOB
l195k00vZSEvLKG49Chv71D9G6IVMllJb3w8/vR0pvLy8GVk0LMmnt0ZmWat1ki5WqDgXQ1l
6uMc/PSiuLvWLZVKwz+SdMGCxOzVLxqyY2MN2atWGaTz5/+9YN68iJhT+isYL7RRUFBqTkjY
oHkYukdzfwGRNFI+0JfMpQAAAABJRU5ErkJggg=='
]

{ #category : #icons }
BTIcons class >> userIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAACi0lEQVR42o2SS0wTURSGT1ML
NaC2tlhUjJHUhRIX4IKEBSuDEV2wZOGjpgsSEha6boC4oG5MXWBSk1IJJKUsKguCCyOhhNKq
SFtSOg2tFKEz0AftTDt9zLSdGWcmMREhxbM5ufee/7vn/udK4J/4ZHjQ0qRSvqiy3L2faFKJ
JdKu8+cajYPvXQE4ISR/Lz6P9d+80HT5OzCUgiIS8APZhbbWq3CYJQ8WfTvXPzh/VWoC3j27
M9KnezqqvnQR8L0QpNA92EEpWPUisI/TbdOuGFITYBnseqIbHZ8CpgQcsQUMsQ3zji/wDUnB
PkHftbkxb01AaLynUdtvykk4WsJlNoHFI7DxdQ3mlyMQiVPX7B4MrQkQggrZtqV1da1cHoVq
FoVkeBOmFkKe4bndrlNNFKKwOmyWyesHGIqEfBKDqH+DHF9Md067sNB/AZIfH3eeqZd7qCwh
ITMkIEg0YU933J6dnc2cCpiYmJCo1Wp9Cxt+e4XdaogFveDHNRCoalPpdHrAZrPN1QQsLS1Z
ZDKZHk9h0KPFocgoYSFAQzJ1CIVCgcMwzGA2m8dOBFit1lvt7e1IqVSCTCYDvb29EAwGwe12
C2Jxj6ZpLhaLddjtdv8xwMzMjL65udlSrVaBYRjo7u4Gh8MhikmSBP4JIJzxXb5ZX183CAM7
ApicnBxRKBSjgpjPIJfLeQMRKJfLQBCE2EGlUgGfz7e8srLyUBjYEYDJZHrOG2jlOA5UKhXE
43FRkM/nRQCO4yIsEomEnU5nn/DvjploNBpf8re/kkqlDUInxWJRbD+bzYoQARiNRtd4X+7z
5fiJ/2BoaEit0Wh0LMs+oijqBu/BWR5SyuVyB3xe5fNrj8eT+lP/G2OHcCCx3kEaAAAAAElF
TkSuQmCC'
]
