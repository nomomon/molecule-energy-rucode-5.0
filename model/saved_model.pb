Ð
ó
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02unknown8½

gcn_conv_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		*#
shared_namegcn_conv_29/kernel
y
&gcn_conv_29/kernel/Read/ReadVariableOpReadVariableOpgcn_conv_29/kernel*
_output_shapes

:		*
dtype0
x
gcn_conv_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*!
shared_namegcn_conv_29/bias
q
$gcn_conv_29/bias/Read/ReadVariableOpReadVariableOpgcn_conv_29/bias*
_output_shapes
:	*
dtype0

gcn_conv_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		*#
shared_namegcn_conv_30/kernel
y
&gcn_conv_30/kernel/Read/ReadVariableOpReadVariableOpgcn_conv_30/kernel*
_output_shapes

:		*
dtype0
x
gcn_conv_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*!
shared_namegcn_conv_30/bias
q
$gcn_conv_30/bias/Read/ReadVariableOpReadVariableOpgcn_conv_30/bias*
_output_shapes
:	*
dtype0

gcn_conv_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		*#
shared_namegcn_conv_31/kernel
y
&gcn_conv_31/kernel/Read/ReadVariableOpReadVariableOpgcn_conv_31/kernel*
_output_shapes

:		*
dtype0
x
gcn_conv_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*!
shared_namegcn_conv_31/bias
q
$gcn_conv_31/bias/Read/ReadVariableOpReadVariableOpgcn_conv_31/bias*
_output_shapes
:	*
dtype0

gcn_conv_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		*#
shared_namegcn_conv_32/kernel
y
&gcn_conv_32/kernel/Read/ReadVariableOpReadVariableOpgcn_conv_32/kernel*
_output_shapes

:		*
dtype0
x
gcn_conv_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*!
shared_namegcn_conv_32/bias
q
$gcn_conv_32/bias/Read/ReadVariableOpReadVariableOpgcn_conv_32/bias*
_output_shapes
:	*
dtype0

gcn_conv_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		*#
shared_namegcn_conv_33/kernel
y
&gcn_conv_33/kernel/Read/ReadVariableOpReadVariableOpgcn_conv_33/kernel*
_output_shapes

:		*
dtype0
x
gcn_conv_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*!
shared_namegcn_conv_33/bias
q
$gcn_conv_33/bias/Read/ReadVariableOpReadVariableOpgcn_conv_33/bias*
_output_shapes
:	*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:	*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:*
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/gcn_conv_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		**
shared_nameAdam/gcn_conv_29/kernel/m

-Adam/gcn_conv_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_29/kernel/m*
_output_shapes

:		*
dtype0

Adam/gcn_conv_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/gcn_conv_29/bias/m

+Adam/gcn_conv_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_29/bias/m*
_output_shapes
:	*
dtype0

Adam/gcn_conv_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		**
shared_nameAdam/gcn_conv_30/kernel/m

-Adam/gcn_conv_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_30/kernel/m*
_output_shapes

:		*
dtype0

Adam/gcn_conv_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/gcn_conv_30/bias/m

+Adam/gcn_conv_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_30/bias/m*
_output_shapes
:	*
dtype0

Adam/gcn_conv_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		**
shared_nameAdam/gcn_conv_31/kernel/m

-Adam/gcn_conv_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_31/kernel/m*
_output_shapes

:		*
dtype0

Adam/gcn_conv_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/gcn_conv_31/bias/m

+Adam/gcn_conv_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_31/bias/m*
_output_shapes
:	*
dtype0

Adam/gcn_conv_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		**
shared_nameAdam/gcn_conv_32/kernel/m

-Adam/gcn_conv_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_32/kernel/m*
_output_shapes

:		*
dtype0

Adam/gcn_conv_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/gcn_conv_32/bias/m

+Adam/gcn_conv_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_32/bias/m*
_output_shapes
:	*
dtype0

Adam/gcn_conv_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		**
shared_nameAdam/gcn_conv_33/kernel/m

-Adam/gcn_conv_33/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_33/kernel/m*
_output_shapes

:		*
dtype0

Adam/gcn_conv_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/gcn_conv_33/bias/m

+Adam/gcn_conv_33/bias/m/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_33/bias/m*
_output_shapes
:	*
dtype0

Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*'
shared_nameAdam/dense_12/kernel/m

*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes

:	*
dtype0

Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_12/bias/m
y
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes
:*
dtype0

Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_13/kernel/m

*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/m
y
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes
:*
dtype0

Adam/gcn_conv_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		**
shared_nameAdam/gcn_conv_29/kernel/v

-Adam/gcn_conv_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_29/kernel/v*
_output_shapes

:		*
dtype0

Adam/gcn_conv_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/gcn_conv_29/bias/v

+Adam/gcn_conv_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_29/bias/v*
_output_shapes
:	*
dtype0

Adam/gcn_conv_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		**
shared_nameAdam/gcn_conv_30/kernel/v

-Adam/gcn_conv_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_30/kernel/v*
_output_shapes

:		*
dtype0

Adam/gcn_conv_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/gcn_conv_30/bias/v

+Adam/gcn_conv_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_30/bias/v*
_output_shapes
:	*
dtype0

Adam/gcn_conv_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		**
shared_nameAdam/gcn_conv_31/kernel/v

-Adam/gcn_conv_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_31/kernel/v*
_output_shapes

:		*
dtype0

Adam/gcn_conv_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/gcn_conv_31/bias/v

+Adam/gcn_conv_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_31/bias/v*
_output_shapes
:	*
dtype0

Adam/gcn_conv_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		**
shared_nameAdam/gcn_conv_32/kernel/v

-Adam/gcn_conv_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_32/kernel/v*
_output_shapes

:		*
dtype0

Adam/gcn_conv_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/gcn_conv_32/bias/v

+Adam/gcn_conv_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_32/bias/v*
_output_shapes
:	*
dtype0

Adam/gcn_conv_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		**
shared_nameAdam/gcn_conv_33/kernel/v

-Adam/gcn_conv_33/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_33/kernel/v*
_output_shapes

:		*
dtype0

Adam/gcn_conv_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/gcn_conv_33/bias/v

+Adam/gcn_conv_33/bias/v/Read/ReadVariableOpReadVariableOpAdam/gcn_conv_33/bias/v*
_output_shapes
:	*
dtype0

Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*'
shared_nameAdam/dense_12/kernel/v

*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes

:	*
dtype0

Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_12/bias/v
y
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes
:*
dtype0

Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_13/kernel/v

*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/v
y
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ÝY
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Y
valueYBY BY

layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
* 
·
kwargs_keys

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
·
kwargs_keys

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses*
·
&kwargs_keys

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses*
·
/kwargs_keys

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses*
·
8kwargs_keys

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses*

A	keras_api* 
¦

Bkernel
Cbias
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses*
¦

Jkernel
Kbias
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses*
Ü
Riter

Sbeta_1

Tbeta_2
	Udecay
Vlearning_ratemmmm'm(m0m1m9m:mBmCmJmKmvvvv'v(v0v1v 9v¡:v¢Bv£Cv¤Jv¥Kv¦*
j
0
1
2
3
'4
(5
06
17
98
:9
B10
C11
J12
K13*
j
0
1
2
3
'4
(5
06
17
98
:9
B10
C11
J12
K13*
* 
°
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

\serving_default* 
* 
b\
VARIABLE_VALUEgcn_conv_29/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEgcn_conv_29/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
b\
VARIABLE_VALUEgcn_conv_30/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEgcn_conv_30/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
* 
* 
* 
b\
VARIABLE_VALUEgcn_conv_31/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEgcn_conv_31/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

'0
(1*

'0
(1*
* 

gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*
* 
* 
* 
b\
VARIABLE_VALUEgcn_conv_32/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEgcn_conv_32/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

00
11*

00
11*
* 

lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*
* 
* 
* 
b\
VARIABLE_VALUEgcn_conv_33/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEgcn_conv_33/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

90
:1*

90
:1*
* 

qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*
* 
* 
* 
_Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_12/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

B0
C1*

B0
C1*
* 

vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_13/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

J0
K1*

J0
K1*
* 

{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
J
0
1
2
3
4
5
6
7
	8

9*

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

total

count
	variables
	keras_api*
M

total

count

_fn_kwargs
	variables
	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

	variables*

VARIABLE_VALUEAdam/gcn_conv_29/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/gcn_conv_29/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/gcn_conv_30/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/gcn_conv_30/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/gcn_conv_31/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/gcn_conv_31/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/gcn_conv_32/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/gcn_conv_32/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/gcn_conv_33/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/gcn_conv_33/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_13/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_13/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/gcn_conv_29/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/gcn_conv_29/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/gcn_conv_30/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/gcn_conv_30/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/gcn_conv_31/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/gcn_conv_31/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/gcn_conv_32/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/gcn_conv_32/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/gcn_conv_33/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/gcn_conv_33/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_13/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_13/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_21Placeholder*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*
dtype0*)
shape :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
§
serving_default_input_22Placeholder*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*2
shape):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ì
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_21serving_default_input_22gcn_conv_29/kernelgcn_conv_29/biasgcn_conv_30/kernelgcn_conv_30/biasgcn_conv_31/kernelgcn_conv_31/biasgcn_conv_32/kernelgcn_conv_32/biasgcn_conv_33/kernelgcn_conv_33/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_3496803
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ñ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&gcn_conv_29/kernel/Read/ReadVariableOp$gcn_conv_29/bias/Read/ReadVariableOp&gcn_conv_30/kernel/Read/ReadVariableOp$gcn_conv_30/bias/Read/ReadVariableOp&gcn_conv_31/kernel/Read/ReadVariableOp$gcn_conv_31/bias/Read/ReadVariableOp&gcn_conv_32/kernel/Read/ReadVariableOp$gcn_conv_32/bias/Read/ReadVariableOp&gcn_conv_33/kernel/Read/ReadVariableOp$gcn_conv_33/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adam/gcn_conv_29/kernel/m/Read/ReadVariableOp+Adam/gcn_conv_29/bias/m/Read/ReadVariableOp-Adam/gcn_conv_30/kernel/m/Read/ReadVariableOp+Adam/gcn_conv_30/bias/m/Read/ReadVariableOp-Adam/gcn_conv_31/kernel/m/Read/ReadVariableOp+Adam/gcn_conv_31/bias/m/Read/ReadVariableOp-Adam/gcn_conv_32/kernel/m/Read/ReadVariableOp+Adam/gcn_conv_32/bias/m/Read/ReadVariableOp-Adam/gcn_conv_33/kernel/m/Read/ReadVariableOp+Adam/gcn_conv_33/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOp-Adam/gcn_conv_29/kernel/v/Read/ReadVariableOp+Adam/gcn_conv_29/bias/v/Read/ReadVariableOp-Adam/gcn_conv_30/kernel/v/Read/ReadVariableOp+Adam/gcn_conv_30/bias/v/Read/ReadVariableOp-Adam/gcn_conv_31/kernel/v/Read/ReadVariableOp+Adam/gcn_conv_31/bias/v/Read/ReadVariableOp-Adam/gcn_conv_32/kernel/v/Read/ReadVariableOp+Adam/gcn_conv_32/bias/v/Read/ReadVariableOp-Adam/gcn_conv_33/kernel/v/Read/ReadVariableOp+Adam/gcn_conv_33/bias/v/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_3497219
ð

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamegcn_conv_29/kernelgcn_conv_29/biasgcn_conv_30/kernelgcn_conv_30/biasgcn_conv_31/kernelgcn_conv_31/biasgcn_conv_32/kernelgcn_conv_32/biasgcn_conv_33/kernelgcn_conv_33/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/gcn_conv_29/kernel/mAdam/gcn_conv_29/bias/mAdam/gcn_conv_30/kernel/mAdam/gcn_conv_30/bias/mAdam/gcn_conv_31/kernel/mAdam/gcn_conv_31/bias/mAdam/gcn_conv_32/kernel/mAdam/gcn_conv_32/bias/mAdam/gcn_conv_33/kernel/mAdam/gcn_conv_33/bias/mAdam/dense_12/kernel/mAdam/dense_12/bias/mAdam/dense_13/kernel/mAdam/dense_13/bias/mAdam/gcn_conv_29/kernel/vAdam/gcn_conv_29/bias/vAdam/gcn_conv_30/kernel/vAdam/gcn_conv_30/bias/vAdam/gcn_conv_31/kernel/vAdam/gcn_conv_31/bias/vAdam/gcn_conv_32/kernel/vAdam/gcn_conv_32/bias/vAdam/gcn_conv_33/kernel/vAdam/gcn_conv_33/bias/vAdam/dense_12/kernel/vAdam/dense_12/bias/vAdam/dense_13/kernel/vAdam/dense_13/bias/v*?
Tin8
624*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_3497382áº

²	
ª
-__inference_gcn_conv_32_layer_call_fn_3496933
inputs_0
inputs_1
unknown:		
	unknown_0:	
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_32_layer_call_and_return_conditional_losses_3495991|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1


H__inference_gcn_conv_29_layer_call_and_return_conditional_losses_3496843
inputs_0
inputs_11
shape_1_readvariableop_resource:		-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢transpose/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   f
ReshapeReshapeinputs_0Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

:		`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿf
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:		h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	
Reshape_2/shapePackunstack:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	v
MatMul_1BatchMatMulV2inputs_1Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
BiasAddBiasAddMatMul_1:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	z
NoOpNoOp^BiasAdd/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
È	
ö
E__inference_dense_13_layer_call_and_return_conditional_losses_3497042

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ö
E__inference_dense_12_layer_call_and_return_conditional_losses_3496046

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs


H__inference_gcn_conv_30_layer_call_and_return_conditional_losses_3495919

inputs
inputs_11
shape_1_readvariableop_resource:		-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

:		`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿf
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:		h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	
Reshape_2/shapePackunstack:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	v
MatMul_1BatchMatMulV2inputs_1Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
BiasAddBiasAddMatMul_1:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	z
NoOpNoOp^BiasAdd/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs:ea
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


H__inference_gcn_conv_29_layer_call_and_return_conditional_losses_3495883

inputs
inputs_11
shape_1_readvariableop_resource:		-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

:		`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿf
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:		h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	
Reshape_2/shapePackunstack:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	v
MatMul_1BatchMatMulV2inputs_1Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
BiasAddBiasAddMatMul_1:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	z
NoOpNoOp^BiasAdd/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs:ea
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è
é
%__inference_signature_wrapper_3496803
input_21
input_22
unknown:		
	unknown_0:	
	unknown_1:		
	unknown_2:	
	unknown_3:		
	unknown_4:	
	unknown_5:		
	unknown_6:	
	unknown_7:		
	unknown_8:	
	unknown_9:	

unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinput_21input_22unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_3495844o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
input_21:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_22


H__inference_gcn_conv_31_layer_call_and_return_conditional_losses_3495955

inputs
inputs_11
shape_1_readvariableop_resource:		-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

:		`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿf
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:		h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	
Reshape_2/shapePackunstack:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	v
MatMul_1BatchMatMulV2inputs_1Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
BiasAddBiasAddMatMul_1:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	z
NoOpNoOp^BiasAdd/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs:ea
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

í
)__inference_model_6_layer_call_fn_3496477
inputs_0
inputs_1
unknown:		
	unknown_0:	
	unknown_1:		
	unknown_2:	
	unknown_3:		
	unknown_4:	
	unknown_5:		
	unknown_6:	
	unknown_7:		
	unknown_8:	
	unknown_9:	

unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_3496254o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
Ø+
ñ
D__inference_model_6_layer_call_and_return_conditional_losses_3496361
input_21
input_22%
gcn_conv_29_3496323:		!
gcn_conv_29_3496325:	%
gcn_conv_30_3496328:		!
gcn_conv_30_3496330:	%
gcn_conv_31_3496333:		!
gcn_conv_31_3496335:	%
gcn_conv_32_3496338:		!
gcn_conv_32_3496340:	%
gcn_conv_33_3496343:		!
gcn_conv_33_3496345:	"
dense_12_3496350:	
dense_12_3496352:"
dense_13_3496355:
dense_13_3496357:
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢#gcn_conv_29/StatefulPartitionedCall¢#gcn_conv_30/StatefulPartitionedCall¢#gcn_conv_31/StatefulPartitionedCall¢#gcn_conv_32/StatefulPartitionedCall¢#gcn_conv_33/StatefulPartitionedCall
#gcn_conv_29/StatefulPartitionedCallStatefulPartitionedCallinput_21input_22gcn_conv_29_3496323gcn_conv_29_3496325*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_29_layer_call_and_return_conditional_losses_3495883À
#gcn_conv_30/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_29/StatefulPartitionedCall:output:0input_22gcn_conv_30_3496328gcn_conv_30_3496330*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_30_layer_call_and_return_conditional_losses_3495919À
#gcn_conv_31/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_30/StatefulPartitionedCall:output:0input_22gcn_conv_31_3496333gcn_conv_31_3496335*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_31_layer_call_and_return_conditional_losses_3495955À
#gcn_conv_32/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_31/StatefulPartitionedCall:output:0input_22gcn_conv_32_3496338gcn_conv_32_3496340*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_32_layer_call_and_return_conditional_losses_3495991À
#gcn_conv_33/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_32/StatefulPartitionedCall:output:0input_22gcn_conv_33_3496343gcn_conv_33_3496345*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_33_layer_call_and_return_conditional_losses_3496027n
,tf.math.reduce_mean_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :¹
tf.math.reduce_mean_6/MeanMean,gcn_conv_33/StatefulPartitionedCall:output:05tf.math.reduce_mean_6/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 dense_12/StatefulPartitionedCallStatefulPartitionedCall#tf.math.reduce_mean_6/Mean:output:0dense_12_3496350dense_12_3496352*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_3496046
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_3496355dense_13_3496357*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_3496062x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall$^gcn_conv_29/StatefulPartitionedCall$^gcn_conv_30/StatefulPartitionedCall$^gcn_conv_31/StatefulPartitionedCall$^gcn_conv_32/StatefulPartitionedCall$^gcn_conv_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2J
#gcn_conv_29/StatefulPartitionedCall#gcn_conv_29/StatefulPartitionedCall2J
#gcn_conv_30/StatefulPartitionedCall#gcn_conv_30/StatefulPartitionedCall2J
#gcn_conv_31/StatefulPartitionedCall#gcn_conv_31/StatefulPartitionedCall2J
#gcn_conv_32/StatefulPartitionedCall#gcn_conv_32/StatefulPartitionedCall2J
#gcn_conv_33/StatefulPartitionedCall#gcn_conv_33/StatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
input_21:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_22
²	
ª
-__inference_gcn_conv_30_layer_call_fn_3496853
inputs_0
inputs_1
unknown:		
	unknown_0:	
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_30_layer_call_and_return_conditional_losses_3495919|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
Ð+
ï
D__inference_model_6_layer_call_and_return_conditional_losses_3496254

inputs
inputs_1%
gcn_conv_29_3496216:		!
gcn_conv_29_3496218:	%
gcn_conv_30_3496221:		!
gcn_conv_30_3496223:	%
gcn_conv_31_3496226:		!
gcn_conv_31_3496228:	%
gcn_conv_32_3496231:		!
gcn_conv_32_3496233:	%
gcn_conv_33_3496236:		!
gcn_conv_33_3496238:	"
dense_12_3496243:	
dense_12_3496245:"
dense_13_3496248:
dense_13_3496250:
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢#gcn_conv_29/StatefulPartitionedCall¢#gcn_conv_30/StatefulPartitionedCall¢#gcn_conv_31/StatefulPartitionedCall¢#gcn_conv_32/StatefulPartitionedCall¢#gcn_conv_33/StatefulPartitionedCall
#gcn_conv_29/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1gcn_conv_29_3496216gcn_conv_29_3496218*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_29_layer_call_and_return_conditional_losses_3495883À
#gcn_conv_30/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_29/StatefulPartitionedCall:output:0inputs_1gcn_conv_30_3496221gcn_conv_30_3496223*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_30_layer_call_and_return_conditional_losses_3495919À
#gcn_conv_31/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_30/StatefulPartitionedCall:output:0inputs_1gcn_conv_31_3496226gcn_conv_31_3496228*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_31_layer_call_and_return_conditional_losses_3495955À
#gcn_conv_32/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_31/StatefulPartitionedCall:output:0inputs_1gcn_conv_32_3496231gcn_conv_32_3496233*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_32_layer_call_and_return_conditional_losses_3495991À
#gcn_conv_33/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_32/StatefulPartitionedCall:output:0inputs_1gcn_conv_33_3496236gcn_conv_33_3496238*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_33_layer_call_and_return_conditional_losses_3496027n
,tf.math.reduce_mean_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :¹
tf.math.reduce_mean_6/MeanMean,gcn_conv_33/StatefulPartitionedCall:output:05tf.math.reduce_mean_6/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 dense_12/StatefulPartitionedCallStatefulPartitionedCall#tf.math.reduce_mean_6/Mean:output:0dense_12_3496243dense_12_3496245*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_3496046
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_3496248dense_13_3496250*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_3496062x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall$^gcn_conv_29/StatefulPartitionedCall$^gcn_conv_30/StatefulPartitionedCall$^gcn_conv_31/StatefulPartitionedCall$^gcn_conv_32/StatefulPartitionedCall$^gcn_conv_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2J
#gcn_conv_29/StatefulPartitionedCall#gcn_conv_29/StatefulPartitionedCall2J
#gcn_conv_30/StatefulPartitionedCall#gcn_conv_30/StatefulPartitionedCall2J
#gcn_conv_31/StatefulPartitionedCall#gcn_conv_31/StatefulPartitionedCall2J
#gcn_conv_32/StatefulPartitionedCall#gcn_conv_32/StatefulPartitionedCall2J
#gcn_conv_33/StatefulPartitionedCall#gcn_conv_33/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs:ea
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


H__inference_gcn_conv_32_layer_call_and_return_conditional_losses_3496963
inputs_0
inputs_11
shape_1_readvariableop_resource:		-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢transpose/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   f
ReshapeReshapeinputs_0Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

:		`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿf
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:		h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	
Reshape_2/shapePackunstack:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	v
MatMul_1BatchMatMulV2inputs_1Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
BiasAddBiasAddMatMul_1:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	z
NoOpNoOp^BiasAdd/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1

í
)__inference_model_6_layer_call_fn_3496100
input_21
input_22
unknown:		
	unknown_0:	
	unknown_1:		
	unknown_2:	
	unknown_3:		
	unknown_4:	
	unknown_5:		
	unknown_6:	
	unknown_7:		
	unknown_8:	
	unknown_9:	

unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_21input_22unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_3496069o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
input_21:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_22


H__inference_gcn_conv_32_layer_call_and_return_conditional_losses_3495991

inputs
inputs_11
shape_1_readvariableop_resource:		-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

:		`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿf
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:		h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	
Reshape_2/shapePackunstack:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	v
MatMul_1BatchMatMulV2inputs_1Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
BiasAddBiasAddMatMul_1:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	z
NoOpNoOp^BiasAdd/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs:ea
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç

*__inference_dense_12_layer_call_fn_3497012

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_3496046o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
²	
ª
-__inference_gcn_conv_29_layer_call_fn_3496813
inputs_0
inputs_1
unknown:		
	unknown_0:	
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_29_layer_call_and_return_conditional_losses_3495883|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
øË
­
#__inference__traced_restore_3497382
file_prefix5
#assignvariableop_gcn_conv_29_kernel:		1
#assignvariableop_1_gcn_conv_29_bias:	7
%assignvariableop_2_gcn_conv_30_kernel:		1
#assignvariableop_3_gcn_conv_30_bias:	7
%assignvariableop_4_gcn_conv_31_kernel:		1
#assignvariableop_5_gcn_conv_31_bias:	7
%assignvariableop_6_gcn_conv_32_kernel:		1
#assignvariableop_7_gcn_conv_32_bias:	7
%assignvariableop_8_gcn_conv_33_kernel:		1
#assignvariableop_9_gcn_conv_33_bias:	5
#assignvariableop_10_dense_12_kernel:	/
!assignvariableop_11_dense_12_bias:5
#assignvariableop_12_dense_13_kernel:/
!assignvariableop_13_dense_13_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: #
assignvariableop_19_total: #
assignvariableop_20_count: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: ?
-assignvariableop_23_adam_gcn_conv_29_kernel_m:		9
+assignvariableop_24_adam_gcn_conv_29_bias_m:	?
-assignvariableop_25_adam_gcn_conv_30_kernel_m:		9
+assignvariableop_26_adam_gcn_conv_30_bias_m:	?
-assignvariableop_27_adam_gcn_conv_31_kernel_m:		9
+assignvariableop_28_adam_gcn_conv_31_bias_m:	?
-assignvariableop_29_adam_gcn_conv_32_kernel_m:		9
+assignvariableop_30_adam_gcn_conv_32_bias_m:	?
-assignvariableop_31_adam_gcn_conv_33_kernel_m:		9
+assignvariableop_32_adam_gcn_conv_33_bias_m:	<
*assignvariableop_33_adam_dense_12_kernel_m:	6
(assignvariableop_34_adam_dense_12_bias_m:<
*assignvariableop_35_adam_dense_13_kernel_m:6
(assignvariableop_36_adam_dense_13_bias_m:?
-assignvariableop_37_adam_gcn_conv_29_kernel_v:		9
+assignvariableop_38_adam_gcn_conv_29_bias_v:	?
-assignvariableop_39_adam_gcn_conv_30_kernel_v:		9
+assignvariableop_40_adam_gcn_conv_30_bias_v:	?
-assignvariableop_41_adam_gcn_conv_31_kernel_v:		9
+assignvariableop_42_adam_gcn_conv_31_bias_v:	?
-assignvariableop_43_adam_gcn_conv_32_kernel_v:		9
+assignvariableop_44_adam_gcn_conv_32_bias_v:	?
-assignvariableop_45_adam_gcn_conv_33_kernel_v:		9
+assignvariableop_46_adam_gcn_conv_33_bias_v:	<
*assignvariableop_47_adam_dense_12_kernel_v:	6
(assignvariableop_48_adam_dense_12_bias_v:<
*assignvariableop_49_adam_dense_13_kernel_v:6
(assignvariableop_50_adam_dense_13_bias_v:
identity_52¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9à
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*
valueüBù4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHØ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¥
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*æ
_output_shapesÓ
Ð::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp#assignvariableop_gcn_conv_29_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp#assignvariableop_1_gcn_conv_29_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp%assignvariableop_2_gcn_conv_30_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp#assignvariableop_3_gcn_conv_30_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp%assignvariableop_4_gcn_conv_31_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp#assignvariableop_5_gcn_conv_31_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_gcn_conv_32_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp#assignvariableop_7_gcn_conv_32_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp%assignvariableop_8_gcn_conv_33_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp#assignvariableop_9_gcn_conv_33_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_12_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_12_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_13_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_13_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp-assignvariableop_23_adam_gcn_conv_29_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_gcn_conv_29_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adam_gcn_conv_30_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_gcn_conv_30_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp-assignvariableop_27_adam_gcn_conv_31_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_gcn_conv_31_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp-assignvariableop_29_adam_gcn_conv_32_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_gcn_conv_32_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp-assignvariableop_31_adam_gcn_conv_33_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_gcn_conv_33_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_12_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_12_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_13_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_13_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp-assignvariableop_37_adam_gcn_conv_29_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_gcn_conv_29_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp-assignvariableop_39_adam_gcn_conv_30_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_gcn_conv_30_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp-assignvariableop_41_adam_gcn_conv_31_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adam_gcn_conv_31_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp-assignvariableop_43_adam_gcn_conv_32_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp+assignvariableop_44_adam_gcn_conv_32_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp-assignvariableop_45_adam_gcn_conv_33_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp+assignvariableop_46_adam_gcn_conv_33_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_12_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_12_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_13_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_13_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ±	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_52IdentityIdentity_51:output:0^NoOp_1*
T0*
_output_shapes
: 	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_52Identity_52:output:0*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ø+
ñ
D__inference_model_6_layer_call_and_return_conditional_losses_3496403
input_21
input_22%
gcn_conv_29_3496365:		!
gcn_conv_29_3496367:	%
gcn_conv_30_3496370:		!
gcn_conv_30_3496372:	%
gcn_conv_31_3496375:		!
gcn_conv_31_3496377:	%
gcn_conv_32_3496380:		!
gcn_conv_32_3496382:	%
gcn_conv_33_3496385:		!
gcn_conv_33_3496387:	"
dense_12_3496392:	
dense_12_3496394:"
dense_13_3496397:
dense_13_3496399:
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢#gcn_conv_29/StatefulPartitionedCall¢#gcn_conv_30/StatefulPartitionedCall¢#gcn_conv_31/StatefulPartitionedCall¢#gcn_conv_32/StatefulPartitionedCall¢#gcn_conv_33/StatefulPartitionedCall
#gcn_conv_29/StatefulPartitionedCallStatefulPartitionedCallinput_21input_22gcn_conv_29_3496365gcn_conv_29_3496367*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_29_layer_call_and_return_conditional_losses_3495883À
#gcn_conv_30/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_29/StatefulPartitionedCall:output:0input_22gcn_conv_30_3496370gcn_conv_30_3496372*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_30_layer_call_and_return_conditional_losses_3495919À
#gcn_conv_31/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_30/StatefulPartitionedCall:output:0input_22gcn_conv_31_3496375gcn_conv_31_3496377*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_31_layer_call_and_return_conditional_losses_3495955À
#gcn_conv_32/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_31/StatefulPartitionedCall:output:0input_22gcn_conv_32_3496380gcn_conv_32_3496382*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_32_layer_call_and_return_conditional_losses_3495991À
#gcn_conv_33/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_32/StatefulPartitionedCall:output:0input_22gcn_conv_33_3496385gcn_conv_33_3496387*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_33_layer_call_and_return_conditional_losses_3496027n
,tf.math.reduce_mean_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :¹
tf.math.reduce_mean_6/MeanMean,gcn_conv_33/StatefulPartitionedCall:output:05tf.math.reduce_mean_6/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 dense_12/StatefulPartitionedCallStatefulPartitionedCall#tf.math.reduce_mean_6/Mean:output:0dense_12_3496392dense_12_3496394*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_3496046
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_3496397dense_13_3496399*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_3496062x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall$^gcn_conv_29/StatefulPartitionedCall$^gcn_conv_30/StatefulPartitionedCall$^gcn_conv_31/StatefulPartitionedCall$^gcn_conv_32/StatefulPartitionedCall$^gcn_conv_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2J
#gcn_conv_29/StatefulPartitionedCall#gcn_conv_29/StatefulPartitionedCall2J
#gcn_conv_30/StatefulPartitionedCall#gcn_conv_30/StatefulPartitionedCall2J
#gcn_conv_31/StatefulPartitionedCall#gcn_conv_31/StatefulPartitionedCall2J
#gcn_conv_32/StatefulPartitionedCall#gcn_conv_32/StatefulPartitionedCall2J
#gcn_conv_33/StatefulPartitionedCall#gcn_conv_33/StatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
input_21:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_22


ö
E__inference_dense_12_layer_call_and_return_conditional_losses_3497023

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
µ¢
û
"__inference__wrapped_model_3495844
input_21
input_22E
3model_6_gcn_conv_29_shape_1_readvariableop_resource:		A
3model_6_gcn_conv_29_biasadd_readvariableop_resource:	E
3model_6_gcn_conv_30_shape_1_readvariableop_resource:		A
3model_6_gcn_conv_30_biasadd_readvariableop_resource:	E
3model_6_gcn_conv_31_shape_1_readvariableop_resource:		A
3model_6_gcn_conv_31_biasadd_readvariableop_resource:	E
3model_6_gcn_conv_32_shape_1_readvariableop_resource:		A
3model_6_gcn_conv_32_biasadd_readvariableop_resource:	E
3model_6_gcn_conv_33_shape_1_readvariableop_resource:		A
3model_6_gcn_conv_33_biasadd_readvariableop_resource:	A
/model_6_dense_12_matmul_readvariableop_resource:	>
0model_6_dense_12_biasadd_readvariableop_resource:A
/model_6_dense_13_matmul_readvariableop_resource:>
0model_6_dense_13_biasadd_readvariableop_resource:
identity¢'model_6/dense_12/BiasAdd/ReadVariableOp¢&model_6/dense_12/MatMul/ReadVariableOp¢'model_6/dense_13/BiasAdd/ReadVariableOp¢&model_6/dense_13/MatMul/ReadVariableOp¢*model_6/gcn_conv_29/BiasAdd/ReadVariableOp¢,model_6/gcn_conv_29/transpose/ReadVariableOp¢*model_6/gcn_conv_30/BiasAdd/ReadVariableOp¢,model_6/gcn_conv_30/transpose/ReadVariableOp¢*model_6/gcn_conv_31/BiasAdd/ReadVariableOp¢,model_6/gcn_conv_31/transpose/ReadVariableOp¢*model_6/gcn_conv_32/BiasAdd/ReadVariableOp¢,model_6/gcn_conv_32/transpose/ReadVariableOp¢*model_6/gcn_conv_33/BiasAdd/ReadVariableOp¢,model_6/gcn_conv_33/transpose/ReadVariableOpQ
model_6/gcn_conv_29/ShapeShapeinput_21*
T0*
_output_shapes
:y
model_6/gcn_conv_29/unstackUnpack"model_6/gcn_conv_29/Shape:output:0*
T0*
_output_shapes
: : : *	
num
*model_6/gcn_conv_29/Shape_1/ReadVariableOpReadVariableOp3model_6_gcn_conv_29_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0l
model_6/gcn_conv_29/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   {
model_6/gcn_conv_29/unstack_1Unpack$model_6/gcn_conv_29/Shape_1:output:0*
T0*
_output_shapes
: : *	
numr
!model_6/gcn_conv_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   
model_6/gcn_conv_29/ReshapeReshapeinput_21*model_6/gcn_conv_29/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	 
,model_6/gcn_conv_29/transpose/ReadVariableOpReadVariableOp3model_6_gcn_conv_29_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0s
"model_6/gcn_conv_29/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       ¶
model_6/gcn_conv_29/transpose	Transpose4model_6/gcn_conv_29/transpose/ReadVariableOp:value:0+model_6/gcn_conv_29/transpose/perm:output:0*
T0*
_output_shapes

:		t
#model_6/gcn_conv_29/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿ¢
model_6/gcn_conv_29/Reshape_1Reshape!model_6/gcn_conv_29/transpose:y:0,model_6/gcn_conv_29/Reshape_1/shape:output:0*
T0*
_output_shapes

:		¤
model_6/gcn_conv_29/MatMulMatMul$model_6/gcn_conv_29/Reshape:output:0&model_6/gcn_conv_29/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	g
%model_6/gcn_conv_29/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	Õ
#model_6/gcn_conv_29/Reshape_2/shapePack$model_6/gcn_conv_29/unstack:output:0$model_6/gcn_conv_29/unstack:output:1.model_6/gcn_conv_29/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:»
model_6/gcn_conv_29/Reshape_2Reshape$model_6/gcn_conv_29/MatMul:product:0,model_6/gcn_conv_29/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
model_6/gcn_conv_29/MatMul_1BatchMatMulV2input_22&model_6/gcn_conv_29/Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
*model_6/gcn_conv_29/BiasAdd/ReadVariableOpReadVariableOp3model_6_gcn_conv_29_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0À
model_6/gcn_conv_29/BiasAddBiasAdd%model_6/gcn_conv_29/MatMul_1:output:02model_6/gcn_conv_29/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
model_6/gcn_conv_29/ReluRelu$model_6/gcn_conv_29/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	o
model_6/gcn_conv_30/ShapeShape&model_6/gcn_conv_29/Relu:activations:0*
T0*
_output_shapes
:y
model_6/gcn_conv_30/unstackUnpack"model_6/gcn_conv_30/Shape:output:0*
T0*
_output_shapes
: : : *	
num
*model_6/gcn_conv_30/Shape_1/ReadVariableOpReadVariableOp3model_6_gcn_conv_30_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0l
model_6/gcn_conv_30/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   {
model_6/gcn_conv_30/unstack_1Unpack$model_6/gcn_conv_30/Shape_1:output:0*
T0*
_output_shapes
: : *	
numr
!model_6/gcn_conv_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   ¬
model_6/gcn_conv_30/ReshapeReshape&model_6/gcn_conv_29/Relu:activations:0*model_6/gcn_conv_30/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	 
,model_6/gcn_conv_30/transpose/ReadVariableOpReadVariableOp3model_6_gcn_conv_30_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0s
"model_6/gcn_conv_30/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       ¶
model_6/gcn_conv_30/transpose	Transpose4model_6/gcn_conv_30/transpose/ReadVariableOp:value:0+model_6/gcn_conv_30/transpose/perm:output:0*
T0*
_output_shapes

:		t
#model_6/gcn_conv_30/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿ¢
model_6/gcn_conv_30/Reshape_1Reshape!model_6/gcn_conv_30/transpose:y:0,model_6/gcn_conv_30/Reshape_1/shape:output:0*
T0*
_output_shapes

:		¤
model_6/gcn_conv_30/MatMulMatMul$model_6/gcn_conv_30/Reshape:output:0&model_6/gcn_conv_30/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	g
%model_6/gcn_conv_30/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	Õ
#model_6/gcn_conv_30/Reshape_2/shapePack$model_6/gcn_conv_30/unstack:output:0$model_6/gcn_conv_30/unstack:output:1.model_6/gcn_conv_30/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:»
model_6/gcn_conv_30/Reshape_2Reshape$model_6/gcn_conv_30/MatMul:product:0,model_6/gcn_conv_30/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
model_6/gcn_conv_30/MatMul_1BatchMatMulV2input_22&model_6/gcn_conv_30/Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
*model_6/gcn_conv_30/BiasAdd/ReadVariableOpReadVariableOp3model_6_gcn_conv_30_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0À
model_6/gcn_conv_30/BiasAddBiasAdd%model_6/gcn_conv_30/MatMul_1:output:02model_6/gcn_conv_30/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
model_6/gcn_conv_30/ReluRelu$model_6/gcn_conv_30/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	o
model_6/gcn_conv_31/ShapeShape&model_6/gcn_conv_30/Relu:activations:0*
T0*
_output_shapes
:y
model_6/gcn_conv_31/unstackUnpack"model_6/gcn_conv_31/Shape:output:0*
T0*
_output_shapes
: : : *	
num
*model_6/gcn_conv_31/Shape_1/ReadVariableOpReadVariableOp3model_6_gcn_conv_31_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0l
model_6/gcn_conv_31/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   {
model_6/gcn_conv_31/unstack_1Unpack$model_6/gcn_conv_31/Shape_1:output:0*
T0*
_output_shapes
: : *	
numr
!model_6/gcn_conv_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   ¬
model_6/gcn_conv_31/ReshapeReshape&model_6/gcn_conv_30/Relu:activations:0*model_6/gcn_conv_31/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	 
,model_6/gcn_conv_31/transpose/ReadVariableOpReadVariableOp3model_6_gcn_conv_31_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0s
"model_6/gcn_conv_31/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       ¶
model_6/gcn_conv_31/transpose	Transpose4model_6/gcn_conv_31/transpose/ReadVariableOp:value:0+model_6/gcn_conv_31/transpose/perm:output:0*
T0*
_output_shapes

:		t
#model_6/gcn_conv_31/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿ¢
model_6/gcn_conv_31/Reshape_1Reshape!model_6/gcn_conv_31/transpose:y:0,model_6/gcn_conv_31/Reshape_1/shape:output:0*
T0*
_output_shapes

:		¤
model_6/gcn_conv_31/MatMulMatMul$model_6/gcn_conv_31/Reshape:output:0&model_6/gcn_conv_31/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	g
%model_6/gcn_conv_31/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	Õ
#model_6/gcn_conv_31/Reshape_2/shapePack$model_6/gcn_conv_31/unstack:output:0$model_6/gcn_conv_31/unstack:output:1.model_6/gcn_conv_31/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:»
model_6/gcn_conv_31/Reshape_2Reshape$model_6/gcn_conv_31/MatMul:product:0,model_6/gcn_conv_31/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
model_6/gcn_conv_31/MatMul_1BatchMatMulV2input_22&model_6/gcn_conv_31/Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
*model_6/gcn_conv_31/BiasAdd/ReadVariableOpReadVariableOp3model_6_gcn_conv_31_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0À
model_6/gcn_conv_31/BiasAddBiasAdd%model_6/gcn_conv_31/MatMul_1:output:02model_6/gcn_conv_31/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
model_6/gcn_conv_31/ReluRelu$model_6/gcn_conv_31/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	o
model_6/gcn_conv_32/ShapeShape&model_6/gcn_conv_31/Relu:activations:0*
T0*
_output_shapes
:y
model_6/gcn_conv_32/unstackUnpack"model_6/gcn_conv_32/Shape:output:0*
T0*
_output_shapes
: : : *	
num
*model_6/gcn_conv_32/Shape_1/ReadVariableOpReadVariableOp3model_6_gcn_conv_32_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0l
model_6/gcn_conv_32/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   {
model_6/gcn_conv_32/unstack_1Unpack$model_6/gcn_conv_32/Shape_1:output:0*
T0*
_output_shapes
: : *	
numr
!model_6/gcn_conv_32/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   ¬
model_6/gcn_conv_32/ReshapeReshape&model_6/gcn_conv_31/Relu:activations:0*model_6/gcn_conv_32/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	 
,model_6/gcn_conv_32/transpose/ReadVariableOpReadVariableOp3model_6_gcn_conv_32_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0s
"model_6/gcn_conv_32/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       ¶
model_6/gcn_conv_32/transpose	Transpose4model_6/gcn_conv_32/transpose/ReadVariableOp:value:0+model_6/gcn_conv_32/transpose/perm:output:0*
T0*
_output_shapes

:		t
#model_6/gcn_conv_32/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿ¢
model_6/gcn_conv_32/Reshape_1Reshape!model_6/gcn_conv_32/transpose:y:0,model_6/gcn_conv_32/Reshape_1/shape:output:0*
T0*
_output_shapes

:		¤
model_6/gcn_conv_32/MatMulMatMul$model_6/gcn_conv_32/Reshape:output:0&model_6/gcn_conv_32/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	g
%model_6/gcn_conv_32/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	Õ
#model_6/gcn_conv_32/Reshape_2/shapePack$model_6/gcn_conv_32/unstack:output:0$model_6/gcn_conv_32/unstack:output:1.model_6/gcn_conv_32/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:»
model_6/gcn_conv_32/Reshape_2Reshape$model_6/gcn_conv_32/MatMul:product:0,model_6/gcn_conv_32/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
model_6/gcn_conv_32/MatMul_1BatchMatMulV2input_22&model_6/gcn_conv_32/Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
*model_6/gcn_conv_32/BiasAdd/ReadVariableOpReadVariableOp3model_6_gcn_conv_32_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0À
model_6/gcn_conv_32/BiasAddBiasAdd%model_6/gcn_conv_32/MatMul_1:output:02model_6/gcn_conv_32/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
model_6/gcn_conv_32/ReluRelu$model_6/gcn_conv_32/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	o
model_6/gcn_conv_33/ShapeShape&model_6/gcn_conv_32/Relu:activations:0*
T0*
_output_shapes
:y
model_6/gcn_conv_33/unstackUnpack"model_6/gcn_conv_33/Shape:output:0*
T0*
_output_shapes
: : : *	
num
*model_6/gcn_conv_33/Shape_1/ReadVariableOpReadVariableOp3model_6_gcn_conv_33_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0l
model_6/gcn_conv_33/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   {
model_6/gcn_conv_33/unstack_1Unpack$model_6/gcn_conv_33/Shape_1:output:0*
T0*
_output_shapes
: : *	
numr
!model_6/gcn_conv_33/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   ¬
model_6/gcn_conv_33/ReshapeReshape&model_6/gcn_conv_32/Relu:activations:0*model_6/gcn_conv_33/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	 
,model_6/gcn_conv_33/transpose/ReadVariableOpReadVariableOp3model_6_gcn_conv_33_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0s
"model_6/gcn_conv_33/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       ¶
model_6/gcn_conv_33/transpose	Transpose4model_6/gcn_conv_33/transpose/ReadVariableOp:value:0+model_6/gcn_conv_33/transpose/perm:output:0*
T0*
_output_shapes

:		t
#model_6/gcn_conv_33/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿ¢
model_6/gcn_conv_33/Reshape_1Reshape!model_6/gcn_conv_33/transpose:y:0,model_6/gcn_conv_33/Reshape_1/shape:output:0*
T0*
_output_shapes

:		¤
model_6/gcn_conv_33/MatMulMatMul$model_6/gcn_conv_33/Reshape:output:0&model_6/gcn_conv_33/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	g
%model_6/gcn_conv_33/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	Õ
#model_6/gcn_conv_33/Reshape_2/shapePack$model_6/gcn_conv_33/unstack:output:0$model_6/gcn_conv_33/unstack:output:1.model_6/gcn_conv_33/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:»
model_6/gcn_conv_33/Reshape_2Reshape$model_6/gcn_conv_33/MatMul:product:0,model_6/gcn_conv_33/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
model_6/gcn_conv_33/MatMul_1BatchMatMulV2input_22&model_6/gcn_conv_33/Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
*model_6/gcn_conv_33/BiasAdd/ReadVariableOpReadVariableOp3model_6_gcn_conv_33_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0À
model_6/gcn_conv_33/BiasAddBiasAdd%model_6/gcn_conv_33/MatMul_1:output:02model_6/gcn_conv_33/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
model_6/gcn_conv_33/ReluRelu$model_6/gcn_conv_33/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	v
4model_6/tf.math.reduce_mean_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Ã
"model_6/tf.math.reduce_mean_6/MeanMean&model_6/gcn_conv_33/Relu:activations:0=model_6/tf.math.reduce_mean_6/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
&model_6/dense_12/MatMul/ReadVariableOpReadVariableOp/model_6_dense_12_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0°
model_6/dense_12/MatMulMatMul+model_6/tf.math.reduce_mean_6/Mean:output:0.model_6/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'model_6/dense_12/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
model_6/dense_12/BiasAddBiasAdd!model_6/dense_12/MatMul:product:0/model_6/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
model_6/dense_12/ReluRelu!model_6/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&model_6/dense_13/MatMul/ReadVariableOpReadVariableOp/model_6_dense_13_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¨
model_6/dense_13/MatMulMatMul#model_6/dense_12/Relu:activations:0.model_6/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'model_6/dense_13/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
model_6/dense_13/BiasAddBiasAdd!model_6/dense_13/MatMul:product:0/model_6/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
IdentityIdentity!model_6/dense_13/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp(^model_6/dense_12/BiasAdd/ReadVariableOp'^model_6/dense_12/MatMul/ReadVariableOp(^model_6/dense_13/BiasAdd/ReadVariableOp'^model_6/dense_13/MatMul/ReadVariableOp+^model_6/gcn_conv_29/BiasAdd/ReadVariableOp-^model_6/gcn_conv_29/transpose/ReadVariableOp+^model_6/gcn_conv_30/BiasAdd/ReadVariableOp-^model_6/gcn_conv_30/transpose/ReadVariableOp+^model_6/gcn_conv_31/BiasAdd/ReadVariableOp-^model_6/gcn_conv_31/transpose/ReadVariableOp+^model_6/gcn_conv_32/BiasAdd/ReadVariableOp-^model_6/gcn_conv_32/transpose/ReadVariableOp+^model_6/gcn_conv_33/BiasAdd/ReadVariableOp-^model_6/gcn_conv_33/transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2R
'model_6/dense_12/BiasAdd/ReadVariableOp'model_6/dense_12/BiasAdd/ReadVariableOp2P
&model_6/dense_12/MatMul/ReadVariableOp&model_6/dense_12/MatMul/ReadVariableOp2R
'model_6/dense_13/BiasAdd/ReadVariableOp'model_6/dense_13/BiasAdd/ReadVariableOp2P
&model_6/dense_13/MatMul/ReadVariableOp&model_6/dense_13/MatMul/ReadVariableOp2X
*model_6/gcn_conv_29/BiasAdd/ReadVariableOp*model_6/gcn_conv_29/BiasAdd/ReadVariableOp2\
,model_6/gcn_conv_29/transpose/ReadVariableOp,model_6/gcn_conv_29/transpose/ReadVariableOp2X
*model_6/gcn_conv_30/BiasAdd/ReadVariableOp*model_6/gcn_conv_30/BiasAdd/ReadVariableOp2\
,model_6/gcn_conv_30/transpose/ReadVariableOp,model_6/gcn_conv_30/transpose/ReadVariableOp2X
*model_6/gcn_conv_31/BiasAdd/ReadVariableOp*model_6/gcn_conv_31/BiasAdd/ReadVariableOp2\
,model_6/gcn_conv_31/transpose/ReadVariableOp,model_6/gcn_conv_31/transpose/ReadVariableOp2X
*model_6/gcn_conv_32/BiasAdd/ReadVariableOp*model_6/gcn_conv_32/BiasAdd/ReadVariableOp2\
,model_6/gcn_conv_32/transpose/ReadVariableOp,model_6/gcn_conv_32/transpose/ReadVariableOp2X
*model_6/gcn_conv_33/BiasAdd/ReadVariableOp*model_6/gcn_conv_33/BiasAdd/ReadVariableOp2\
,model_6/gcn_conv_33/transpose/ReadVariableOp,model_6/gcn_conv_33/transpose/ReadVariableOp:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
input_21:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_22
È	
ö
E__inference_dense_13_layer_call_and_return_conditional_losses_3496062

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²	
ª
-__inference_gcn_conv_33_layer_call_fn_3496973
inputs_0
inputs_1
unknown:		
	unknown_0:	
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_33_layer_call_and_return_conditional_losses_3496027|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
¯f
½
 __inference__traced_save_3497219
file_prefix1
-savev2_gcn_conv_29_kernel_read_readvariableop/
+savev2_gcn_conv_29_bias_read_readvariableop1
-savev2_gcn_conv_30_kernel_read_readvariableop/
+savev2_gcn_conv_30_bias_read_readvariableop1
-savev2_gcn_conv_31_kernel_read_readvariableop/
+savev2_gcn_conv_31_bias_read_readvariableop1
-savev2_gcn_conv_32_kernel_read_readvariableop/
+savev2_gcn_conv_32_bias_read_readvariableop1
-savev2_gcn_conv_33_kernel_read_readvariableop/
+savev2_gcn_conv_33_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adam_gcn_conv_29_kernel_m_read_readvariableop6
2savev2_adam_gcn_conv_29_bias_m_read_readvariableop8
4savev2_adam_gcn_conv_30_kernel_m_read_readvariableop6
2savev2_adam_gcn_conv_30_bias_m_read_readvariableop8
4savev2_adam_gcn_conv_31_kernel_m_read_readvariableop6
2savev2_adam_gcn_conv_31_bias_m_read_readvariableop8
4savev2_adam_gcn_conv_32_kernel_m_read_readvariableop6
2savev2_adam_gcn_conv_32_bias_m_read_readvariableop8
4savev2_adam_gcn_conv_33_kernel_m_read_readvariableop6
2savev2_adam_gcn_conv_33_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableop8
4savev2_adam_gcn_conv_29_kernel_v_read_readvariableop6
2savev2_adam_gcn_conv_29_bias_v_read_readvariableop8
4savev2_adam_gcn_conv_30_kernel_v_read_readvariableop6
2savev2_adam_gcn_conv_30_bias_v_read_readvariableop8
4savev2_adam_gcn_conv_31_kernel_v_read_readvariableop6
2savev2_adam_gcn_conv_31_bias_v_read_readvariableop8
4savev2_adam_gcn_conv_32_kernel_v_read_readvariableop6
2savev2_adam_gcn_conv_32_bias_v_read_readvariableop8
4savev2_adam_gcn_conv_33_kernel_v_read_readvariableop6
2savev2_adam_gcn_conv_33_bias_v_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ý
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*
valueüBù4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÕ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ç
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_gcn_conv_29_kernel_read_readvariableop+savev2_gcn_conv_29_bias_read_readvariableop-savev2_gcn_conv_30_kernel_read_readvariableop+savev2_gcn_conv_30_bias_read_readvariableop-savev2_gcn_conv_31_kernel_read_readvariableop+savev2_gcn_conv_31_bias_read_readvariableop-savev2_gcn_conv_32_kernel_read_readvariableop+savev2_gcn_conv_32_bias_read_readvariableop-savev2_gcn_conv_33_kernel_read_readvariableop+savev2_gcn_conv_33_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adam_gcn_conv_29_kernel_m_read_readvariableop2savev2_adam_gcn_conv_29_bias_m_read_readvariableop4savev2_adam_gcn_conv_30_kernel_m_read_readvariableop2savev2_adam_gcn_conv_30_bias_m_read_readvariableop4savev2_adam_gcn_conv_31_kernel_m_read_readvariableop2savev2_adam_gcn_conv_31_bias_m_read_readvariableop4savev2_adam_gcn_conv_32_kernel_m_read_readvariableop2savev2_adam_gcn_conv_32_bias_m_read_readvariableop4savev2_adam_gcn_conv_33_kernel_m_read_readvariableop2savev2_adam_gcn_conv_33_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableop4savev2_adam_gcn_conv_29_kernel_v_read_readvariableop2savev2_adam_gcn_conv_29_bias_v_read_readvariableop4savev2_adam_gcn_conv_30_kernel_v_read_readvariableop2savev2_adam_gcn_conv_30_bias_v_read_readvariableop4savev2_adam_gcn_conv_31_kernel_v_read_readvariableop2savev2_adam_gcn_conv_31_bias_v_read_readvariableop4savev2_adam_gcn_conv_32_kernel_v_read_readvariableop2savev2_adam_gcn_conv_32_bias_v_read_readvariableop4savev2_adam_gcn_conv_33_kernel_v_read_readvariableop2savev2_adam_gcn_conv_33_bias_v_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*û
_input_shapesé
æ: :		:	:		:	:		:	:		:	:		:	:	:::: : : : : : : : : :		:	:		:	:		:	:		:	:		:	:	::::		:	:		:	:		:	:		:	:		:	:	:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:		: 

_output_shapes
:	:$ 

_output_shapes

:		: 

_output_shapes
:	:$ 

_output_shapes

:		: 

_output_shapes
:	:$ 

_output_shapes

:		: 

_output_shapes
:	:$	 

_output_shapes

:		: 


_output_shapes
:	:$ 

_output_shapes

:	: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:		: 

_output_shapes
:	:$ 

_output_shapes

:		: 

_output_shapes
:	:$ 

_output_shapes

:		: 

_output_shapes
:	:$ 

_output_shapes

:		: 

_output_shapes
:	:$  

_output_shapes

:		: !

_output_shapes
:	:$" 

_output_shapes

:	: #

_output_shapes
::$$ 

_output_shapes

:: %

_output_shapes
::$& 

_output_shapes

:		: '

_output_shapes
:	:$( 

_output_shapes

:		: )

_output_shapes
:	:$* 

_output_shapes

:		: +

_output_shapes
:	:$, 

_output_shapes

:		: -

_output_shapes
:	:$. 

_output_shapes

:		: /

_output_shapes
:	:$0 

_output_shapes

:	: 1

_output_shapes
::$2 

_output_shapes

:: 3

_output_shapes
::4

_output_shapes
: 
Ç

*__inference_dense_13_layer_call_fn_3497032

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_3496062o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


H__inference_gcn_conv_31_layer_call_and_return_conditional_losses_3496923
inputs_0
inputs_11
shape_1_readvariableop_resource:		-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢transpose/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   f
ReshapeReshapeinputs_0Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

:		`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿf
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:		h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	
Reshape_2/shapePackunstack:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	v
MatMul_1BatchMatMulV2inputs_1Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
BiasAddBiasAddMatMul_1:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	z
NoOpNoOp^BiasAdd/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
²	
ª
-__inference_gcn_conv_31_layer_call_fn_3496893
inputs_0
inputs_1
unknown:		
	unknown_0:	
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_31_layer_call_and_return_conditional_losses_3495955|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1


H__inference_gcn_conv_33_layer_call_and_return_conditional_losses_3496027

inputs
inputs_11
shape_1_readvariableop_resource:		-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

:		`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿf
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:		h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	
Reshape_2/shapePackunstack:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	v
MatMul_1BatchMatMulV2inputs_1Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
BiasAddBiasAddMatMul_1:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	z
NoOpNoOp^BiasAdd/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs:ea
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð+
ï
D__inference_model_6_layer_call_and_return_conditional_losses_3496069

inputs
inputs_1%
gcn_conv_29_3495884:		!
gcn_conv_29_3495886:	%
gcn_conv_30_3495920:		!
gcn_conv_30_3495922:	%
gcn_conv_31_3495956:		!
gcn_conv_31_3495958:	%
gcn_conv_32_3495992:		!
gcn_conv_32_3495994:	%
gcn_conv_33_3496028:		!
gcn_conv_33_3496030:	"
dense_12_3496047:	
dense_12_3496049:"
dense_13_3496063:
dense_13_3496065:
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢#gcn_conv_29/StatefulPartitionedCall¢#gcn_conv_30/StatefulPartitionedCall¢#gcn_conv_31/StatefulPartitionedCall¢#gcn_conv_32/StatefulPartitionedCall¢#gcn_conv_33/StatefulPartitionedCall
#gcn_conv_29/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1gcn_conv_29_3495884gcn_conv_29_3495886*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_29_layer_call_and_return_conditional_losses_3495883À
#gcn_conv_30/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_29/StatefulPartitionedCall:output:0inputs_1gcn_conv_30_3495920gcn_conv_30_3495922*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_30_layer_call_and_return_conditional_losses_3495919À
#gcn_conv_31/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_30/StatefulPartitionedCall:output:0inputs_1gcn_conv_31_3495956gcn_conv_31_3495958*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_31_layer_call_and_return_conditional_losses_3495955À
#gcn_conv_32/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_31/StatefulPartitionedCall:output:0inputs_1gcn_conv_32_3495992gcn_conv_32_3495994*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_32_layer_call_and_return_conditional_losses_3495991À
#gcn_conv_33/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_32/StatefulPartitionedCall:output:0inputs_1gcn_conv_33_3496028gcn_conv_33_3496030*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_gcn_conv_33_layer_call_and_return_conditional_losses_3496027n
,tf.math.reduce_mean_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :¹
tf.math.reduce_mean_6/MeanMean,gcn_conv_33/StatefulPartitionedCall:output:05tf.math.reduce_mean_6/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 dense_12/StatefulPartitionedCallStatefulPartitionedCall#tf.math.reduce_mean_6/Mean:output:0dense_12_3496047dense_12_3496049*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_3496046
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_3496063dense_13_3496065*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_3496062x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall$^gcn_conv_29/StatefulPartitionedCall$^gcn_conv_30/StatefulPartitionedCall$^gcn_conv_31/StatefulPartitionedCall$^gcn_conv_32/StatefulPartitionedCall$^gcn_conv_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2J
#gcn_conv_29/StatefulPartitionedCall#gcn_conv_29/StatefulPartitionedCall2J
#gcn_conv_30/StatefulPartitionedCall#gcn_conv_30/StatefulPartitionedCall2J
#gcn_conv_31/StatefulPartitionedCall#gcn_conv_31/StatefulPartitionedCall2J
#gcn_conv_32/StatefulPartitionedCall#gcn_conv_32/StatefulPartitionedCall2J
#gcn_conv_33/StatefulPartitionedCall#gcn_conv_33/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs:ea
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


H__inference_gcn_conv_33_layer_call_and_return_conditional_losses_3497003
inputs_0
inputs_11
shape_1_readvariableop_resource:		-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢transpose/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   f
ReshapeReshapeinputs_0Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

:		`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿf
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:		h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	
Reshape_2/shapePackunstack:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	v
MatMul_1BatchMatMulV2inputs_1Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
BiasAddBiasAddMatMul_1:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	z
NoOpNoOp^BiasAdd/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1

í
)__inference_model_6_layer_call_fn_3496319
input_21
input_22
unknown:		
	unknown_0:	
	unknown_1:		
	unknown_2:	
	unknown_3:		
	unknown_4:	
	unknown_5:		
	unknown_6:	
	unknown_7:		
	unknown_8:	
	unknown_9:	

unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_21input_22unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_3496254o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
input_21:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_22
¡
½
D__inference_model_6_layer_call_and_return_conditional_losses_3496767
inputs_0
inputs_1=
+gcn_conv_29_shape_1_readvariableop_resource:		9
+gcn_conv_29_biasadd_readvariableop_resource:	=
+gcn_conv_30_shape_1_readvariableop_resource:		9
+gcn_conv_30_biasadd_readvariableop_resource:	=
+gcn_conv_31_shape_1_readvariableop_resource:		9
+gcn_conv_31_biasadd_readvariableop_resource:	=
+gcn_conv_32_shape_1_readvariableop_resource:		9
+gcn_conv_32_biasadd_readvariableop_resource:	=
+gcn_conv_33_shape_1_readvariableop_resource:		9
+gcn_conv_33_biasadd_readvariableop_resource:	9
'dense_12_matmul_readvariableop_resource:	6
(dense_12_biasadd_readvariableop_resource:9
'dense_13_matmul_readvariableop_resource:6
(dense_13_biasadd_readvariableop_resource:
identity¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢"gcn_conv_29/BiasAdd/ReadVariableOp¢$gcn_conv_29/transpose/ReadVariableOp¢"gcn_conv_30/BiasAdd/ReadVariableOp¢$gcn_conv_30/transpose/ReadVariableOp¢"gcn_conv_31/BiasAdd/ReadVariableOp¢$gcn_conv_31/transpose/ReadVariableOp¢"gcn_conv_32/BiasAdd/ReadVariableOp¢$gcn_conv_32/transpose/ReadVariableOp¢"gcn_conv_33/BiasAdd/ReadVariableOp¢$gcn_conv_33/transpose/ReadVariableOpI
gcn_conv_29/ShapeShapeinputs_0*
T0*
_output_shapes
:i
gcn_conv_29/unstackUnpackgcn_conv_29/Shape:output:0*
T0*
_output_shapes
: : : *	
num
"gcn_conv_29/Shape_1/ReadVariableOpReadVariableOp+gcn_conv_29_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0d
gcn_conv_29/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   k
gcn_conv_29/unstack_1Unpackgcn_conv_29/Shape_1:output:0*
T0*
_output_shapes
: : *	
numj
gcn_conv_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   ~
gcn_conv_29/ReshapeReshapeinputs_0"gcn_conv_29/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
$gcn_conv_29/transpose/ReadVariableOpReadVariableOp+gcn_conv_29_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0k
gcn_conv_29/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       
gcn_conv_29/transpose	Transpose,gcn_conv_29/transpose/ReadVariableOp:value:0#gcn_conv_29/transpose/perm:output:0*
T0*
_output_shapes

:		l
gcn_conv_29/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿ
gcn_conv_29/Reshape_1Reshapegcn_conv_29/transpose:y:0$gcn_conv_29/Reshape_1/shape:output:0*
T0*
_output_shapes

:		
gcn_conv_29/MatMulMatMulgcn_conv_29/Reshape:output:0gcn_conv_29/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	_
gcn_conv_29/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	µ
gcn_conv_29/Reshape_2/shapePackgcn_conv_29/unstack:output:0gcn_conv_29/unstack:output:1&gcn_conv_29/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:£
gcn_conv_29/Reshape_2Reshapegcn_conv_29/MatMul:product:0$gcn_conv_29/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
gcn_conv_29/MatMul_1BatchMatMulV2inputs_1gcn_conv_29/Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"gcn_conv_29/BiasAdd/ReadVariableOpReadVariableOp+gcn_conv_29_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0¨
gcn_conv_29/BiasAddBiasAddgcn_conv_29/MatMul_1:output:0*gcn_conv_29/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	u
gcn_conv_29/ReluRelugcn_conv_29/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	_
gcn_conv_30/ShapeShapegcn_conv_29/Relu:activations:0*
T0*
_output_shapes
:i
gcn_conv_30/unstackUnpackgcn_conv_30/Shape:output:0*
T0*
_output_shapes
: : : *	
num
"gcn_conv_30/Shape_1/ReadVariableOpReadVariableOp+gcn_conv_30_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0d
gcn_conv_30/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   k
gcn_conv_30/unstack_1Unpackgcn_conv_30/Shape_1:output:0*
T0*
_output_shapes
: : *	
numj
gcn_conv_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   
gcn_conv_30/ReshapeReshapegcn_conv_29/Relu:activations:0"gcn_conv_30/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
$gcn_conv_30/transpose/ReadVariableOpReadVariableOp+gcn_conv_30_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0k
gcn_conv_30/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       
gcn_conv_30/transpose	Transpose,gcn_conv_30/transpose/ReadVariableOp:value:0#gcn_conv_30/transpose/perm:output:0*
T0*
_output_shapes

:		l
gcn_conv_30/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿ
gcn_conv_30/Reshape_1Reshapegcn_conv_30/transpose:y:0$gcn_conv_30/Reshape_1/shape:output:0*
T0*
_output_shapes

:		
gcn_conv_30/MatMulMatMulgcn_conv_30/Reshape:output:0gcn_conv_30/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	_
gcn_conv_30/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	µ
gcn_conv_30/Reshape_2/shapePackgcn_conv_30/unstack:output:0gcn_conv_30/unstack:output:1&gcn_conv_30/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:£
gcn_conv_30/Reshape_2Reshapegcn_conv_30/MatMul:product:0$gcn_conv_30/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
gcn_conv_30/MatMul_1BatchMatMulV2inputs_1gcn_conv_30/Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"gcn_conv_30/BiasAdd/ReadVariableOpReadVariableOp+gcn_conv_30_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0¨
gcn_conv_30/BiasAddBiasAddgcn_conv_30/MatMul_1:output:0*gcn_conv_30/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	u
gcn_conv_30/ReluRelugcn_conv_30/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	_
gcn_conv_31/ShapeShapegcn_conv_30/Relu:activations:0*
T0*
_output_shapes
:i
gcn_conv_31/unstackUnpackgcn_conv_31/Shape:output:0*
T0*
_output_shapes
: : : *	
num
"gcn_conv_31/Shape_1/ReadVariableOpReadVariableOp+gcn_conv_31_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0d
gcn_conv_31/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   k
gcn_conv_31/unstack_1Unpackgcn_conv_31/Shape_1:output:0*
T0*
_output_shapes
: : *	
numj
gcn_conv_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   
gcn_conv_31/ReshapeReshapegcn_conv_30/Relu:activations:0"gcn_conv_31/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
$gcn_conv_31/transpose/ReadVariableOpReadVariableOp+gcn_conv_31_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0k
gcn_conv_31/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       
gcn_conv_31/transpose	Transpose,gcn_conv_31/transpose/ReadVariableOp:value:0#gcn_conv_31/transpose/perm:output:0*
T0*
_output_shapes

:		l
gcn_conv_31/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿ
gcn_conv_31/Reshape_1Reshapegcn_conv_31/transpose:y:0$gcn_conv_31/Reshape_1/shape:output:0*
T0*
_output_shapes

:		
gcn_conv_31/MatMulMatMulgcn_conv_31/Reshape:output:0gcn_conv_31/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	_
gcn_conv_31/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	µ
gcn_conv_31/Reshape_2/shapePackgcn_conv_31/unstack:output:0gcn_conv_31/unstack:output:1&gcn_conv_31/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:£
gcn_conv_31/Reshape_2Reshapegcn_conv_31/MatMul:product:0$gcn_conv_31/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
gcn_conv_31/MatMul_1BatchMatMulV2inputs_1gcn_conv_31/Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"gcn_conv_31/BiasAdd/ReadVariableOpReadVariableOp+gcn_conv_31_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0¨
gcn_conv_31/BiasAddBiasAddgcn_conv_31/MatMul_1:output:0*gcn_conv_31/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	u
gcn_conv_31/ReluRelugcn_conv_31/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	_
gcn_conv_32/ShapeShapegcn_conv_31/Relu:activations:0*
T0*
_output_shapes
:i
gcn_conv_32/unstackUnpackgcn_conv_32/Shape:output:0*
T0*
_output_shapes
: : : *	
num
"gcn_conv_32/Shape_1/ReadVariableOpReadVariableOp+gcn_conv_32_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0d
gcn_conv_32/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   k
gcn_conv_32/unstack_1Unpackgcn_conv_32/Shape_1:output:0*
T0*
_output_shapes
: : *	
numj
gcn_conv_32/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   
gcn_conv_32/ReshapeReshapegcn_conv_31/Relu:activations:0"gcn_conv_32/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
$gcn_conv_32/transpose/ReadVariableOpReadVariableOp+gcn_conv_32_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0k
gcn_conv_32/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       
gcn_conv_32/transpose	Transpose,gcn_conv_32/transpose/ReadVariableOp:value:0#gcn_conv_32/transpose/perm:output:0*
T0*
_output_shapes

:		l
gcn_conv_32/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿ
gcn_conv_32/Reshape_1Reshapegcn_conv_32/transpose:y:0$gcn_conv_32/Reshape_1/shape:output:0*
T0*
_output_shapes

:		
gcn_conv_32/MatMulMatMulgcn_conv_32/Reshape:output:0gcn_conv_32/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	_
gcn_conv_32/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	µ
gcn_conv_32/Reshape_2/shapePackgcn_conv_32/unstack:output:0gcn_conv_32/unstack:output:1&gcn_conv_32/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:£
gcn_conv_32/Reshape_2Reshapegcn_conv_32/MatMul:product:0$gcn_conv_32/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
gcn_conv_32/MatMul_1BatchMatMulV2inputs_1gcn_conv_32/Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"gcn_conv_32/BiasAdd/ReadVariableOpReadVariableOp+gcn_conv_32_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0¨
gcn_conv_32/BiasAddBiasAddgcn_conv_32/MatMul_1:output:0*gcn_conv_32/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	u
gcn_conv_32/ReluRelugcn_conv_32/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	_
gcn_conv_33/ShapeShapegcn_conv_32/Relu:activations:0*
T0*
_output_shapes
:i
gcn_conv_33/unstackUnpackgcn_conv_33/Shape:output:0*
T0*
_output_shapes
: : : *	
num
"gcn_conv_33/Shape_1/ReadVariableOpReadVariableOp+gcn_conv_33_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0d
gcn_conv_33/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   k
gcn_conv_33/unstack_1Unpackgcn_conv_33/Shape_1:output:0*
T0*
_output_shapes
: : *	
numj
gcn_conv_33/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   
gcn_conv_33/ReshapeReshapegcn_conv_32/Relu:activations:0"gcn_conv_33/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
$gcn_conv_33/transpose/ReadVariableOpReadVariableOp+gcn_conv_33_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0k
gcn_conv_33/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       
gcn_conv_33/transpose	Transpose,gcn_conv_33/transpose/ReadVariableOp:value:0#gcn_conv_33/transpose/perm:output:0*
T0*
_output_shapes

:		l
gcn_conv_33/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿ
gcn_conv_33/Reshape_1Reshapegcn_conv_33/transpose:y:0$gcn_conv_33/Reshape_1/shape:output:0*
T0*
_output_shapes

:		
gcn_conv_33/MatMulMatMulgcn_conv_33/Reshape:output:0gcn_conv_33/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	_
gcn_conv_33/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	µ
gcn_conv_33/Reshape_2/shapePackgcn_conv_33/unstack:output:0gcn_conv_33/unstack:output:1&gcn_conv_33/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:£
gcn_conv_33/Reshape_2Reshapegcn_conv_33/MatMul:product:0$gcn_conv_33/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
gcn_conv_33/MatMul_1BatchMatMulV2inputs_1gcn_conv_33/Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"gcn_conv_33/BiasAdd/ReadVariableOpReadVariableOp+gcn_conv_33_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0¨
gcn_conv_33/BiasAddBiasAddgcn_conv_33/MatMul_1:output:0*gcn_conv_33/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	u
gcn_conv_33/ReluRelugcn_conv_33/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	n
,tf.math.reduce_mean_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :«
tf.math.reduce_mean_6/MeanMeangcn_conv_33/Relu:activations:05tf.math.reduce_mean_6/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0
dense_12/MatMulMatMul#tf.math.reduce_mean_6/Mean:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_13/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp#^gcn_conv_29/BiasAdd/ReadVariableOp%^gcn_conv_29/transpose/ReadVariableOp#^gcn_conv_30/BiasAdd/ReadVariableOp%^gcn_conv_30/transpose/ReadVariableOp#^gcn_conv_31/BiasAdd/ReadVariableOp%^gcn_conv_31/transpose/ReadVariableOp#^gcn_conv_32/BiasAdd/ReadVariableOp%^gcn_conv_32/transpose/ReadVariableOp#^gcn_conv_33/BiasAdd/ReadVariableOp%^gcn_conv_33/transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2H
"gcn_conv_29/BiasAdd/ReadVariableOp"gcn_conv_29/BiasAdd/ReadVariableOp2L
$gcn_conv_29/transpose/ReadVariableOp$gcn_conv_29/transpose/ReadVariableOp2H
"gcn_conv_30/BiasAdd/ReadVariableOp"gcn_conv_30/BiasAdd/ReadVariableOp2L
$gcn_conv_30/transpose/ReadVariableOp$gcn_conv_30/transpose/ReadVariableOp2H
"gcn_conv_31/BiasAdd/ReadVariableOp"gcn_conv_31/BiasAdd/ReadVariableOp2L
$gcn_conv_31/transpose/ReadVariableOp$gcn_conv_31/transpose/ReadVariableOp2H
"gcn_conv_32/BiasAdd/ReadVariableOp"gcn_conv_32/BiasAdd/ReadVariableOp2L
$gcn_conv_32/transpose/ReadVariableOp$gcn_conv_32/transpose/ReadVariableOp2H
"gcn_conv_33/BiasAdd/ReadVariableOp"gcn_conv_33/BiasAdd/ReadVariableOp2L
$gcn_conv_33/transpose/ReadVariableOp$gcn_conv_33/transpose/ReadVariableOp:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1


H__inference_gcn_conv_30_layer_call_and_return_conditional_losses_3496883
inputs_0
inputs_11
shape_1_readvariableop_resource:		-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢transpose/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   f
ReshapeReshapeinputs_0Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:		*
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

:		`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿf
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:		h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	
Reshape_2/shapePackunstack:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	v
MatMul_1BatchMatMulV2inputs_1Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
BiasAddBiasAddMatMul_1:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	z
NoOpNoOp^BiasAdd/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1

í
)__inference_model_6_layer_call_fn_3496443
inputs_0
inputs_1
unknown:		
	unknown_0:	
	unknown_1:		
	unknown_2:	
	unknown_3:		
	unknown_4:	
	unknown_5:		
	unknown_6:	
	unknown_7:		
	unknown_8:	
	unknown_9:	

unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_3496069o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
¡
½
D__inference_model_6_layer_call_and_return_conditional_losses_3496622
inputs_0
inputs_1=
+gcn_conv_29_shape_1_readvariableop_resource:		9
+gcn_conv_29_biasadd_readvariableop_resource:	=
+gcn_conv_30_shape_1_readvariableop_resource:		9
+gcn_conv_30_biasadd_readvariableop_resource:	=
+gcn_conv_31_shape_1_readvariableop_resource:		9
+gcn_conv_31_biasadd_readvariableop_resource:	=
+gcn_conv_32_shape_1_readvariableop_resource:		9
+gcn_conv_32_biasadd_readvariableop_resource:	=
+gcn_conv_33_shape_1_readvariableop_resource:		9
+gcn_conv_33_biasadd_readvariableop_resource:	9
'dense_12_matmul_readvariableop_resource:	6
(dense_12_biasadd_readvariableop_resource:9
'dense_13_matmul_readvariableop_resource:6
(dense_13_biasadd_readvariableop_resource:
identity¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢"gcn_conv_29/BiasAdd/ReadVariableOp¢$gcn_conv_29/transpose/ReadVariableOp¢"gcn_conv_30/BiasAdd/ReadVariableOp¢$gcn_conv_30/transpose/ReadVariableOp¢"gcn_conv_31/BiasAdd/ReadVariableOp¢$gcn_conv_31/transpose/ReadVariableOp¢"gcn_conv_32/BiasAdd/ReadVariableOp¢$gcn_conv_32/transpose/ReadVariableOp¢"gcn_conv_33/BiasAdd/ReadVariableOp¢$gcn_conv_33/transpose/ReadVariableOpI
gcn_conv_29/ShapeShapeinputs_0*
T0*
_output_shapes
:i
gcn_conv_29/unstackUnpackgcn_conv_29/Shape:output:0*
T0*
_output_shapes
: : : *	
num
"gcn_conv_29/Shape_1/ReadVariableOpReadVariableOp+gcn_conv_29_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0d
gcn_conv_29/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   k
gcn_conv_29/unstack_1Unpackgcn_conv_29/Shape_1:output:0*
T0*
_output_shapes
: : *	
numj
gcn_conv_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   ~
gcn_conv_29/ReshapeReshapeinputs_0"gcn_conv_29/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
$gcn_conv_29/transpose/ReadVariableOpReadVariableOp+gcn_conv_29_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0k
gcn_conv_29/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       
gcn_conv_29/transpose	Transpose,gcn_conv_29/transpose/ReadVariableOp:value:0#gcn_conv_29/transpose/perm:output:0*
T0*
_output_shapes

:		l
gcn_conv_29/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿ
gcn_conv_29/Reshape_1Reshapegcn_conv_29/transpose:y:0$gcn_conv_29/Reshape_1/shape:output:0*
T0*
_output_shapes

:		
gcn_conv_29/MatMulMatMulgcn_conv_29/Reshape:output:0gcn_conv_29/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	_
gcn_conv_29/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	µ
gcn_conv_29/Reshape_2/shapePackgcn_conv_29/unstack:output:0gcn_conv_29/unstack:output:1&gcn_conv_29/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:£
gcn_conv_29/Reshape_2Reshapegcn_conv_29/MatMul:product:0$gcn_conv_29/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
gcn_conv_29/MatMul_1BatchMatMulV2inputs_1gcn_conv_29/Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"gcn_conv_29/BiasAdd/ReadVariableOpReadVariableOp+gcn_conv_29_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0¨
gcn_conv_29/BiasAddBiasAddgcn_conv_29/MatMul_1:output:0*gcn_conv_29/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	u
gcn_conv_29/ReluRelugcn_conv_29/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	_
gcn_conv_30/ShapeShapegcn_conv_29/Relu:activations:0*
T0*
_output_shapes
:i
gcn_conv_30/unstackUnpackgcn_conv_30/Shape:output:0*
T0*
_output_shapes
: : : *	
num
"gcn_conv_30/Shape_1/ReadVariableOpReadVariableOp+gcn_conv_30_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0d
gcn_conv_30/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   k
gcn_conv_30/unstack_1Unpackgcn_conv_30/Shape_1:output:0*
T0*
_output_shapes
: : *	
numj
gcn_conv_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   
gcn_conv_30/ReshapeReshapegcn_conv_29/Relu:activations:0"gcn_conv_30/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
$gcn_conv_30/transpose/ReadVariableOpReadVariableOp+gcn_conv_30_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0k
gcn_conv_30/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       
gcn_conv_30/transpose	Transpose,gcn_conv_30/transpose/ReadVariableOp:value:0#gcn_conv_30/transpose/perm:output:0*
T0*
_output_shapes

:		l
gcn_conv_30/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿ
gcn_conv_30/Reshape_1Reshapegcn_conv_30/transpose:y:0$gcn_conv_30/Reshape_1/shape:output:0*
T0*
_output_shapes

:		
gcn_conv_30/MatMulMatMulgcn_conv_30/Reshape:output:0gcn_conv_30/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	_
gcn_conv_30/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	µ
gcn_conv_30/Reshape_2/shapePackgcn_conv_30/unstack:output:0gcn_conv_30/unstack:output:1&gcn_conv_30/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:£
gcn_conv_30/Reshape_2Reshapegcn_conv_30/MatMul:product:0$gcn_conv_30/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
gcn_conv_30/MatMul_1BatchMatMulV2inputs_1gcn_conv_30/Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"gcn_conv_30/BiasAdd/ReadVariableOpReadVariableOp+gcn_conv_30_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0¨
gcn_conv_30/BiasAddBiasAddgcn_conv_30/MatMul_1:output:0*gcn_conv_30/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	u
gcn_conv_30/ReluRelugcn_conv_30/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	_
gcn_conv_31/ShapeShapegcn_conv_30/Relu:activations:0*
T0*
_output_shapes
:i
gcn_conv_31/unstackUnpackgcn_conv_31/Shape:output:0*
T0*
_output_shapes
: : : *	
num
"gcn_conv_31/Shape_1/ReadVariableOpReadVariableOp+gcn_conv_31_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0d
gcn_conv_31/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   k
gcn_conv_31/unstack_1Unpackgcn_conv_31/Shape_1:output:0*
T0*
_output_shapes
: : *	
numj
gcn_conv_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   
gcn_conv_31/ReshapeReshapegcn_conv_30/Relu:activations:0"gcn_conv_31/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
$gcn_conv_31/transpose/ReadVariableOpReadVariableOp+gcn_conv_31_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0k
gcn_conv_31/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       
gcn_conv_31/transpose	Transpose,gcn_conv_31/transpose/ReadVariableOp:value:0#gcn_conv_31/transpose/perm:output:0*
T0*
_output_shapes

:		l
gcn_conv_31/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿ
gcn_conv_31/Reshape_1Reshapegcn_conv_31/transpose:y:0$gcn_conv_31/Reshape_1/shape:output:0*
T0*
_output_shapes

:		
gcn_conv_31/MatMulMatMulgcn_conv_31/Reshape:output:0gcn_conv_31/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	_
gcn_conv_31/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	µ
gcn_conv_31/Reshape_2/shapePackgcn_conv_31/unstack:output:0gcn_conv_31/unstack:output:1&gcn_conv_31/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:£
gcn_conv_31/Reshape_2Reshapegcn_conv_31/MatMul:product:0$gcn_conv_31/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
gcn_conv_31/MatMul_1BatchMatMulV2inputs_1gcn_conv_31/Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"gcn_conv_31/BiasAdd/ReadVariableOpReadVariableOp+gcn_conv_31_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0¨
gcn_conv_31/BiasAddBiasAddgcn_conv_31/MatMul_1:output:0*gcn_conv_31/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	u
gcn_conv_31/ReluRelugcn_conv_31/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	_
gcn_conv_32/ShapeShapegcn_conv_31/Relu:activations:0*
T0*
_output_shapes
:i
gcn_conv_32/unstackUnpackgcn_conv_32/Shape:output:0*
T0*
_output_shapes
: : : *	
num
"gcn_conv_32/Shape_1/ReadVariableOpReadVariableOp+gcn_conv_32_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0d
gcn_conv_32/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   k
gcn_conv_32/unstack_1Unpackgcn_conv_32/Shape_1:output:0*
T0*
_output_shapes
: : *	
numj
gcn_conv_32/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   
gcn_conv_32/ReshapeReshapegcn_conv_31/Relu:activations:0"gcn_conv_32/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
$gcn_conv_32/transpose/ReadVariableOpReadVariableOp+gcn_conv_32_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0k
gcn_conv_32/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       
gcn_conv_32/transpose	Transpose,gcn_conv_32/transpose/ReadVariableOp:value:0#gcn_conv_32/transpose/perm:output:0*
T0*
_output_shapes

:		l
gcn_conv_32/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿ
gcn_conv_32/Reshape_1Reshapegcn_conv_32/transpose:y:0$gcn_conv_32/Reshape_1/shape:output:0*
T0*
_output_shapes

:		
gcn_conv_32/MatMulMatMulgcn_conv_32/Reshape:output:0gcn_conv_32/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	_
gcn_conv_32/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	µ
gcn_conv_32/Reshape_2/shapePackgcn_conv_32/unstack:output:0gcn_conv_32/unstack:output:1&gcn_conv_32/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:£
gcn_conv_32/Reshape_2Reshapegcn_conv_32/MatMul:product:0$gcn_conv_32/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
gcn_conv_32/MatMul_1BatchMatMulV2inputs_1gcn_conv_32/Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"gcn_conv_32/BiasAdd/ReadVariableOpReadVariableOp+gcn_conv_32_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0¨
gcn_conv_32/BiasAddBiasAddgcn_conv_32/MatMul_1:output:0*gcn_conv_32/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	u
gcn_conv_32/ReluRelugcn_conv_32/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	_
gcn_conv_33/ShapeShapegcn_conv_32/Relu:activations:0*
T0*
_output_shapes
:i
gcn_conv_33/unstackUnpackgcn_conv_33/Shape:output:0*
T0*
_output_shapes
: : : *	
num
"gcn_conv_33/Shape_1/ReadVariableOpReadVariableOp+gcn_conv_33_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0d
gcn_conv_33/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"	   	   k
gcn_conv_33/unstack_1Unpackgcn_conv_33/Shape_1:output:0*
T0*
_output_shapes
: : *	
numj
gcn_conv_33/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ	   
gcn_conv_33/ReshapeReshapegcn_conv_32/Relu:activations:0"gcn_conv_33/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
$gcn_conv_33/transpose/ReadVariableOpReadVariableOp+gcn_conv_33_shape_1_readvariableop_resource*
_output_shapes

:		*
dtype0k
gcn_conv_33/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       
gcn_conv_33/transpose	Transpose,gcn_conv_33/transpose/ReadVariableOp:value:0#gcn_conv_33/transpose/perm:output:0*
T0*
_output_shapes

:		l
gcn_conv_33/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   ÿÿÿÿ
gcn_conv_33/Reshape_1Reshapegcn_conv_33/transpose:y:0$gcn_conv_33/Reshape_1/shape:output:0*
T0*
_output_shapes

:		
gcn_conv_33/MatMulMatMulgcn_conv_33/Reshape:output:0gcn_conv_33/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	_
gcn_conv_33/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	µ
gcn_conv_33/Reshape_2/shapePackgcn_conv_33/unstack:output:0gcn_conv_33/unstack:output:1&gcn_conv_33/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:£
gcn_conv_33/Reshape_2Reshapegcn_conv_33/MatMul:product:0$gcn_conv_33/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
gcn_conv_33/MatMul_1BatchMatMulV2inputs_1gcn_conv_33/Reshape_2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"gcn_conv_33/BiasAdd/ReadVariableOpReadVariableOp+gcn_conv_33_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0¨
gcn_conv_33/BiasAddBiasAddgcn_conv_33/MatMul_1:output:0*gcn_conv_33/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	u
gcn_conv_33/ReluRelugcn_conv_33/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	n
,tf.math.reduce_mean_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :«
tf.math.reduce_mean_6/MeanMeangcn_conv_33/Relu:activations:05tf.math.reduce_mean_6/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0
dense_12/MatMulMatMul#tf.math.reduce_mean_6/Mean:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_13/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp#^gcn_conv_29/BiasAdd/ReadVariableOp%^gcn_conv_29/transpose/ReadVariableOp#^gcn_conv_30/BiasAdd/ReadVariableOp%^gcn_conv_30/transpose/ReadVariableOp#^gcn_conv_31/BiasAdd/ReadVariableOp%^gcn_conv_31/transpose/ReadVariableOp#^gcn_conv_32/BiasAdd/ReadVariableOp%^gcn_conv_32/transpose/ReadVariableOp#^gcn_conv_33/BiasAdd/ReadVariableOp%^gcn_conv_33/transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2H
"gcn_conv_29/BiasAdd/ReadVariableOp"gcn_conv_29/BiasAdd/ReadVariableOp2L
$gcn_conv_29/transpose/ReadVariableOp$gcn_conv_29/transpose/ReadVariableOp2H
"gcn_conv_30/BiasAdd/ReadVariableOp"gcn_conv_30/BiasAdd/ReadVariableOp2L
$gcn_conv_30/transpose/ReadVariableOp$gcn_conv_30/transpose/ReadVariableOp2H
"gcn_conv_31/BiasAdd/ReadVariableOp"gcn_conv_31/BiasAdd/ReadVariableOp2L
$gcn_conv_31/transpose/ReadVariableOp$gcn_conv_31/transpose/ReadVariableOp2H
"gcn_conv_32/BiasAdd/ReadVariableOp"gcn_conv_32/BiasAdd/ReadVariableOp2L
$gcn_conv_32/transpose/ReadVariableOp$gcn_conv_32/transpose/ReadVariableOp2H
"gcn_conv_33/BiasAdd/ReadVariableOp"gcn_conv_33/BiasAdd/ReadVariableOp2L
$gcn_conv_33/transpose/ReadVariableOp$gcn_conv_33/transpose/ReadVariableOp:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_defaultû
J
input_21>
serving_default_input_21:0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
S
input_22G
serving_default_input_22:0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<
dense_130
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:

layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
Ì
kwargs_keys

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ì
kwargs_keys

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
Ì
&kwargs_keys

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
Ì
/kwargs_keys

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
Ì
8kwargs_keys

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
(
A	keras_api"
_tf_keras_layer
»

Bkernel
Cbias
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Jkernel
Kbias
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
ë
Riter

Sbeta_1

Tbeta_2
	Udecay
Vlearning_ratemmmm'm(m0m1m9m:mBmCmJmKmvvvv'v(v0v1v 9v¡:v¢Bv£Cv¤Jv¥Kv¦"
	optimizer

0
1
2
3
'4
(5
06
17
98
:9
B10
C11
J12
K13"
trackable_list_wrapper

0
1
2
3
'4
(5
06
17
98
:9
B10
C11
J12
K13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ò2ï
)__inference_model_6_layer_call_fn_3496100
)__inference_model_6_layer_call_fn_3496443
)__inference_model_6_layer_call_fn_3496477
)__inference_model_6_layer_call_fn_3496319À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Þ2Û
D__inference_model_6_layer_call_and_return_conditional_losses_3496622
D__inference_model_6_layer_call_and_return_conditional_losses_3496767
D__inference_model_6_layer_call_and_return_conditional_losses_3496361
D__inference_model_6_layer_call_and_return_conditional_losses_3496403À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ØBÕ
"__inference__wrapped_model_3495844input_21input_22"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
\serving_default"
signature_map
 "
trackable_list_wrapper
$:"		2gcn_conv_29/kernel
:	2gcn_conv_29/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
-__inference_gcn_conv_29_layer_call_fn_3496813
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
H__inference_gcn_conv_29_layer_call_and_return_conditional_losses_3496843
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
$:"		2gcn_conv_30/kernel
:	2gcn_conv_30/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
-__inference_gcn_conv_30_layer_call_fn_3496853
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
H__inference_gcn_conv_30_layer_call_and_return_conditional_losses_3496883
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
$:"		2gcn_conv_31/kernel
:	2gcn_conv_31/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
-__inference_gcn_conv_31_layer_call_fn_3496893
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
H__inference_gcn_conv_31_layer_call_and_return_conditional_losses_3496923
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
$:"		2gcn_conv_32/kernel
:	2gcn_conv_32/bias
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
­
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
-__inference_gcn_conv_32_layer_call_fn_3496933
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
H__inference_gcn_conv_32_layer_call_and_return_conditional_losses_3496963
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
$:"		2gcn_conv_33/kernel
:	2gcn_conv_33/bias
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
-__inference_gcn_conv_33_layer_call_fn_3496973
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
H__inference_gcn_conv_33_layer_call_and_return_conditional_losses_3497003
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"
_generic_user_object
!:	2dense_12/kernel
:2dense_12/bias
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_dense_12_layer_call_fn_3497012¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_12_layer_call_and_return_conditional_losses_3497023¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
!:2dense_13/kernel
:2dense_13/bias
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_dense_13_layer_call_fn_3497032¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_13_layer_call_and_return_conditional_losses_3497042¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÕBÒ
%__inference_signature_wrapper_3496803input_21input_22"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
):'		2Adam/gcn_conv_29/kernel/m
#:!	2Adam/gcn_conv_29/bias/m
):'		2Adam/gcn_conv_30/kernel/m
#:!	2Adam/gcn_conv_30/bias/m
):'		2Adam/gcn_conv_31/kernel/m
#:!	2Adam/gcn_conv_31/bias/m
):'		2Adam/gcn_conv_32/kernel/m
#:!	2Adam/gcn_conv_32/bias/m
):'		2Adam/gcn_conv_33/kernel/m
#:!	2Adam/gcn_conv_33/bias/m
&:$	2Adam/dense_12/kernel/m
 :2Adam/dense_12/bias/m
&:$2Adam/dense_13/kernel/m
 :2Adam/dense_13/bias/m
):'		2Adam/gcn_conv_29/kernel/v
#:!	2Adam/gcn_conv_29/bias/v
):'		2Adam/gcn_conv_30/kernel/v
#:!	2Adam/gcn_conv_30/bias/v
):'		2Adam/gcn_conv_31/kernel/v
#:!	2Adam/gcn_conv_31/bias/v
):'		2Adam/gcn_conv_32/kernel/v
#:!	2Adam/gcn_conv_32/bias/v
):'		2Adam/gcn_conv_33/kernel/v
#:!	2Adam/gcn_conv_33/bias/v
&:$	2Adam/dense_12/kernel/v
 :2Adam/dense_12/bias/v
&:$2Adam/dense_13/kernel/v
 :2Adam/dense_13/bias/vë
"__inference__wrapped_model_3495844Ä'(019:BCJK}¢z
s¢p
n¢k
/,
input_21ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
input_22'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_13"
dense_13ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_12_layer_call_and_return_conditional_losses_3497023\BC/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_12_layer_call_fn_3497012OBC/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_13_layer_call_and_return_conditional_losses_3497042\JK/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_13_layer_call_fn_3497032OJK/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
H__inference_gcn_conv_29_layer_call_and_return_conditional_losses_3496843·}¢z
s¢p
nk
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
inputs/1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
 Ü
-__inference_gcn_conv_29_layer_call_fn_3496813ª}¢z
s¢p
nk
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
inputs/1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
H__inference_gcn_conv_30_layer_call_and_return_conditional_losses_3496883·}¢z
s¢p
nk
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
inputs/1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
 Ü
-__inference_gcn_conv_30_layer_call_fn_3496853ª}¢z
s¢p
nk
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
inputs/1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
H__inference_gcn_conv_31_layer_call_and_return_conditional_losses_3496923·'(}¢z
s¢p
nk
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
inputs/1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
 Ü
-__inference_gcn_conv_31_layer_call_fn_3496893ª'(}¢z
s¢p
nk
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
inputs/1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
H__inference_gcn_conv_32_layer_call_and_return_conditional_losses_3496963·01}¢z
s¢p
nk
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
inputs/1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
 Ü
-__inference_gcn_conv_32_layer_call_fn_3496933ª01}¢z
s¢p
nk
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
inputs/1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
H__inference_gcn_conv_33_layer_call_and_return_conditional_losses_3497003·9:}¢z
s¢p
nk
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
inputs/1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
 Ü
-__inference_gcn_conv_33_layer_call_fn_3496973ª9:}¢z
s¢p
nk
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
inputs/1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
D__inference_model_6_layer_call_and_return_conditional_losses_3496361À'(019:BCJK¢
{¢x
n¢k
/,
input_21ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
input_22'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
D__inference_model_6_layer_call_and_return_conditional_losses_3496403À'(019:BCJK¢
{¢x
n¢k
/,
input_21ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
input_22'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
D__inference_model_6_layer_call_and_return_conditional_losses_3496622À'(019:BCJK¢
{¢x
n¢k
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
inputs/1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
D__inference_model_6_layer_call_and_return_conditional_losses_3496767À'(019:BCJK¢
{¢x
n¢k
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
inputs/1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 á
)__inference_model_6_layer_call_fn_3496100³'(019:BCJK¢
{¢x
n¢k
/,
input_21ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
input_22'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿá
)__inference_model_6_layer_call_fn_3496319³'(019:BCJK¢
{¢x
n¢k
/,
input_21ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
input_22'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿá
)__inference_model_6_layer_call_fn_3496443³'(019:BCJK¢
{¢x
n¢k
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
inputs/1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿá
)__inference_model_6_layer_call_fn_3496477³'(019:BCJK¢
{¢x
n¢k
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
85
inputs/1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
%__inference_signature_wrapper_3496803Û'(019:BCJK¢
¢ 
ª
;
input_21/,
input_21ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
D
input_2285
input_22'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_13"
dense_13ÿÿÿÿÿÿÿÿÿ