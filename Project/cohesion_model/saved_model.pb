??
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
z
dense_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_60/kernel
s
#dense_60/kernel/Read/ReadVariableOpReadVariableOpdense_60/kernel*
_output_shapes

:@ *
dtype0
r
dense_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_60/bias
k
!dense_60/bias/Read/ReadVariableOpReadVariableOpdense_60/bias*
_output_shapes
: *
dtype0
z
dense_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_61/kernel
s
#dense_61/kernel/Read/ReadVariableOpReadVariableOpdense_61/kernel*
_output_shapes

: *
dtype0
r
dense_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_61/bias
k
!dense_61/bias/Read/ReadVariableOpReadVariableOpdense_61/bias*
_output_shapes
:*
dtype0
z
dense_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_62/kernel
s
#dense_62/kernel/Read/ReadVariableOpReadVariableOpdense_62/kernel*
_output_shapes

:*
dtype0
r
dense_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_62/bias
k
!dense_62/bias/Read/ReadVariableOpReadVariableOpdense_62/bias*
_output_shapes
:*
dtype0
z
dense_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_63/kernel
s
#dense_63/kernel/Read/ReadVariableOpReadVariableOpdense_63/kernel*
_output_shapes

:*
dtype0
r
dense_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_63/bias
k
!dense_63/bias/Read/ReadVariableOpReadVariableOpdense_63/bias*
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
?
'simple_rnn_15/simple_rnn_cell_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*8
shared_name)'simple_rnn_15/simple_rnn_cell_15/kernel
?
;simple_rnn_15/simple_rnn_cell_15/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_15/simple_rnn_cell_15/kernel*
_output_shapes
:	?@*
dtype0
?
1simple_rnn_15/simple_rnn_cell_15/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*B
shared_name31simple_rnn_15/simple_rnn_cell_15/recurrent_kernel
?
Esimple_rnn_15/simple_rnn_cell_15/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_15/simple_rnn_cell_15/recurrent_kernel*
_output_shapes

:@@*
dtype0
?
%simple_rnn_15/simple_rnn_cell_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%simple_rnn_15/simple_rnn_cell_15/bias
?
9simple_rnn_15/simple_rnn_cell_15/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_15/simple_rnn_cell_15/bias*
_output_shapes
:@*
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
?
Adam/dense_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_60/kernel/m
?
*Adam/dense_60/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/m*
_output_shapes

:@ *
dtype0
?
Adam/dense_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_60/bias/m
y
(Adam/dense_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_61/kernel/m
?
*Adam/dense_61/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_61/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_61/bias/m
y
(Adam/dense_61/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_61/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_62/kernel/m
?
*Adam/dense_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_62/bias/m
y
(Adam/dense_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_63/kernel/m
?
*Adam/dense_63/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_63/bias/m
y
(Adam/dense_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/m*
_output_shapes
:*
dtype0
?
.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*?
shared_name0.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/m
?
BAdam/simple_rnn_15/simple_rnn_cell_15/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/m*
_output_shapes
:	?@*
dtype0
?
8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*I
shared_name:8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/m
?
LAdam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/m*
_output_shapes

:@@*
dtype0
?
,Adam/simple_rnn_15/simple_rnn_cell_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,Adam/simple_rnn_15/simple_rnn_cell_15/bias/m
?
@Adam/simple_rnn_15/simple_rnn_cell_15/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_15/simple_rnn_cell_15/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_60/kernel/v
?
*Adam/dense_60/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/v*
_output_shapes

:@ *
dtype0
?
Adam/dense_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_60/bias/v
y
(Adam/dense_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_61/kernel/v
?
*Adam/dense_61/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_61/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_61/bias/v
y
(Adam/dense_61/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_61/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_62/kernel/v
?
*Adam/dense_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_62/bias/v
y
(Adam/dense_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_63/kernel/v
?
*Adam/dense_63/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_63/bias/v
y
(Adam/dense_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/v*
_output_shapes
:*
dtype0
?
.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*?
shared_name0.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/v
?
BAdam/simple_rnn_15/simple_rnn_cell_15/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/v*
_output_shapes
:	?@*
dtype0
?
8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*I
shared_name:8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/v
?
LAdam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/v*
_output_shapes

:@@*
dtype0
?
,Adam/simple_rnn_15/simple_rnn_cell_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,Adam/simple_rnn_15/simple_rnn_cell_15/bias/v
?
@Adam/simple_rnn_15/simple_rnn_cell_15/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_15/simple_rnn_cell_15/bias/v*
_output_shapes
:@*
dtype0

NoOpNoOp
?=
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?=
value?=B?= B?=
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
l
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
 	variables
!regularization_losses
"trainable_variables
#	keras_api
h

$kernel
%bias
&	variables
'regularization_losses
(trainable_variables
)	keras_api
?
*iter

+beta_1

,beta_2
	-decay
.learning_ratememfmgmhmimj$mk%ml/mm0mn1movpvqvrvsvtvu$vv%vw/vx0vy1vz
N
/0
01
12
3
4
5
6
7
8
$9
%10
 
N
/0
01
12
3
4
5
6
7
8
$9
%10
?
	variables

2layers
regularization_losses
3non_trainable_variables
4layer_regularization_losses
	trainable_variables
5layer_metrics
6metrics
 
~

/kernel
0recurrent_kernel
1bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
 

/0
01
12
 

/0
01
12
?
	variables

;layers
<non_trainable_variables
=layer_regularization_losses
regularization_losses
trainable_variables

>states
?layer_metrics
@metrics
[Y
VARIABLE_VALUEdense_60/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_60/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
Anon_trainable_variables
Blayer_regularization_losses

Clayers
	variables
regularization_losses
trainable_variables
Dlayer_metrics
Emetrics
[Y
VARIABLE_VALUEdense_61/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_61/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
Fnon_trainable_variables
Glayer_regularization_losses

Hlayers
	variables
regularization_losses
trainable_variables
Ilayer_metrics
Jmetrics
[Y
VARIABLE_VALUEdense_62/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_62/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
Knon_trainable_variables
Llayer_regularization_losses

Mlayers
 	variables
!regularization_losses
"trainable_variables
Nlayer_metrics
Ometrics
[Y
VARIABLE_VALUEdense_63/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_63/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1
 

$0
%1
?
Pnon_trainable_variables
Qlayer_regularization_losses

Rlayers
&	variables
'regularization_losses
(trainable_variables
Slayer_metrics
Tmetrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'simple_rnn_15/simple_rnn_cell_15/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1simple_rnn_15/simple_rnn_cell_15/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%simple_rnn_15/simple_rnn_cell_15/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
#
0
1
2
3
4
 
 
 

U0
V1

/0
01
12
 

/0
01
12
?
Wnon_trainable_variables
Xlayer_regularization_losses

Ylayers
7	variables
8regularization_losses
9trainable_variables
Zlayer_metrics
[metrics

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	\total
	]count
^	variables
_	keras_api
D
	`total
	acount
b
_fn_kwargs
c	variables
d	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

\0
]1

^	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

`0
a1

c	variables
~|
VARIABLE_VALUEAdam/dense_60/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_60/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_61/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_61/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_62/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_62/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_63/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_63/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/simple_rnn_15/simple_rnn_cell_15/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_60/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_60/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_61/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_61/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_62/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_62/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_63/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_63/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/simple_rnn_15/simple_rnn_cell_15/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
#serving_default_simple_rnn_15_inputPlaceholder*,
_output_shapes
:?????????p?*
dtype0*!
shape:?????????p?
?
StatefulPartitionedCallStatefulPartitionedCall#serving_default_simple_rnn_15_input'simple_rnn_15/simple_rnn_cell_15/kernel%simple_rnn_15/simple_rnn_cell_15/bias1simple_rnn_15/simple_rnn_cell_15/recurrent_kerneldense_60/kerneldense_60/biasdense_61/kerneldense_61/biasdense_62/kerneldense_62/biasdense_63/kerneldense_63/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_17939
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_60/kernel/Read/ReadVariableOp!dense_60/bias/Read/ReadVariableOp#dense_61/kernel/Read/ReadVariableOp!dense_61/bias/Read/ReadVariableOp#dense_62/kernel/Read/ReadVariableOp!dense_62/bias/Read/ReadVariableOp#dense_63/kernel/Read/ReadVariableOp!dense_63/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp;simple_rnn_15/simple_rnn_cell_15/kernel/Read/ReadVariableOpEsimple_rnn_15/simple_rnn_cell_15/recurrent_kernel/Read/ReadVariableOp9simple_rnn_15/simple_rnn_cell_15/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_60/kernel/m/Read/ReadVariableOp(Adam/dense_60/bias/m/Read/ReadVariableOp*Adam/dense_61/kernel/m/Read/ReadVariableOp(Adam/dense_61/bias/m/Read/ReadVariableOp*Adam/dense_62/kernel/m/Read/ReadVariableOp(Adam/dense_62/bias/m/Read/ReadVariableOp*Adam/dense_63/kernel/m/Read/ReadVariableOp(Adam/dense_63/bias/m/Read/ReadVariableOpBAdam/simple_rnn_15/simple_rnn_cell_15/kernel/m/Read/ReadVariableOpLAdam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/m/Read/ReadVariableOp@Adam/simple_rnn_15/simple_rnn_cell_15/bias/m/Read/ReadVariableOp*Adam/dense_60/kernel/v/Read/ReadVariableOp(Adam/dense_60/bias/v/Read/ReadVariableOp*Adam/dense_61/kernel/v/Read/ReadVariableOp(Adam/dense_61/bias/v/Read/ReadVariableOp*Adam/dense_62/kernel/v/Read/ReadVariableOp(Adam/dense_62/bias/v/Read/ReadVariableOp*Adam/dense_63/kernel/v/Read/ReadVariableOp(Adam/dense_63/bias/v/Read/ReadVariableOpBAdam/simple_rnn_15/simple_rnn_cell_15/kernel/v/Read/ReadVariableOpLAdam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/v/Read/ReadVariableOp@Adam/simple_rnn_15/simple_rnn_cell_15/bias/v/Read/ReadVariableOpConst*7
Tin0
.2,	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_19056
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_60/kerneldense_60/biasdense_61/kerneldense_61/biasdense_62/kerneldense_62/biasdense_63/kerneldense_63/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate'simple_rnn_15/simple_rnn_cell_15/kernel1simple_rnn_15/simple_rnn_cell_15/recurrent_kernel%simple_rnn_15/simple_rnn_cell_15/biastotalcounttotal_1count_1Adam/dense_60/kernel/mAdam/dense_60/bias/mAdam/dense_61/kernel/mAdam/dense_61/bias/mAdam/dense_62/kernel/mAdam/dense_62/bias/mAdam/dense_63/kernel/mAdam/dense_63/bias/m.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/m8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/m,Adam/simple_rnn_15/simple_rnn_cell_15/bias/mAdam/dense_60/kernel/vAdam/dense_60/bias/vAdam/dense_61/kernel/vAdam/dense_61/bias/vAdam/dense_62/kernel/vAdam/dense_62/bias/vAdam/dense_63/kernel/vAdam/dense_63/bias/v.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/v8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/v,Adam/simple_rnn_15/simple_rnn_cell_15/bias/v*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_19192??
?	
?
#__inference_signature_wrapper_17939
simple_rnn_15_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_168762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????p?:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
,
_output_shapes
:?????????p?
-
_user_specified_namesimple_rnn_15_input
??
?
H__inference_sequential_15_layer_call_and_return_conditional_losses_18219

inputsC
?simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resourceD
@simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resourceE
Asimple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource+
'dense_60_matmul_readvariableop_resource,
(dense_60_biasadd_readvariableop_resource+
'dense_61_matmul_readvariableop_resource,
(dense_61_biasadd_readvariableop_resource+
'dense_62_matmul_readvariableop_resource,
(dense_62_biasadd_readvariableop_resource+
'dense_63_matmul_readvariableop_resource,
(dense_63_biasadd_readvariableop_resource
identity??dense_60/BiasAdd/ReadVariableOp?dense_60/MatMul/ReadVariableOp?dense_61/BiasAdd/ReadVariableOp?dense_61/MatMul/ReadVariableOp?dense_62/BiasAdd/ReadVariableOp?dense_62/MatMul/ReadVariableOp?dense_63/BiasAdd/ReadVariableOp?dense_63/MatMul/ReadVariableOp?7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp?6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp?8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp?simple_rnn_15/while`
simple_rnn_15/ShapeShapeinputs*
T0*
_output_shapes
:2
simple_rnn_15/Shape?
!simple_rnn_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!simple_rnn_15/strided_slice/stack?
#simple_rnn_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_15/strided_slice/stack_1?
#simple_rnn_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_15/strided_slice/stack_2?
simple_rnn_15/strided_sliceStridedSlicesimple_rnn_15/Shape:output:0*simple_rnn_15/strided_slice/stack:output:0,simple_rnn_15/strided_slice/stack_1:output:0,simple_rnn_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_15/strided_slicex
simple_rnn_15/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_15/zeros/mul/y?
simple_rnn_15/zeros/mulMul$simple_rnn_15/strided_slice:output:0"simple_rnn_15/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_15/zeros/mul{
simple_rnn_15/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
simple_rnn_15/zeros/Less/y?
simple_rnn_15/zeros/LessLesssimple_rnn_15/zeros/mul:z:0#simple_rnn_15/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_15/zeros/Less~
simple_rnn_15/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_15/zeros/packed/1?
simple_rnn_15/zeros/packedPack$simple_rnn_15/strided_slice:output:0%simple_rnn_15/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_15/zeros/packed{
simple_rnn_15/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_15/zeros/Const?
simple_rnn_15/zerosFill#simple_rnn_15/zeros/packed:output:0"simple_rnn_15/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_15/zeros?
simple_rnn_15/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_15/transpose/perm?
simple_rnn_15/transpose	Transposeinputs%simple_rnn_15/transpose/perm:output:0*
T0*,
_output_shapes
:p??????????2
simple_rnn_15/transposey
simple_rnn_15/Shape_1Shapesimple_rnn_15/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_15/Shape_1?
#simple_rnn_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_15/strided_slice_1/stack?
%simple_rnn_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_15/strided_slice_1/stack_1?
%simple_rnn_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_15/strided_slice_1/stack_2?
simple_rnn_15/strided_slice_1StridedSlicesimple_rnn_15/Shape_1:output:0,simple_rnn_15/strided_slice_1/stack:output:0.simple_rnn_15/strided_slice_1/stack_1:output:0.simple_rnn_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_15/strided_slice_1?
)simple_rnn_15/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2+
)simple_rnn_15/TensorArrayV2/element_shape?
simple_rnn_15/TensorArrayV2TensorListReserve2simple_rnn_15/TensorArrayV2/element_shape:output:0&simple_rnn_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_15/TensorArrayV2?
Csimple_rnn_15/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2E
Csimple_rnn_15/TensorArrayUnstack/TensorListFromTensor/element_shape?
5simple_rnn_15/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_15/transpose:y:0Lsimple_rnn_15/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5simple_rnn_15/TensorArrayUnstack/TensorListFromTensor?
#simple_rnn_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_15/strided_slice_2/stack?
%simple_rnn_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_15/strided_slice_2/stack_1?
%simple_rnn_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_15/strided_slice_2/stack_2?
simple_rnn_15/strided_slice_2StridedSlicesimple_rnn_15/transpose:y:0,simple_rnn_15/strided_slice_2/stack:output:0.simple_rnn_15/strided_slice_2/stack_1:output:0.simple_rnn_15/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
simple_rnn_15/strided_slice_2?
6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp?simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype028
6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp?
'simple_rnn_15/simple_rnn_cell_15/MatMulMatMul&simple_rnn_15/strided_slice_2:output:0>simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2)
'simple_rnn_15/simple_rnn_cell_15/MatMul?
7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype029
7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp?
(simple_rnn_15/simple_rnn_cell_15/BiasAddBiasAdd1simple_rnn_15/simple_rnn_cell_15/MatMul:product:0?simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2*
(simple_rnn_15/simple_rnn_cell_15/BiasAdd?
8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02:
8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
)simple_rnn_15/simple_rnn_cell_15/MatMul_1MatMulsimple_rnn_15/zeros:output:0@simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2+
)simple_rnn_15/simple_rnn_cell_15/MatMul_1?
$simple_rnn_15/simple_rnn_cell_15/addAddV21simple_rnn_15/simple_rnn_cell_15/BiasAdd:output:03simple_rnn_15/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2&
$simple_rnn_15/simple_rnn_cell_15/add?
%simple_rnn_15/simple_rnn_cell_15/TanhTanh(simple_rnn_15/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2'
%simple_rnn_15/simple_rnn_cell_15/Tanh?
+simple_rnn_15/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2-
+simple_rnn_15/TensorArrayV2_1/element_shape?
simple_rnn_15/TensorArrayV2_1TensorListReserve4simple_rnn_15/TensorArrayV2_1/element_shape:output:0&simple_rnn_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_15/TensorArrayV2_1j
simple_rnn_15/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_15/time?
&simple_rnn_15/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&simple_rnn_15/while/maximum_iterations?
 simple_rnn_15/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 simple_rnn_15/while/loop_counter?
simple_rnn_15/whileWhile)simple_rnn_15/while/loop_counter:output:0/simple_rnn_15/while/maximum_iterations:output:0simple_rnn_15/time:output:0&simple_rnn_15/TensorArrayV2_1:handle:0simple_rnn_15/zeros:output:0&simple_rnn_15/strided_slice_1:output:0Esimple_rnn_15/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resource@simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resourceAsimple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_15_while_body_18125**
cond"R 
simple_rnn_15_while_cond_18124*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
simple_rnn_15/while?
>simple_rnn_15/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2@
>simple_rnn_15/TensorArrayV2Stack/TensorListStack/element_shape?
0simple_rnn_15/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_15/while:output:3Gsimple_rnn_15/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:p?????????@*
element_dtype022
0simple_rnn_15/TensorArrayV2Stack/TensorListStack?
#simple_rnn_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2%
#simple_rnn_15/strided_slice_3/stack?
%simple_rnn_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%simple_rnn_15/strided_slice_3/stack_1?
%simple_rnn_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_15/strided_slice_3/stack_2?
simple_rnn_15/strided_slice_3StridedSlice9simple_rnn_15/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_15/strided_slice_3/stack:output:0.simple_rnn_15/strided_slice_3/stack_1:output:0.simple_rnn_15/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
simple_rnn_15/strided_slice_3?
simple_rnn_15/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
simple_rnn_15/transpose_1/perm?
simple_rnn_15/transpose_1	Transpose9simple_rnn_15/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_15/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????p@2
simple_rnn_15/transpose_1?
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_60/MatMul/ReadVariableOp?
dense_60/MatMulMatMul&simple_rnn_15/strided_slice_3:output:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_60/MatMul?
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_60/BiasAdd/ReadVariableOp?
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_60/BiasAdds
dense_60/ReluReludense_60/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_60/Relu?
dense_61/MatMul/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_61/MatMul/ReadVariableOp?
dense_61/MatMulMatMuldense_60/Relu:activations:0&dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_61/MatMul?
dense_61/BiasAdd/ReadVariableOpReadVariableOp(dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_61/BiasAdd/ReadVariableOp?
dense_61/BiasAddBiasAdddense_61/MatMul:product:0'dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_61/BiasAdd|
dense_61/SigmoidSigmoiddense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_61/Sigmoid?
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_62/MatMul/ReadVariableOp?
dense_62/MatMulMatMuldense_61/Sigmoid:y:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_62/MatMul?
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_62/BiasAdd/ReadVariableOp?
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_62/BiasAdds
dense_62/ReluReludense_62/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_62/Relu?
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_63/MatMul/ReadVariableOp?
dense_63/MatMulMatMuldense_62/Relu:activations:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_63/MatMul?
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_63/BiasAdd/ReadVariableOp?
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_63/BiasAdd|
dense_63/SigmoidSigmoiddense_63/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_63/Sigmoid?
IdentityIdentitydense_63/Sigmoid:y:0 ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp ^dense_61/BiasAdd/ReadVariableOp^dense_61/MatMul/ReadVariableOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOp8^simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp7^simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp9^simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp^simple_rnn_15/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????p?:::::::::::2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp2B
dense_61/BiasAdd/ReadVariableOpdense_61/BiasAdd/ReadVariableOp2@
dense_61/MatMul/ReadVariableOpdense_61/MatMul/ReadVariableOp2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp2r
7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp2p
6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp2t
8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp2*
simple_rnn_15/whilesimple_rnn_15/while:T P
,
_output_shapes
:?????????p?
 
_user_specified_nameinputs
?	
?
-__inference_sequential_15_layer_call_fn_17902
simple_rnn_15_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_178772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????p?:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
,
_output_shapes
:?????????p?
-
_user_specified_namesimple_rnn_15_input
?
?
while_cond_18676
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_18676___redundant_placeholder03
/while_while_cond_18676___redundant_placeholder13
/while_while_cond_18676___redundant_placeholder23
/while_while_cond_18676___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?H
?
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_17615

inputs5
1simple_rnn_cell_15_matmul_readvariableop_resource6
2simple_rnn_cell_15_biasadd_readvariableop_resource7
3simple_rnn_cell_15_matmul_1_readvariableop_resource
identity??)simple_rnn_cell_15/BiasAdd/ReadVariableOp?(simple_rnn_cell_15/MatMul/ReadVariableOp?*simple_rnn_cell_15/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:p??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
(simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02*
(simple_rnn_cell_15/MatMul/ReadVariableOp?
simple_rnn_cell_15/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/MatMul?
)simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_15/BiasAdd/ReadVariableOp?
simple_rnn_cell_15/BiasAddBiasAdd#simple_rnn_cell_15/MatMul:product:01simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/BiasAdd?
*simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_15/MatMul_1/ReadVariableOp?
simple_rnn_cell_15/MatMul_1MatMulzeros:output:02simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/MatMul_1?
simple_rnn_cell_15/addAddV2#simple_rnn_cell_15/BiasAdd:output:0%simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/add?
simple_rnn_cell_15/TanhTanhsimple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_15_matmul_readvariableop_resource2simple_rnn_cell_15_biasadd_readvariableop_resource3simple_rnn_cell_15_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_17549*
condR
while_cond_17548*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:p?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????p@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_15/BiasAdd/ReadVariableOp)^simple_rnn_cell_15/MatMul/ReadVariableOp+^simple_rnn_cell_15/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????p?:::2V
)simple_rnn_cell_15/BiasAdd/ReadVariableOp)simple_rnn_cell_15/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_15/MatMul/ReadVariableOp(simple_rnn_cell_15/MatMul/ReadVariableOp2X
*simple_rnn_cell_15/MatMul_1/ReadVariableOp*simple_rnn_cell_15/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????p?
 
_user_specified_nameinputs
?
?
-__inference_simple_rnn_15_layer_call_fn_18765
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_173792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_18430
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_18430___redundant_placeholder03
/while_while_cond_18430___redundant_placeholder13
/while_while_cond_18430___redundant_placeholder23
/while_while_cond_18430___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?	
?
-__inference_sequential_15_layer_call_fn_17844
simple_rnn_15_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_178192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????p?:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
,
_output_shapes
:?????????p?
-
_user_specified_namesimple_rnn_15_input
?
?
while_cond_17198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_17198___redundant_placeholder03
/while_while_cond_17198___redundant_placeholder13
/while_while_cond_17198___redundant_placeholder23
/while_while_cond_17198___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
??
?
H__inference_sequential_15_layer_call_and_return_conditional_losses_18079

inputsC
?simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resourceD
@simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resourceE
Asimple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource+
'dense_60_matmul_readvariableop_resource,
(dense_60_biasadd_readvariableop_resource+
'dense_61_matmul_readvariableop_resource,
(dense_61_biasadd_readvariableop_resource+
'dense_62_matmul_readvariableop_resource,
(dense_62_biasadd_readvariableop_resource+
'dense_63_matmul_readvariableop_resource,
(dense_63_biasadd_readvariableop_resource
identity??dense_60/BiasAdd/ReadVariableOp?dense_60/MatMul/ReadVariableOp?dense_61/BiasAdd/ReadVariableOp?dense_61/MatMul/ReadVariableOp?dense_62/BiasAdd/ReadVariableOp?dense_62/MatMul/ReadVariableOp?dense_63/BiasAdd/ReadVariableOp?dense_63/MatMul/ReadVariableOp?7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp?6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp?8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp?simple_rnn_15/while`
simple_rnn_15/ShapeShapeinputs*
T0*
_output_shapes
:2
simple_rnn_15/Shape?
!simple_rnn_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!simple_rnn_15/strided_slice/stack?
#simple_rnn_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_15/strided_slice/stack_1?
#simple_rnn_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_15/strided_slice/stack_2?
simple_rnn_15/strided_sliceStridedSlicesimple_rnn_15/Shape:output:0*simple_rnn_15/strided_slice/stack:output:0,simple_rnn_15/strided_slice/stack_1:output:0,simple_rnn_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_15/strided_slicex
simple_rnn_15/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_15/zeros/mul/y?
simple_rnn_15/zeros/mulMul$simple_rnn_15/strided_slice:output:0"simple_rnn_15/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_15/zeros/mul{
simple_rnn_15/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
simple_rnn_15/zeros/Less/y?
simple_rnn_15/zeros/LessLesssimple_rnn_15/zeros/mul:z:0#simple_rnn_15/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_15/zeros/Less~
simple_rnn_15/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_15/zeros/packed/1?
simple_rnn_15/zeros/packedPack$simple_rnn_15/strided_slice:output:0%simple_rnn_15/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_15/zeros/packed{
simple_rnn_15/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_15/zeros/Const?
simple_rnn_15/zerosFill#simple_rnn_15/zeros/packed:output:0"simple_rnn_15/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_15/zeros?
simple_rnn_15/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_15/transpose/perm?
simple_rnn_15/transpose	Transposeinputs%simple_rnn_15/transpose/perm:output:0*
T0*,
_output_shapes
:p??????????2
simple_rnn_15/transposey
simple_rnn_15/Shape_1Shapesimple_rnn_15/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_15/Shape_1?
#simple_rnn_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_15/strided_slice_1/stack?
%simple_rnn_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_15/strided_slice_1/stack_1?
%simple_rnn_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_15/strided_slice_1/stack_2?
simple_rnn_15/strided_slice_1StridedSlicesimple_rnn_15/Shape_1:output:0,simple_rnn_15/strided_slice_1/stack:output:0.simple_rnn_15/strided_slice_1/stack_1:output:0.simple_rnn_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_15/strided_slice_1?
)simple_rnn_15/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2+
)simple_rnn_15/TensorArrayV2/element_shape?
simple_rnn_15/TensorArrayV2TensorListReserve2simple_rnn_15/TensorArrayV2/element_shape:output:0&simple_rnn_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_15/TensorArrayV2?
Csimple_rnn_15/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2E
Csimple_rnn_15/TensorArrayUnstack/TensorListFromTensor/element_shape?
5simple_rnn_15/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_15/transpose:y:0Lsimple_rnn_15/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5simple_rnn_15/TensorArrayUnstack/TensorListFromTensor?
#simple_rnn_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_15/strided_slice_2/stack?
%simple_rnn_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_15/strided_slice_2/stack_1?
%simple_rnn_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_15/strided_slice_2/stack_2?
simple_rnn_15/strided_slice_2StridedSlicesimple_rnn_15/transpose:y:0,simple_rnn_15/strided_slice_2/stack:output:0.simple_rnn_15/strided_slice_2/stack_1:output:0.simple_rnn_15/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
simple_rnn_15/strided_slice_2?
6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp?simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype028
6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp?
'simple_rnn_15/simple_rnn_cell_15/MatMulMatMul&simple_rnn_15/strided_slice_2:output:0>simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2)
'simple_rnn_15/simple_rnn_cell_15/MatMul?
7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype029
7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp?
(simple_rnn_15/simple_rnn_cell_15/BiasAddBiasAdd1simple_rnn_15/simple_rnn_cell_15/MatMul:product:0?simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2*
(simple_rnn_15/simple_rnn_cell_15/BiasAdd?
8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02:
8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
)simple_rnn_15/simple_rnn_cell_15/MatMul_1MatMulsimple_rnn_15/zeros:output:0@simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2+
)simple_rnn_15/simple_rnn_cell_15/MatMul_1?
$simple_rnn_15/simple_rnn_cell_15/addAddV21simple_rnn_15/simple_rnn_cell_15/BiasAdd:output:03simple_rnn_15/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2&
$simple_rnn_15/simple_rnn_cell_15/add?
%simple_rnn_15/simple_rnn_cell_15/TanhTanh(simple_rnn_15/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2'
%simple_rnn_15/simple_rnn_cell_15/Tanh?
+simple_rnn_15/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2-
+simple_rnn_15/TensorArrayV2_1/element_shape?
simple_rnn_15/TensorArrayV2_1TensorListReserve4simple_rnn_15/TensorArrayV2_1/element_shape:output:0&simple_rnn_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_15/TensorArrayV2_1j
simple_rnn_15/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_15/time?
&simple_rnn_15/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&simple_rnn_15/while/maximum_iterations?
 simple_rnn_15/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 simple_rnn_15/while/loop_counter?
simple_rnn_15/whileWhile)simple_rnn_15/while/loop_counter:output:0/simple_rnn_15/while/maximum_iterations:output:0simple_rnn_15/time:output:0&simple_rnn_15/TensorArrayV2_1:handle:0simple_rnn_15/zeros:output:0&simple_rnn_15/strided_slice_1:output:0Esimple_rnn_15/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resource@simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resourceAsimple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_15_while_body_17985**
cond"R 
simple_rnn_15_while_cond_17984*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
simple_rnn_15/while?
>simple_rnn_15/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2@
>simple_rnn_15/TensorArrayV2Stack/TensorListStack/element_shape?
0simple_rnn_15/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_15/while:output:3Gsimple_rnn_15/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:p?????????@*
element_dtype022
0simple_rnn_15/TensorArrayV2Stack/TensorListStack?
#simple_rnn_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2%
#simple_rnn_15/strided_slice_3/stack?
%simple_rnn_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%simple_rnn_15/strided_slice_3/stack_1?
%simple_rnn_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_15/strided_slice_3/stack_2?
simple_rnn_15/strided_slice_3StridedSlice9simple_rnn_15/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_15/strided_slice_3/stack:output:0.simple_rnn_15/strided_slice_3/stack_1:output:0.simple_rnn_15/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
simple_rnn_15/strided_slice_3?
simple_rnn_15/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
simple_rnn_15/transpose_1/perm?
simple_rnn_15/transpose_1	Transpose9simple_rnn_15/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_15/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????p@2
simple_rnn_15/transpose_1?
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_60/MatMul/ReadVariableOp?
dense_60/MatMulMatMul&simple_rnn_15/strided_slice_3:output:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_60/MatMul?
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_60/BiasAdd/ReadVariableOp?
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_60/BiasAdds
dense_60/ReluReludense_60/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_60/Relu?
dense_61/MatMul/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_61/MatMul/ReadVariableOp?
dense_61/MatMulMatMuldense_60/Relu:activations:0&dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_61/MatMul?
dense_61/BiasAdd/ReadVariableOpReadVariableOp(dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_61/BiasAdd/ReadVariableOp?
dense_61/BiasAddBiasAdddense_61/MatMul:product:0'dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_61/BiasAdd|
dense_61/SigmoidSigmoiddense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_61/Sigmoid?
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_62/MatMul/ReadVariableOp?
dense_62/MatMulMatMuldense_61/Sigmoid:y:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_62/MatMul?
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_62/BiasAdd/ReadVariableOp?
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_62/BiasAdds
dense_62/ReluReludense_62/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_62/Relu?
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_63/MatMul/ReadVariableOp?
dense_63/MatMulMatMuldense_62/Relu:activations:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_63/MatMul?
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_63/BiasAdd/ReadVariableOp?
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_63/BiasAdd|
dense_63/SigmoidSigmoiddense_63/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_63/Sigmoid?
IdentityIdentitydense_63/Sigmoid:y:0 ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp ^dense_61/BiasAdd/ReadVariableOp^dense_61/MatMul/ReadVariableOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOp8^simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp7^simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp9^simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp^simple_rnn_15/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????p?:::::::::::2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp2B
dense_61/BiasAdd/ReadVariableOpdense_61/BiasAdd/ReadVariableOp2@
dense_61/MatMul/ReadVariableOpdense_61/MatMul/ReadVariableOp2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp2r
7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp2p
6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp2t
8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp2*
simple_rnn_15/whilesimple_rnn_15/while:T P
,
_output_shapes
:?????????p?
 
_user_specified_nameinputs
?
?
while_cond_18564
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_18564___redundant_placeholder03
/while_while_cond_18564___redundant_placeholder13
/while_while_cond_18564___redundant_placeholder23
/while_while_cond_18564___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?T
?
,sequential_15_simple_rnn_15_while_body_16782T
Psequential_15_simple_rnn_15_while_sequential_15_simple_rnn_15_while_loop_counterZ
Vsequential_15_simple_rnn_15_while_sequential_15_simple_rnn_15_while_maximum_iterations1
-sequential_15_simple_rnn_15_while_placeholder3
/sequential_15_simple_rnn_15_while_placeholder_13
/sequential_15_simple_rnn_15_while_placeholder_2S
Osequential_15_simple_rnn_15_while_sequential_15_simple_rnn_15_strided_slice_1_0?
?sequential_15_simple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_sequential_15_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0Y
Usequential_15_simple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0Z
Vsequential_15_simple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0[
Wsequential_15_simple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0.
*sequential_15_simple_rnn_15_while_identity0
,sequential_15_simple_rnn_15_while_identity_10
,sequential_15_simple_rnn_15_while_identity_20
,sequential_15_simple_rnn_15_while_identity_30
,sequential_15_simple_rnn_15_while_identity_4Q
Msequential_15_simple_rnn_15_while_sequential_15_simple_rnn_15_strided_slice_1?
?sequential_15_simple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_sequential_15_simple_rnn_15_tensorarrayunstack_tensorlistfromtensorW
Ssequential_15_simple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resourceX
Tsequential_15_simple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resourceY
Usequential_15_simple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource??Ksequential_15/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?Jsequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?Lsequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
Ssequential_15/simple_rnn_15/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2U
Ssequential_15/simple_rnn_15/while/TensorArrayV2Read/TensorListGetItem/element_shape?
Esequential_15/simple_rnn_15/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_15_simple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_sequential_15_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0-sequential_15_simple_rnn_15_while_placeholder\sequential_15/simple_rnn_15/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02G
Esequential_15/simple_rnn_15/while/TensorArrayV2Read/TensorListGetItem?
Jsequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOpUsequential_15_simple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?@*
dtype02L
Jsequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?
;sequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMulMatMulLsequential_15/simple_rnn_15/while/TensorArrayV2Read/TensorListGetItem:item:0Rsequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2=
;sequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul?
Ksequential_15/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOpVsequential_15_simple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02M
Ksequential_15/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?
<sequential_15/simple_rnn_15/while/simple_rnn_cell_15/BiasAddBiasAddEsequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul:product:0Ssequential_15/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2>
<sequential_15/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd?
Lsequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOpWsequential_15_simple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02N
Lsequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
=sequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1MatMul/sequential_15_simple_rnn_15_while_placeholder_2Tsequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2?
=sequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1?
8sequential_15/simple_rnn_15/while/simple_rnn_cell_15/addAddV2Esequential_15/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd:output:0Gsequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2:
8sequential_15/simple_rnn_15/while/simple_rnn_cell_15/add?
9sequential_15/simple_rnn_15/while/simple_rnn_cell_15/TanhTanh<sequential_15/simple_rnn_15/while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2;
9sequential_15/simple_rnn_15/while/simple_rnn_cell_15/Tanh?
Fsequential_15/simple_rnn_15/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/sequential_15_simple_rnn_15_while_placeholder_1-sequential_15_simple_rnn_15_while_placeholder=sequential_15/simple_rnn_15/while/simple_rnn_cell_15/Tanh:y:0*
_output_shapes
: *
element_dtype02H
Fsequential_15/simple_rnn_15/while/TensorArrayV2Write/TensorListSetItem?
'sequential_15/simple_rnn_15/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_15/simple_rnn_15/while/add/y?
%sequential_15/simple_rnn_15/while/addAddV2-sequential_15_simple_rnn_15_while_placeholder0sequential_15/simple_rnn_15/while/add/y:output:0*
T0*
_output_shapes
: 2'
%sequential_15/simple_rnn_15/while/add?
)sequential_15/simple_rnn_15/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_15/simple_rnn_15/while/add_1/y?
'sequential_15/simple_rnn_15/while/add_1AddV2Psequential_15_simple_rnn_15_while_sequential_15_simple_rnn_15_while_loop_counter2sequential_15/simple_rnn_15/while/add_1/y:output:0*
T0*
_output_shapes
: 2)
'sequential_15/simple_rnn_15/while/add_1?
*sequential_15/simple_rnn_15/while/IdentityIdentity+sequential_15/simple_rnn_15/while/add_1:z:0L^sequential_15/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpK^sequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOpM^sequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_15/simple_rnn_15/while/Identity?
,sequential_15/simple_rnn_15/while/Identity_1IdentityVsequential_15_simple_rnn_15_while_sequential_15_simple_rnn_15_while_maximum_iterationsL^sequential_15/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpK^sequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOpM^sequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2.
,sequential_15/simple_rnn_15/while/Identity_1?
,sequential_15/simple_rnn_15/while/Identity_2Identity)sequential_15/simple_rnn_15/while/add:z:0L^sequential_15/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpK^sequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOpM^sequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2.
,sequential_15/simple_rnn_15/while/Identity_2?
,sequential_15/simple_rnn_15/while/Identity_3IdentityVsequential_15/simple_rnn_15/while/TensorArrayV2Write/TensorListSetItem:output_handle:0L^sequential_15/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpK^sequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOpM^sequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2.
,sequential_15/simple_rnn_15/while/Identity_3?
,sequential_15/simple_rnn_15/while/Identity_4Identity=sequential_15/simple_rnn_15/while/simple_rnn_cell_15/Tanh:y:0L^sequential_15/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpK^sequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOpM^sequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2.
,sequential_15/simple_rnn_15/while/Identity_4"a
*sequential_15_simple_rnn_15_while_identity3sequential_15/simple_rnn_15/while/Identity:output:0"e
,sequential_15_simple_rnn_15_while_identity_15sequential_15/simple_rnn_15/while/Identity_1:output:0"e
,sequential_15_simple_rnn_15_while_identity_25sequential_15/simple_rnn_15/while/Identity_2:output:0"e
,sequential_15_simple_rnn_15_while_identity_35sequential_15/simple_rnn_15/while/Identity_3:output:0"e
,sequential_15_simple_rnn_15_while_identity_45sequential_15/simple_rnn_15/while/Identity_4:output:0"?
Msequential_15_simple_rnn_15_while_sequential_15_simple_rnn_15_strided_slice_1Osequential_15_simple_rnn_15_while_sequential_15_simple_rnn_15_strided_slice_1_0"?
Tsequential_15_simple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resourceVsequential_15_simple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"?
Usequential_15_simple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resourceWsequential_15_simple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"?
Ssequential_15_simple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resourceUsequential_15_simple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0"?
?sequential_15_simple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_sequential_15_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor?sequential_15_simple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_sequential_15_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????@: : :::2?
Ksequential_15/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpKsequential_15/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2?
Jsequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOpJsequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp2?
Lsequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOpLsequential_15/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?	
?
C__inference_dense_61_layer_call_and_return_conditional_losses_18796

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?D
?
simple_rnn_15_while_body_181258
4simple_rnn_15_while_simple_rnn_15_while_loop_counter>
:simple_rnn_15_while_simple_rnn_15_while_maximum_iterations#
simple_rnn_15_while_placeholder%
!simple_rnn_15_while_placeholder_1%
!simple_rnn_15_while_placeholder_27
3simple_rnn_15_while_simple_rnn_15_strided_slice_1_0s
osimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0K
Gsimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0L
Hsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0M
Isimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0 
simple_rnn_15_while_identity"
simple_rnn_15_while_identity_1"
simple_rnn_15_while_identity_2"
simple_rnn_15_while_identity_3"
simple_rnn_15_while_identity_45
1simple_rnn_15_while_simple_rnn_15_strided_slice_1q
msimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensorI
Esimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resourceJ
Fsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resourceK
Gsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource??=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
Esimple_rnn_15/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2G
Esimple_rnn_15/while/TensorArrayV2Read/TensorListGetItem/element_shape?
7simple_rnn_15/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_15_while_placeholderNsimple_rnn_15/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype029
7simple_rnn_15/while/TensorArrayV2Read/TensorListGetItem?
<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?@*
dtype02>
<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?
-simple_rnn_15/while/simple_rnn_cell_15/MatMulMatMul>simple_rnn_15/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2/
-simple_rnn_15/while/simple_rnn_cell_15/MatMul?
=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02?
=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?
.simple_rnn_15/while/simple_rnn_cell_15/BiasAddBiasAdd7simple_rnn_15/while/simple_rnn_cell_15/MatMul:product:0Esimple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@20
.simple_rnn_15/while/simple_rnn_cell_15/BiasAdd?
>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02@
>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1MatMul!simple_rnn_15_while_placeholder_2Fsimple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@21
/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1?
*simple_rnn_15/while/simple_rnn_cell_15/addAddV27simple_rnn_15/while/simple_rnn_cell_15/BiasAdd:output:09simple_rnn_15/while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2,
*simple_rnn_15/while/simple_rnn_cell_15/add?
+simple_rnn_15/while/simple_rnn_cell_15/TanhTanh.simple_rnn_15/while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2-
+simple_rnn_15/while/simple_rnn_cell_15/Tanh?
8simple_rnn_15/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_15_while_placeholder_1simple_rnn_15_while_placeholder/simple_rnn_15/while/simple_rnn_cell_15/Tanh:y:0*
_output_shapes
: *
element_dtype02:
8simple_rnn_15/while/TensorArrayV2Write/TensorListSetItemx
simple_rnn_15/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_15/while/add/y?
simple_rnn_15/while/addAddV2simple_rnn_15_while_placeholder"simple_rnn_15/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_15/while/add|
simple_rnn_15/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_15/while/add_1/y?
simple_rnn_15/while/add_1AddV24simple_rnn_15_while_simple_rnn_15_while_loop_counter$simple_rnn_15/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_15/while/add_1?
simple_rnn_15/while/IdentityIdentitysimple_rnn_15/while/add_1:z:0>^simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=^simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?^simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_15/while/Identity?
simple_rnn_15/while/Identity_1Identity:simple_rnn_15_while_simple_rnn_15_while_maximum_iterations>^simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=^simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?^simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_15/while/Identity_1?
simple_rnn_15/while/Identity_2Identitysimple_rnn_15/while/add:z:0>^simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=^simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?^simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_15/while/Identity_2?
simple_rnn_15/while/Identity_3IdentityHsimple_rnn_15/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=^simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?^simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_15/while/Identity_3?
simple_rnn_15/while/Identity_4Identity/simple_rnn_15/while/simple_rnn_cell_15/Tanh:y:0>^simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=^simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?^simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2 
simple_rnn_15/while/Identity_4"E
simple_rnn_15_while_identity%simple_rnn_15/while/Identity:output:0"I
simple_rnn_15_while_identity_1'simple_rnn_15/while/Identity_1:output:0"I
simple_rnn_15_while_identity_2'simple_rnn_15/while/Identity_2:output:0"I
simple_rnn_15_while_identity_3'simple_rnn_15/while/Identity_3:output:0"I
simple_rnn_15_while_identity_4'simple_rnn_15/while/Identity_4:output:0"h
1simple_rnn_15_while_simple_rnn_15_strided_slice_13simple_rnn_15_while_simple_rnn_15_strided_slice_1_0"?
Fsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resourceHsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"?
Gsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resourceIsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"?
Esimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resourceGsimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0"?
msimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensorosimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????@: : :::2~
=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2|
<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp2?
>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?	
?
2__inference_simple_rnn_cell_15_layer_call_fn_18893

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_169252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:??????????:?????????@:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
?	
?
C__inference_dense_63_layer_call_and_return_conditional_losses_17737

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?D
?
simple_rnn_15_while_body_179858
4simple_rnn_15_while_simple_rnn_15_while_loop_counter>
:simple_rnn_15_while_simple_rnn_15_while_maximum_iterations#
simple_rnn_15_while_placeholder%
!simple_rnn_15_while_placeholder_1%
!simple_rnn_15_while_placeholder_27
3simple_rnn_15_while_simple_rnn_15_strided_slice_1_0s
osimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0K
Gsimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0L
Hsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0M
Isimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0 
simple_rnn_15_while_identity"
simple_rnn_15_while_identity_1"
simple_rnn_15_while_identity_2"
simple_rnn_15_while_identity_3"
simple_rnn_15_while_identity_45
1simple_rnn_15_while_simple_rnn_15_strided_slice_1q
msimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensorI
Esimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resourceJ
Fsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resourceK
Gsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource??=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
Esimple_rnn_15/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2G
Esimple_rnn_15/while/TensorArrayV2Read/TensorListGetItem/element_shape?
7simple_rnn_15/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_15_while_placeholderNsimple_rnn_15/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype029
7simple_rnn_15/while/TensorArrayV2Read/TensorListGetItem?
<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?@*
dtype02>
<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?
-simple_rnn_15/while/simple_rnn_cell_15/MatMulMatMul>simple_rnn_15/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2/
-simple_rnn_15/while/simple_rnn_cell_15/MatMul?
=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02?
=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?
.simple_rnn_15/while/simple_rnn_cell_15/BiasAddBiasAdd7simple_rnn_15/while/simple_rnn_cell_15/MatMul:product:0Esimple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@20
.simple_rnn_15/while/simple_rnn_cell_15/BiasAdd?
>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02@
>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1MatMul!simple_rnn_15_while_placeholder_2Fsimple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@21
/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1?
*simple_rnn_15/while/simple_rnn_cell_15/addAddV27simple_rnn_15/while/simple_rnn_cell_15/BiasAdd:output:09simple_rnn_15/while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2,
*simple_rnn_15/while/simple_rnn_cell_15/add?
+simple_rnn_15/while/simple_rnn_cell_15/TanhTanh.simple_rnn_15/while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2-
+simple_rnn_15/while/simple_rnn_cell_15/Tanh?
8simple_rnn_15/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_15_while_placeholder_1simple_rnn_15_while_placeholder/simple_rnn_15/while/simple_rnn_cell_15/Tanh:y:0*
_output_shapes
: *
element_dtype02:
8simple_rnn_15/while/TensorArrayV2Write/TensorListSetItemx
simple_rnn_15/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_15/while/add/y?
simple_rnn_15/while/addAddV2simple_rnn_15_while_placeholder"simple_rnn_15/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_15/while/add|
simple_rnn_15/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_15/while/add_1/y?
simple_rnn_15/while/add_1AddV24simple_rnn_15_while_simple_rnn_15_while_loop_counter$simple_rnn_15/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_15/while/add_1?
simple_rnn_15/while/IdentityIdentitysimple_rnn_15/while/add_1:z:0>^simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=^simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?^simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_15/while/Identity?
simple_rnn_15/while/Identity_1Identity:simple_rnn_15_while_simple_rnn_15_while_maximum_iterations>^simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=^simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?^simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_15/while/Identity_1?
simple_rnn_15/while/Identity_2Identitysimple_rnn_15/while/add:z:0>^simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=^simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?^simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_15/while/Identity_2?
simple_rnn_15/while/Identity_3IdentityHsimple_rnn_15/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=^simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?^simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_15/while/Identity_3?
simple_rnn_15/while/Identity_4Identity/simple_rnn_15/while/simple_rnn_cell_15/Tanh:y:0>^simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=^simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?^simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2 
simple_rnn_15/while/Identity_4"E
simple_rnn_15_while_identity%simple_rnn_15/while/Identity:output:0"I
simple_rnn_15_while_identity_1'simple_rnn_15/while/Identity_1:output:0"I
simple_rnn_15_while_identity_2'simple_rnn_15/while/Identity_2:output:0"I
simple_rnn_15_while_identity_3'simple_rnn_15/while/Identity_3:output:0"I
simple_rnn_15_while_identity_4'simple_rnn_15/while/Identity_4:output:0"h
1simple_rnn_15_while_simple_rnn_15_strided_slice_13simple_rnn_15_while_simple_rnn_15_strided_slice_1_0"?
Fsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resourceHsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"?
Gsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resourceIsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"?
Esimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resourceGsimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0"?
msimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensorosimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????@: : :::2~
=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2|
<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp2?
>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
}
(__inference_dense_60_layer_call_fn_18785

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_60_layer_call_and_return_conditional_losses_176562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
simple_rnn_15_while_cond_181248
4simple_rnn_15_while_simple_rnn_15_while_loop_counter>
:simple_rnn_15_while_simple_rnn_15_while_maximum_iterations#
simple_rnn_15_while_placeholder%
!simple_rnn_15_while_placeholder_1%
!simple_rnn_15_while_placeholder_2:
6simple_rnn_15_while_less_simple_rnn_15_strided_slice_1O
Ksimple_rnn_15_while_simple_rnn_15_while_cond_18124___redundant_placeholder0O
Ksimple_rnn_15_while_simple_rnn_15_while_cond_18124___redundant_placeholder1O
Ksimple_rnn_15_while_simple_rnn_15_while_cond_18124___redundant_placeholder2O
Ksimple_rnn_15_while_simple_rnn_15_while_cond_18124___redundant_placeholder3 
simple_rnn_15_while_identity
?
simple_rnn_15/while/LessLesssimple_rnn_15_while_placeholder6simple_rnn_15_while_less_simple_rnn_15_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_15/while/Less?
simple_rnn_15/while/IdentityIdentitysimple_rnn_15/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_15/while/Identity"E
simple_rnn_15_while_identity%simple_rnn_15/while/Identity:output:0*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?<
?
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_17262

inputs
simple_rnn_cell_15_17187
simple_rnn_cell_15_17189
simple_rnn_cell_15_17191
identity??*simple_rnn_cell_15/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
*simple_rnn_cell_15/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_15_17187simple_rnn_cell_15_17189simple_rnn_cell_15_17191*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_169252,
*simple_rnn_cell_15/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_15_17187simple_rnn_cell_15_17189simple_rnn_cell_15_17191*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_17199*
condR
while_cond_17198*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0+^simple_rnn_cell_15/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2X
*simple_rnn_cell_15/StatefulPartitionedCall*simple_rnn_cell_15/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?H
?
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_18385

inputs5
1simple_rnn_cell_15_matmul_readvariableop_resource6
2simple_rnn_cell_15_biasadd_readvariableop_resource7
3simple_rnn_cell_15_matmul_1_readvariableop_resource
identity??)simple_rnn_cell_15/BiasAdd/ReadVariableOp?(simple_rnn_cell_15/MatMul/ReadVariableOp?*simple_rnn_cell_15/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:p??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
(simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02*
(simple_rnn_cell_15/MatMul/ReadVariableOp?
simple_rnn_cell_15/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/MatMul?
)simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_15/BiasAdd/ReadVariableOp?
simple_rnn_cell_15/BiasAddBiasAdd#simple_rnn_cell_15/MatMul:product:01simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/BiasAdd?
*simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_15/MatMul_1/ReadVariableOp?
simple_rnn_cell_15/MatMul_1MatMulzeros:output:02simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/MatMul_1?
simple_rnn_cell_15/addAddV2#simple_rnn_cell_15/BiasAdd:output:0%simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/add?
simple_rnn_cell_15/TanhTanhsimple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_15_matmul_readvariableop_resource2simple_rnn_cell_15_biasadd_readvariableop_resource3simple_rnn_cell_15_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_18319*
condR
while_cond_18318*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:p?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????p@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_15/BiasAdd/ReadVariableOp)^simple_rnn_cell_15/MatMul/ReadVariableOp+^simple_rnn_cell_15/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????p?:::2V
)simple_rnn_cell_15/BiasAdd/ReadVariableOp)simple_rnn_cell_15/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_15/MatMul/ReadVariableOp(simple_rnn_cell_15/MatMul/ReadVariableOp2X
*simple_rnn_cell_15/MatMul_1/ReadVariableOp*simple_rnn_cell_15/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????p?
 
_user_specified_nameinputs
?4
?
while_body_17437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_15_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_15_matmul_readvariableop_resource<
8while_simple_rnn_cell_15_biasadd_readvariableop_resource=
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource??/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?.while/simple_rnn_cell_15/MatMul/ReadVariableOp?0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
.while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?@*
dtype020
.while/simple_rnn_cell_15/MatMul/ReadVariableOp?
while/simple_rnn_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
while/simple_rnn_cell_15/MatMul?
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?
 while/simple_rnn_cell_15/BiasAddBiasAdd)while/simple_rnn_cell_15/MatMul:product:07while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 while/simple_rnn_cell_15/BiasAdd?
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
!while/simple_rnn_cell_15/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2#
!while/simple_rnn_cell_15/MatMul_1?
while/simple_rnn_cell_15/addAddV2)while/simple_rnn_cell_15/BiasAdd:output:0+while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_15/add?
while/simple_rnn_cell_15/TanhTanh while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_15/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_15/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity!while/simple_rnn_cell_15/Tanh:y:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_15_matmul_readvariableop_resource9while_simple_rnn_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????@: : :::2b
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_15/MatMul/ReadVariableOp.while/simple_rnn_cell_15/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?H
?
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_18631
inputs_05
1simple_rnn_cell_15_matmul_readvariableop_resource6
2simple_rnn_cell_15_biasadd_readvariableop_resource7
3simple_rnn_cell_15_matmul_1_readvariableop_resource
identity??)simple_rnn_cell_15/BiasAdd/ReadVariableOp?(simple_rnn_cell_15/MatMul/ReadVariableOp?*simple_rnn_cell_15/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
(simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02*
(simple_rnn_cell_15/MatMul/ReadVariableOp?
simple_rnn_cell_15/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/MatMul?
)simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_15/BiasAdd/ReadVariableOp?
simple_rnn_cell_15/BiasAddBiasAdd#simple_rnn_cell_15/MatMul:product:01simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/BiasAdd?
*simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_15/MatMul_1/ReadVariableOp?
simple_rnn_cell_15/MatMul_1MatMulzeros:output:02simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/MatMul_1?
simple_rnn_cell_15/addAddV2#simple_rnn_cell_15/BiasAdd:output:0%simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/add?
simple_rnn_cell_15/TanhTanhsimple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_15_matmul_readvariableop_resource2simple_rnn_cell_15_biasadd_readvariableop_resource3simple_rnn_cell_15_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_18565*
condR
while_cond_18564*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_15/BiasAdd/ReadVariableOp)^simple_rnn_cell_15/MatMul/ReadVariableOp+^simple_rnn_cell_15/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2V
)simple_rnn_cell_15/BiasAdd/ReadVariableOp)simple_rnn_cell_15/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_15/MatMul/ReadVariableOp(simple_rnn_cell_15/MatMul/ReadVariableOp2X
*simple_rnn_cell_15/MatMul_1/ReadVariableOp*simple_rnn_cell_15/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
H__inference_sequential_15_layer_call_and_return_conditional_losses_17877

inputs
simple_rnn_15_17849
simple_rnn_15_17851
simple_rnn_15_17853
dense_60_17856
dense_60_17858
dense_61_17861
dense_61_17863
dense_62_17866
dense_62_17868
dense_63_17871
dense_63_17873
identity?? dense_60/StatefulPartitionedCall? dense_61/StatefulPartitionedCall? dense_62/StatefulPartitionedCall? dense_63/StatefulPartitionedCall?%simple_rnn_15/StatefulPartitionedCall?
%simple_rnn_15/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_15_17849simple_rnn_15_17851simple_rnn_15_17853*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_176152'
%simple_rnn_15/StatefulPartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_15/StatefulPartitionedCall:output:0dense_60_17856dense_60_17858*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_60_layer_call_and_return_conditional_losses_176562"
 dense_60/StatefulPartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_17861dense_61_17863*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_61_layer_call_and_return_conditional_losses_176832"
 dense_61/StatefulPartitionedCall?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall)dense_61/StatefulPartitionedCall:output:0dense_62_17866dense_62_17868*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_62_layer_call_and_return_conditional_losses_177102"
 dense_62/StatefulPartitionedCall?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_17871dense_63_17873*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_63_layer_call_and_return_conditional_losses_177372"
 dense_63/StatefulPartitionedCall?
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0!^dense_60/StatefulPartitionedCall!^dense_61/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall&^simple_rnn_15/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????p?:::::::::::2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2N
%simple_rnn_15/StatefulPartitionedCall%simple_rnn_15/StatefulPartitionedCall:T P
,
_output_shapes
:?????????p?
 
_user_specified_nameinputs
?
}
(__inference_dense_63_layer_call_fn_18845

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_63_layer_call_and_return_conditional_losses_177372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
!__inference__traced_restore_19192
file_prefix$
 assignvariableop_dense_60_kernel$
 assignvariableop_1_dense_60_bias&
"assignvariableop_2_dense_61_kernel$
 assignvariableop_3_dense_61_bias&
"assignvariableop_4_dense_62_kernel$
 assignvariableop_5_dense_62_bias&
"assignvariableop_6_dense_63_kernel$
 assignvariableop_7_dense_63_bias 
assignvariableop_8_adam_iter"
assignvariableop_9_adam_beta_1#
assignvariableop_10_adam_beta_2"
assignvariableop_11_adam_decay*
&assignvariableop_12_adam_learning_rate?
;assignvariableop_13_simple_rnn_15_simple_rnn_cell_15_kernelI
Eassignvariableop_14_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel=
9assignvariableop_15_simple_rnn_15_simple_rnn_cell_15_bias
assignvariableop_16_total
assignvariableop_17_count
assignvariableop_18_total_1
assignvariableop_19_count_1.
*assignvariableop_20_adam_dense_60_kernel_m,
(assignvariableop_21_adam_dense_60_bias_m.
*assignvariableop_22_adam_dense_61_kernel_m,
(assignvariableop_23_adam_dense_61_bias_m.
*assignvariableop_24_adam_dense_62_kernel_m,
(assignvariableop_25_adam_dense_62_bias_m.
*assignvariableop_26_adam_dense_63_kernel_m,
(assignvariableop_27_adam_dense_63_bias_mF
Bassignvariableop_28_adam_simple_rnn_15_simple_rnn_cell_15_kernel_mP
Lassignvariableop_29_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_mD
@assignvariableop_30_adam_simple_rnn_15_simple_rnn_cell_15_bias_m.
*assignvariableop_31_adam_dense_60_kernel_v,
(assignvariableop_32_adam_dense_60_bias_v.
*assignvariableop_33_adam_dense_61_kernel_v,
(assignvariableop_34_adam_dense_61_bias_v.
*assignvariableop_35_adam_dense_62_kernel_v,
(assignvariableop_36_adam_dense_62_bias_v.
*assignvariableop_37_adam_dense_63_kernel_v,
(assignvariableop_38_adam_dense_63_bias_vF
Bassignvariableop_39_adam_simple_rnn_15_simple_rnn_cell_15_kernel_vP
Lassignvariableop_40_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_vD
@assignvariableop_41_adam_simple_rnn_15_simple_rnn_cell_15_bias_v
identity_43??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_60_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_60_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_61_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_61_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_62_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_62_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_63_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_63_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp;assignvariableop_13_simple_rnn_15_simple_rnn_cell_15_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpEassignvariableop_14_simple_rnn_15_simple_rnn_cell_15_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp9assignvariableop_15_simple_rnn_15_simple_rnn_cell_15_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_60_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_60_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_61_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_61_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_62_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_dense_62_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_63_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_dense_63_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpBassignvariableop_28_adam_simple_rnn_15_simple_rnn_cell_15_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpLassignvariableop_29_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_simple_rnn_15_simple_rnn_cell_15_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_60_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_60_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_61_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_61_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_62_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_62_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_63_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_63_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpBassignvariableop_39_adam_simple_rnn_15_simple_rnn_cell_15_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpLassignvariableop_40_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp@assignvariableop_41_adam_simple_rnn_15_simple_rnn_cell_15_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_419
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_42?
Identity_43IdentityIdentity_42:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_43"#
identity_43Identity_43:output:0*?
_input_shapes?
?: ::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
}
(__inference_dense_61_layer_call_fn_18805

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_61_layer_call_and_return_conditional_losses_176832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
-__inference_sequential_15_layer_call_fn_18273

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_178772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????p?:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????p?
 
_user_specified_nameinputs
?Z
?
__inference__traced_save_19056
file_prefix.
*savev2_dense_60_kernel_read_readvariableop,
(savev2_dense_60_bias_read_readvariableop.
*savev2_dense_61_kernel_read_readvariableop,
(savev2_dense_61_bias_read_readvariableop.
*savev2_dense_62_kernel_read_readvariableop,
(savev2_dense_62_bias_read_readvariableop.
*savev2_dense_63_kernel_read_readvariableop,
(savev2_dense_63_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopF
Bsavev2_simple_rnn_15_simple_rnn_cell_15_kernel_read_readvariableopP
Lsavev2_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_read_readvariableopD
@savev2_simple_rnn_15_simple_rnn_cell_15_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_60_kernel_m_read_readvariableop3
/savev2_adam_dense_60_bias_m_read_readvariableop5
1savev2_adam_dense_61_kernel_m_read_readvariableop3
/savev2_adam_dense_61_bias_m_read_readvariableop5
1savev2_adam_dense_62_kernel_m_read_readvariableop3
/savev2_adam_dense_62_bias_m_read_readvariableop5
1savev2_adam_dense_63_kernel_m_read_readvariableop3
/savev2_adam_dense_63_bias_m_read_readvariableopM
Isavev2_adam_simple_rnn_15_simple_rnn_cell_15_kernel_m_read_readvariableopW
Ssavev2_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_m_read_readvariableopK
Gsavev2_adam_simple_rnn_15_simple_rnn_cell_15_bias_m_read_readvariableop5
1savev2_adam_dense_60_kernel_v_read_readvariableop3
/savev2_adam_dense_60_bias_v_read_readvariableop5
1savev2_adam_dense_61_kernel_v_read_readvariableop3
/savev2_adam_dense_61_bias_v_read_readvariableop5
1savev2_adam_dense_62_kernel_v_read_readvariableop3
/savev2_adam_dense_62_bias_v_read_readvariableop5
1savev2_adam_dense_63_kernel_v_read_readvariableop3
/savev2_adam_dense_63_bias_v_read_readvariableopM
Isavev2_adam_simple_rnn_15_simple_rnn_cell_15_kernel_v_read_readvariableopW
Ssavev2_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_v_read_readvariableopK
Gsavev2_adam_simple_rnn_15_simple_rnn_cell_15_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_60_kernel_read_readvariableop(savev2_dense_60_bias_read_readvariableop*savev2_dense_61_kernel_read_readvariableop(savev2_dense_61_bias_read_readvariableop*savev2_dense_62_kernel_read_readvariableop(savev2_dense_62_bias_read_readvariableop*savev2_dense_63_kernel_read_readvariableop(savev2_dense_63_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopBsavev2_simple_rnn_15_simple_rnn_cell_15_kernel_read_readvariableopLsavev2_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_read_readvariableop@savev2_simple_rnn_15_simple_rnn_cell_15_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_60_kernel_m_read_readvariableop/savev2_adam_dense_60_bias_m_read_readvariableop1savev2_adam_dense_61_kernel_m_read_readvariableop/savev2_adam_dense_61_bias_m_read_readvariableop1savev2_adam_dense_62_kernel_m_read_readvariableop/savev2_adam_dense_62_bias_m_read_readvariableop1savev2_adam_dense_63_kernel_m_read_readvariableop/savev2_adam_dense_63_bias_m_read_readvariableopIsavev2_adam_simple_rnn_15_simple_rnn_cell_15_kernel_m_read_readvariableopSsavev2_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_m_read_readvariableopGsavev2_adam_simple_rnn_15_simple_rnn_cell_15_bias_m_read_readvariableop1savev2_adam_dense_60_kernel_v_read_readvariableop/savev2_adam_dense_60_bias_v_read_readvariableop1savev2_adam_dense_61_kernel_v_read_readvariableop/savev2_adam_dense_61_bias_v_read_readvariableop1savev2_adam_dense_62_kernel_v_read_readvariableop/savev2_adam_dense_62_bias_v_read_readvariableop1savev2_adam_dense_63_kernel_v_read_readvariableop/savev2_adam_dense_63_bias_v_read_readvariableopIsavev2_adam_simple_rnn_15_simple_rnn_cell_15_kernel_v_read_readvariableopSsavev2_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_v_read_readvariableopGsavev2_adam_simple_rnn_15_simple_rnn_cell_15_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@ : : :::::: : : : : :	?@:@@:@: : : : :@ : : ::::::	?@:@@:@:@ : : ::::::	?@:@@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?@:$ 

_output_shapes

:@@: 

_output_shapes
:@:
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
: :$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	?@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$  

_output_shapes

:@ : !

_output_shapes
: :$" 

_output_shapes

: : #

_output_shapes
::$$ 

_output_shapes

:: %

_output_shapes
::$& 

_output_shapes

:: '

_output_shapes
::%(!

_output_shapes
:	?@:$) 

_output_shapes

:@@: *

_output_shapes
:@:+

_output_shapes
: 
?
?
,sequential_15_simple_rnn_15_while_cond_16781T
Psequential_15_simple_rnn_15_while_sequential_15_simple_rnn_15_while_loop_counterZ
Vsequential_15_simple_rnn_15_while_sequential_15_simple_rnn_15_while_maximum_iterations1
-sequential_15_simple_rnn_15_while_placeholder3
/sequential_15_simple_rnn_15_while_placeholder_13
/sequential_15_simple_rnn_15_while_placeholder_2V
Rsequential_15_simple_rnn_15_while_less_sequential_15_simple_rnn_15_strided_slice_1k
gsequential_15_simple_rnn_15_while_sequential_15_simple_rnn_15_while_cond_16781___redundant_placeholder0k
gsequential_15_simple_rnn_15_while_sequential_15_simple_rnn_15_while_cond_16781___redundant_placeholder1k
gsequential_15_simple_rnn_15_while_sequential_15_simple_rnn_15_while_cond_16781___redundant_placeholder2k
gsequential_15_simple_rnn_15_while_sequential_15_simple_rnn_15_while_cond_16781___redundant_placeholder3.
*sequential_15_simple_rnn_15_while_identity
?
&sequential_15/simple_rnn_15/while/LessLess-sequential_15_simple_rnn_15_while_placeholderRsequential_15_simple_rnn_15_while_less_sequential_15_simple_rnn_15_strided_slice_1*
T0*
_output_shapes
: 2(
&sequential_15/simple_rnn_15/while/Less?
*sequential_15/simple_rnn_15/while/IdentityIdentity*sequential_15/simple_rnn_15/while/Less:z:0*
T0
*
_output_shapes
: 2,
*sequential_15/simple_rnn_15/while/Identity"a
*sequential_15_simple_rnn_15_while_identity3sequential_15/simple_rnn_15/while/Identity:output:0*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?	
?
C__inference_dense_62_layer_call_and_return_conditional_losses_18816

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
}
(__inference_dense_62_layer_call_fn_18825

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_62_layer_call_and_return_conditional_losses_177102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
simple_rnn_15_while_cond_179848
4simple_rnn_15_while_simple_rnn_15_while_loop_counter>
:simple_rnn_15_while_simple_rnn_15_while_maximum_iterations#
simple_rnn_15_while_placeholder%
!simple_rnn_15_while_placeholder_1%
!simple_rnn_15_while_placeholder_2:
6simple_rnn_15_while_less_simple_rnn_15_strided_slice_1O
Ksimple_rnn_15_while_simple_rnn_15_while_cond_17984___redundant_placeholder0O
Ksimple_rnn_15_while_simple_rnn_15_while_cond_17984___redundant_placeholder1O
Ksimple_rnn_15_while_simple_rnn_15_while_cond_17984___redundant_placeholder2O
Ksimple_rnn_15_while_simple_rnn_15_while_cond_17984___redundant_placeholder3 
simple_rnn_15_while_identity
?
simple_rnn_15/while/LessLesssimple_rnn_15_while_placeholder6simple_rnn_15_while_less_simple_rnn_15_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_15/while/Less?
simple_rnn_15/while/IdentityIdentitysimple_rnn_15/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_15/while/Identity"E
simple_rnn_15_while_identity%simple_rnn_15/while/Identity:output:0*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?	
?
2__inference_simple_rnn_cell_15_layer_call_fn_18907

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_169422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:??????????:?????????@:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
?
?
M__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_18879

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????@2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:??????????:?????????@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
?4
?
while_body_18319
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_15_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_15_matmul_readvariableop_resource<
8while_simple_rnn_cell_15_biasadd_readvariableop_resource=
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource??/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?.while/simple_rnn_cell_15/MatMul/ReadVariableOp?0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
.while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?@*
dtype020
.while/simple_rnn_cell_15/MatMul/ReadVariableOp?
while/simple_rnn_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
while/simple_rnn_cell_15/MatMul?
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?
 while/simple_rnn_cell_15/BiasAddBiasAdd)while/simple_rnn_cell_15/MatMul:product:07while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 while/simple_rnn_cell_15/BiasAdd?
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
!while/simple_rnn_cell_15/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2#
!while/simple_rnn_cell_15/MatMul_1?
while/simple_rnn_cell_15/addAddV2)while/simple_rnn_cell_15/BiasAdd:output:0+while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_15/add?
while/simple_rnn_cell_15/TanhTanh while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_15/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_15/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity!while/simple_rnn_cell_15/Tanh:y:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_15_matmul_readvariableop_resource9while_simple_rnn_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????@: : :::2b
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_15/MatMul/ReadVariableOp.while/simple_rnn_cell_15/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?	
?
-__inference_sequential_15_layer_call_fn_18246

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_178192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????p?:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????p?
 
_user_specified_nameinputs
?#
?
while_body_17199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0$
 while_simple_rnn_cell_15_17221_0$
 while_simple_rnn_cell_15_17223_0$
 while_simple_rnn_cell_15_17225_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor"
while_simple_rnn_cell_15_17221"
while_simple_rnn_cell_15_17223"
while_simple_rnn_cell_15_17225??0while/simple_rnn_cell_15/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
0while/simple_rnn_cell_15/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_15_17221_0 while_simple_rnn_cell_15_17223_0 while_simple_rnn_cell_15_17225_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_1692522
0while/simple_rnn_cell_15/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_15/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:01^while/simple_rnn_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations1^while/simple_rnn_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:01^while/simple_rnn_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:01^while/simple_rnn_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity9while/simple_rnn_cell_15/StatefulPartitionedCall:output:11^while/simple_rnn_cell_15/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_15_17221 while_simple_rnn_cell_15_17221_0"B
while_simple_rnn_cell_15_17223 while_simple_rnn_cell_15_17223_0"B
while_simple_rnn_cell_15_17225 while_simple_rnn_cell_15_17225_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????@: : :::2d
0while/simple_rnn_cell_15/StatefulPartitionedCall0while/simple_rnn_cell_15/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
M__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_16942

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????@2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:??????????:?????????@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?4
?
while_body_18565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_15_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_15_matmul_readvariableop_resource<
8while_simple_rnn_cell_15_biasadd_readvariableop_resource=
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource??/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?.while/simple_rnn_cell_15/MatMul/ReadVariableOp?0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
.while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?@*
dtype020
.while/simple_rnn_cell_15/MatMul/ReadVariableOp?
while/simple_rnn_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
while/simple_rnn_cell_15/MatMul?
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?
 while/simple_rnn_cell_15/BiasAddBiasAdd)while/simple_rnn_cell_15/MatMul:product:07while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 while/simple_rnn_cell_15/BiasAdd?
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
!while/simple_rnn_cell_15/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2#
!while/simple_rnn_cell_15/MatMul_1?
while/simple_rnn_cell_15/addAddV2)while/simple_rnn_cell_15/BiasAdd:output:0+while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_15/add?
while/simple_rnn_cell_15/TanhTanh while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_15/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_15/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity!while/simple_rnn_cell_15/Tanh:y:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_15_matmul_readvariableop_resource9while_simple_rnn_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????@: : :::2b
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_15/MatMul/ReadVariableOp.while/simple_rnn_cell_15/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?	
?
C__inference_dense_60_layer_call_and_return_conditional_losses_18776

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
while_cond_17315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_17315___redundant_placeholder03
/while_while_cond_17315___redundant_placeholder13
/while_while_cond_17315___redundant_placeholder23
/while_while_cond_17315___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
M__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_16925

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????@2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:??????????:?????????@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?	
?
C__inference_dense_62_layer_call_and_return_conditional_losses_17710

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
M__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_18862

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdd?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????@2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:??????????:?????????@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
?
?
H__inference_sequential_15_layer_call_and_return_conditional_losses_17819

inputs
simple_rnn_15_17791
simple_rnn_15_17793
simple_rnn_15_17795
dense_60_17798
dense_60_17800
dense_61_17803
dense_61_17805
dense_62_17808
dense_62_17810
dense_63_17813
dense_63_17815
identity?? dense_60/StatefulPartitionedCall? dense_61/StatefulPartitionedCall? dense_62/StatefulPartitionedCall? dense_63/StatefulPartitionedCall?%simple_rnn_15/StatefulPartitionedCall?
%simple_rnn_15/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_15_17791simple_rnn_15_17793simple_rnn_15_17795*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_175032'
%simple_rnn_15/StatefulPartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_15/StatefulPartitionedCall:output:0dense_60_17798dense_60_17800*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_60_layer_call_and_return_conditional_losses_176562"
 dense_60/StatefulPartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_17803dense_61_17805*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_61_layer_call_and_return_conditional_losses_176832"
 dense_61/StatefulPartitionedCall?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall)dense_61/StatefulPartitionedCall:output:0dense_62_17808dense_62_17810*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_62_layer_call_and_return_conditional_losses_177102"
 dense_62/StatefulPartitionedCall?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_17813dense_63_17815*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_63_layer_call_and_return_conditional_losses_177372"
 dense_63/StatefulPartitionedCall?
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0!^dense_60/StatefulPartitionedCall!^dense_61/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall&^simple_rnn_15/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????p?:::::::::::2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2N
%simple_rnn_15/StatefulPartitionedCall%simple_rnn_15/StatefulPartitionedCall:T P
,
_output_shapes
:?????????p?
 
_user_specified_nameinputs
?H
?
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_17503

inputs5
1simple_rnn_cell_15_matmul_readvariableop_resource6
2simple_rnn_cell_15_biasadd_readvariableop_resource7
3simple_rnn_cell_15_matmul_1_readvariableop_resource
identity??)simple_rnn_cell_15/BiasAdd/ReadVariableOp?(simple_rnn_cell_15/MatMul/ReadVariableOp?*simple_rnn_cell_15/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:p??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
(simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02*
(simple_rnn_cell_15/MatMul/ReadVariableOp?
simple_rnn_cell_15/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/MatMul?
)simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_15/BiasAdd/ReadVariableOp?
simple_rnn_cell_15/BiasAddBiasAdd#simple_rnn_cell_15/MatMul:product:01simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/BiasAdd?
*simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_15/MatMul_1/ReadVariableOp?
simple_rnn_cell_15/MatMul_1MatMulzeros:output:02simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/MatMul_1?
simple_rnn_cell_15/addAddV2#simple_rnn_cell_15/BiasAdd:output:0%simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/add?
simple_rnn_cell_15/TanhTanhsimple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_15_matmul_readvariableop_resource2simple_rnn_cell_15_biasadd_readvariableop_resource3simple_rnn_cell_15_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_17437*
condR
while_cond_17436*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:p?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????p@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_15/BiasAdd/ReadVariableOp)^simple_rnn_cell_15/MatMul/ReadVariableOp+^simple_rnn_cell_15/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????p?:::2V
)simple_rnn_cell_15/BiasAdd/ReadVariableOp)simple_rnn_cell_15/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_15/MatMul/ReadVariableOp(simple_rnn_cell_15/MatMul/ReadVariableOp2X
*simple_rnn_cell_15/MatMul_1/ReadVariableOp*simple_rnn_cell_15/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????p?
 
_user_specified_nameinputs
?
?
H__inference_sequential_15_layer_call_and_return_conditional_losses_17785
simple_rnn_15_input
simple_rnn_15_17757
simple_rnn_15_17759
simple_rnn_15_17761
dense_60_17764
dense_60_17766
dense_61_17769
dense_61_17771
dense_62_17774
dense_62_17776
dense_63_17779
dense_63_17781
identity?? dense_60/StatefulPartitionedCall? dense_61/StatefulPartitionedCall? dense_62/StatefulPartitionedCall? dense_63/StatefulPartitionedCall?%simple_rnn_15/StatefulPartitionedCall?
%simple_rnn_15/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_15_inputsimple_rnn_15_17757simple_rnn_15_17759simple_rnn_15_17761*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_176152'
%simple_rnn_15/StatefulPartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_15/StatefulPartitionedCall:output:0dense_60_17764dense_60_17766*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_60_layer_call_and_return_conditional_losses_176562"
 dense_60/StatefulPartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_17769dense_61_17771*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_61_layer_call_and_return_conditional_losses_176832"
 dense_61/StatefulPartitionedCall?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall)dense_61/StatefulPartitionedCall:output:0dense_62_17774dense_62_17776*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_62_layer_call_and_return_conditional_losses_177102"
 dense_62/StatefulPartitionedCall?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_17779dense_63_17781*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_63_layer_call_and_return_conditional_losses_177372"
 dense_63/StatefulPartitionedCall?
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0!^dense_60/StatefulPartitionedCall!^dense_61/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall&^simple_rnn_15/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????p?:::::::::::2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2N
%simple_rnn_15/StatefulPartitionedCall%simple_rnn_15/StatefulPartitionedCall:a ]
,
_output_shapes
:?????????p?
-
_user_specified_namesimple_rnn_15_input
?
?
-__inference_simple_rnn_15_layer_call_fn_18508

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_175032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????p?:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????p?
 
_user_specified_nameinputs
?
?
while_cond_18318
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_18318___redundant_placeholder03
/while_while_cond_18318___redundant_placeholder13
/while_while_cond_18318___redundant_placeholder23
/while_while_cond_18318___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?<
?
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_17379

inputs
simple_rnn_cell_15_17304
simple_rnn_cell_15_17306
simple_rnn_cell_15_17308
identity??*simple_rnn_cell_15/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
*simple_rnn_cell_15/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_15_17304simple_rnn_cell_15_17306simple_rnn_cell_15_17308*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_169422,
*simple_rnn_cell_15/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_15_17304simple_rnn_cell_15_17306simple_rnn_cell_15_17308*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_17316*
condR
while_cond_17315*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0+^simple_rnn_cell_15/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2X
*simple_rnn_cell_15/StatefulPartitionedCall*simple_rnn_cell_15/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
while_cond_17548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_17548___redundant_placeholder03
/while_while_cond_17548___redundant_placeholder13
/while_while_cond_17548___redundant_placeholder23
/while_while_cond_17548___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?#
?
while_body_17316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0$
 while_simple_rnn_cell_15_17338_0$
 while_simple_rnn_cell_15_17340_0$
 while_simple_rnn_cell_15_17342_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor"
while_simple_rnn_cell_15_17338"
while_simple_rnn_cell_15_17340"
while_simple_rnn_cell_15_17342??0while/simple_rnn_cell_15/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
0while/simple_rnn_cell_15/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_15_17338_0 while_simple_rnn_cell_15_17340_0 while_simple_rnn_cell_15_17342_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_1694222
0while/simple_rnn_cell_15/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_15/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:01^while/simple_rnn_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations1^while/simple_rnn_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:01^while/simple_rnn_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:01^while/simple_rnn_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity9while/simple_rnn_cell_15/StatefulPartitionedCall:output:11^while/simple_rnn_cell_15/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_15_17338 while_simple_rnn_cell_15_17338_0"B
while_simple_rnn_cell_15_17340 while_simple_rnn_cell_15_17340_0"B
while_simple_rnn_cell_15_17342 while_simple_rnn_cell_15_17342_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????@: : :::2d
0while/simple_rnn_cell_15/StatefulPartitionedCall0while/simple_rnn_cell_15/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?	
?
C__inference_dense_60_layer_call_and_return_conditional_losses_17656

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
-__inference_simple_rnn_15_layer_call_fn_18754
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_172622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_17436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_17436___redundant_placeholder03
/while_while_cond_17436___redundant_placeholder13
/while_while_cond_17436___redundant_placeholder23
/while_while_cond_17436___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?4
?
while_body_17549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_15_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_15_matmul_readvariableop_resource<
8while_simple_rnn_cell_15_biasadd_readvariableop_resource=
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource??/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?.while/simple_rnn_cell_15/MatMul/ReadVariableOp?0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
.while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?@*
dtype020
.while/simple_rnn_cell_15/MatMul/ReadVariableOp?
while/simple_rnn_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
while/simple_rnn_cell_15/MatMul?
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?
 while/simple_rnn_cell_15/BiasAddBiasAdd)while/simple_rnn_cell_15/MatMul:product:07while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 while/simple_rnn_cell_15/BiasAdd?
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
!while/simple_rnn_cell_15/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2#
!while/simple_rnn_cell_15/MatMul_1?
while/simple_rnn_cell_15/addAddV2)while/simple_rnn_cell_15/BiasAdd:output:0+while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_15/add?
while/simple_rnn_cell_15/TanhTanh while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_15/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_15/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity!while/simple_rnn_cell_15/Tanh:y:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_15_matmul_readvariableop_resource9while_simple_rnn_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????@: : :::2b
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_15/MatMul/ReadVariableOp.while/simple_rnn_cell_15/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?4
?
while_body_18431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_15_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_15_matmul_readvariableop_resource<
8while_simple_rnn_cell_15_biasadd_readvariableop_resource=
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource??/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?.while/simple_rnn_cell_15/MatMul/ReadVariableOp?0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
.while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?@*
dtype020
.while/simple_rnn_cell_15/MatMul/ReadVariableOp?
while/simple_rnn_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
while/simple_rnn_cell_15/MatMul?
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?
 while/simple_rnn_cell_15/BiasAddBiasAdd)while/simple_rnn_cell_15/MatMul:product:07while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 while/simple_rnn_cell_15/BiasAdd?
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
!while/simple_rnn_cell_15/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2#
!while/simple_rnn_cell_15/MatMul_1?
while/simple_rnn_cell_15/addAddV2)while/simple_rnn_cell_15/BiasAdd:output:0+while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_15/add?
while/simple_rnn_cell_15/TanhTanh while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_15/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_15/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity!while/simple_rnn_cell_15/Tanh:y:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_15_matmul_readvariableop_resource9while_simple_rnn_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????@: : :::2b
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_15/MatMul/ReadVariableOp.while/simple_rnn_cell_15/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?	
?
C__inference_dense_63_layer_call_and_return_conditional_losses_18836

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_61_layer_call_and_return_conditional_losses_17683

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
H__inference_sequential_15_layer_call_and_return_conditional_losses_17754
simple_rnn_15_input
simple_rnn_15_17638
simple_rnn_15_17640
simple_rnn_15_17642
dense_60_17667
dense_60_17669
dense_61_17694
dense_61_17696
dense_62_17721
dense_62_17723
dense_63_17748
dense_63_17750
identity?? dense_60/StatefulPartitionedCall? dense_61/StatefulPartitionedCall? dense_62/StatefulPartitionedCall? dense_63/StatefulPartitionedCall?%simple_rnn_15/StatefulPartitionedCall?
%simple_rnn_15/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_15_inputsimple_rnn_15_17638simple_rnn_15_17640simple_rnn_15_17642*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_175032'
%simple_rnn_15/StatefulPartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_15/StatefulPartitionedCall:output:0dense_60_17667dense_60_17669*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_60_layer_call_and_return_conditional_losses_176562"
 dense_60/StatefulPartitionedCall?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_17694dense_61_17696*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_61_layer_call_and_return_conditional_losses_176832"
 dense_61/StatefulPartitionedCall?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall)dense_61/StatefulPartitionedCall:output:0dense_62_17721dense_62_17723*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_62_layer_call_and_return_conditional_losses_177102"
 dense_62/StatefulPartitionedCall?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_17748dense_63_17750*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_63_layer_call_and_return_conditional_losses_177372"
 dense_63/StatefulPartitionedCall?
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0!^dense_60/StatefulPartitionedCall!^dense_61/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall&^simple_rnn_15/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????p?:::::::::::2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2N
%simple_rnn_15/StatefulPartitionedCall%simple_rnn_15/StatefulPartitionedCall:a ]
,
_output_shapes
:?????????p?
-
_user_specified_namesimple_rnn_15_input
?H
?
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_18497

inputs5
1simple_rnn_cell_15_matmul_readvariableop_resource6
2simple_rnn_cell_15_biasadd_readvariableop_resource7
3simple_rnn_cell_15_matmul_1_readvariableop_resource
identity??)simple_rnn_cell_15/BiasAdd/ReadVariableOp?(simple_rnn_cell_15/MatMul/ReadVariableOp?*simple_rnn_cell_15/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:p??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
(simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02*
(simple_rnn_cell_15/MatMul/ReadVariableOp?
simple_rnn_cell_15/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/MatMul?
)simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_15/BiasAdd/ReadVariableOp?
simple_rnn_cell_15/BiasAddBiasAdd#simple_rnn_cell_15/MatMul:product:01simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/BiasAdd?
*simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_15/MatMul_1/ReadVariableOp?
simple_rnn_cell_15/MatMul_1MatMulzeros:output:02simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/MatMul_1?
simple_rnn_cell_15/addAddV2#simple_rnn_cell_15/BiasAdd:output:0%simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/add?
simple_rnn_cell_15/TanhTanhsimple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_15_matmul_readvariableop_resource2simple_rnn_cell_15_biasadd_readvariableop_resource3simple_rnn_cell_15_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_18431*
condR
while_cond_18430*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:p?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????p@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_15/BiasAdd/ReadVariableOp)^simple_rnn_cell_15/MatMul/ReadVariableOp+^simple_rnn_cell_15/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????p?:::2V
)simple_rnn_cell_15/BiasAdd/ReadVariableOp)simple_rnn_cell_15/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_15/MatMul/ReadVariableOp(simple_rnn_cell_15/MatMul/ReadVariableOp2X
*simple_rnn_cell_15/MatMul_1/ReadVariableOp*simple_rnn_cell_15/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????p?
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_16876
simple_rnn_15_inputQ
Msequential_15_simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resourceR
Nsequential_15_simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resourceS
Osequential_15_simple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource9
5sequential_15_dense_60_matmul_readvariableop_resource:
6sequential_15_dense_60_biasadd_readvariableop_resource9
5sequential_15_dense_61_matmul_readvariableop_resource:
6sequential_15_dense_61_biasadd_readvariableop_resource9
5sequential_15_dense_62_matmul_readvariableop_resource:
6sequential_15_dense_62_biasadd_readvariableop_resource9
5sequential_15_dense_63_matmul_readvariableop_resource:
6sequential_15_dense_63_biasadd_readvariableop_resource
identity??-sequential_15/dense_60/BiasAdd/ReadVariableOp?,sequential_15/dense_60/MatMul/ReadVariableOp?-sequential_15/dense_61/BiasAdd/ReadVariableOp?,sequential_15/dense_61/MatMul/ReadVariableOp?-sequential_15/dense_62/BiasAdd/ReadVariableOp?,sequential_15/dense_62/MatMul/ReadVariableOp?-sequential_15/dense_63/BiasAdd/ReadVariableOp?,sequential_15/dense_63/MatMul/ReadVariableOp?Esequential_15/simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp?Dsequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp?Fsequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp?!sequential_15/simple_rnn_15/while?
!sequential_15/simple_rnn_15/ShapeShapesimple_rnn_15_input*
T0*
_output_shapes
:2#
!sequential_15/simple_rnn_15/Shape?
/sequential_15/simple_rnn_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_15/simple_rnn_15/strided_slice/stack?
1sequential_15/simple_rnn_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_15/simple_rnn_15/strided_slice/stack_1?
1sequential_15/simple_rnn_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_15/simple_rnn_15/strided_slice/stack_2?
)sequential_15/simple_rnn_15/strided_sliceStridedSlice*sequential_15/simple_rnn_15/Shape:output:08sequential_15/simple_rnn_15/strided_slice/stack:output:0:sequential_15/simple_rnn_15/strided_slice/stack_1:output:0:sequential_15/simple_rnn_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)sequential_15/simple_rnn_15/strided_slice?
'sequential_15/simple_rnn_15/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_15/simple_rnn_15/zeros/mul/y?
%sequential_15/simple_rnn_15/zeros/mulMul2sequential_15/simple_rnn_15/strided_slice:output:00sequential_15/simple_rnn_15/zeros/mul/y:output:0*
T0*
_output_shapes
: 2'
%sequential_15/simple_rnn_15/zeros/mul?
(sequential_15/simple_rnn_15/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(sequential_15/simple_rnn_15/zeros/Less/y?
&sequential_15/simple_rnn_15/zeros/LessLess)sequential_15/simple_rnn_15/zeros/mul:z:01sequential_15/simple_rnn_15/zeros/Less/y:output:0*
T0*
_output_shapes
: 2(
&sequential_15/simple_rnn_15/zeros/Less?
*sequential_15/simple_rnn_15/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2,
*sequential_15/simple_rnn_15/zeros/packed/1?
(sequential_15/simple_rnn_15/zeros/packedPack2sequential_15/simple_rnn_15/strided_slice:output:03sequential_15/simple_rnn_15/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(sequential_15/simple_rnn_15/zeros/packed?
'sequential_15/simple_rnn_15/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'sequential_15/simple_rnn_15/zeros/Const?
!sequential_15/simple_rnn_15/zerosFill1sequential_15/simple_rnn_15/zeros/packed:output:00sequential_15/simple_rnn_15/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2#
!sequential_15/simple_rnn_15/zeros?
*sequential_15/simple_rnn_15/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2,
*sequential_15/simple_rnn_15/transpose/perm?
%sequential_15/simple_rnn_15/transpose	Transposesimple_rnn_15_input3sequential_15/simple_rnn_15/transpose/perm:output:0*
T0*,
_output_shapes
:p??????????2'
%sequential_15/simple_rnn_15/transpose?
#sequential_15/simple_rnn_15/Shape_1Shape)sequential_15/simple_rnn_15/transpose:y:0*
T0*
_output_shapes
:2%
#sequential_15/simple_rnn_15/Shape_1?
1sequential_15/simple_rnn_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_15/simple_rnn_15/strided_slice_1/stack?
3sequential_15/simple_rnn_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_15/simple_rnn_15/strided_slice_1/stack_1?
3sequential_15/simple_rnn_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_15/simple_rnn_15/strided_slice_1/stack_2?
+sequential_15/simple_rnn_15/strided_slice_1StridedSlice,sequential_15/simple_rnn_15/Shape_1:output:0:sequential_15/simple_rnn_15/strided_slice_1/stack:output:0<sequential_15/simple_rnn_15/strided_slice_1/stack_1:output:0<sequential_15/simple_rnn_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_15/simple_rnn_15/strided_slice_1?
7sequential_15/simple_rnn_15/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????29
7sequential_15/simple_rnn_15/TensorArrayV2/element_shape?
)sequential_15/simple_rnn_15/TensorArrayV2TensorListReserve@sequential_15/simple_rnn_15/TensorArrayV2/element_shape:output:04sequential_15/simple_rnn_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02+
)sequential_15/simple_rnn_15/TensorArrayV2?
Qsequential_15/simple_rnn_15/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2S
Qsequential_15/simple_rnn_15/TensorArrayUnstack/TensorListFromTensor/element_shape?
Csequential_15/simple_rnn_15/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)sequential_15/simple_rnn_15/transpose:y:0Zsequential_15/simple_rnn_15/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02E
Csequential_15/simple_rnn_15/TensorArrayUnstack/TensorListFromTensor?
1sequential_15/simple_rnn_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_15/simple_rnn_15/strided_slice_2/stack?
3sequential_15/simple_rnn_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_15/simple_rnn_15/strided_slice_2/stack_1?
3sequential_15/simple_rnn_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_15/simple_rnn_15/strided_slice_2/stack_2?
+sequential_15/simple_rnn_15/strided_slice_2StridedSlice)sequential_15/simple_rnn_15/transpose:y:0:sequential_15/simple_rnn_15/strided_slice_2/stack:output:0<sequential_15/simple_rnn_15/strided_slice_2/stack_1:output:0<sequential_15/simple_rnn_15/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2-
+sequential_15/simple_rnn_15/strided_slice_2?
Dsequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOpMsequential_15_simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02F
Dsequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp?
5sequential_15/simple_rnn_15/simple_rnn_cell_15/MatMulMatMul4sequential_15/simple_rnn_15/strided_slice_2:output:0Lsequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@27
5sequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul?
Esequential_15/simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOpNsequential_15_simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02G
Esequential_15/simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp?
6sequential_15/simple_rnn_15/simple_rnn_cell_15/BiasAddBiasAdd?sequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul:product:0Msequential_15/simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@28
6sequential_15/simple_rnn_15/simple_rnn_cell_15/BiasAdd?
Fsequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOpOsequential_15_simple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02H
Fsequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
7sequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul_1MatMul*sequential_15/simple_rnn_15/zeros:output:0Nsequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@29
7sequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul_1?
2sequential_15/simple_rnn_15/simple_rnn_cell_15/addAddV2?sequential_15/simple_rnn_15/simple_rnn_cell_15/BiasAdd:output:0Asequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@24
2sequential_15/simple_rnn_15/simple_rnn_cell_15/add?
3sequential_15/simple_rnn_15/simple_rnn_cell_15/TanhTanh6sequential_15/simple_rnn_15/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@25
3sequential_15/simple_rnn_15/simple_rnn_cell_15/Tanh?
9sequential_15/simple_rnn_15/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2;
9sequential_15/simple_rnn_15/TensorArrayV2_1/element_shape?
+sequential_15/simple_rnn_15/TensorArrayV2_1TensorListReserveBsequential_15/simple_rnn_15/TensorArrayV2_1/element_shape:output:04sequential_15/simple_rnn_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02-
+sequential_15/simple_rnn_15/TensorArrayV2_1?
 sequential_15/simple_rnn_15/timeConst*
_output_shapes
: *
dtype0*
value	B : 2"
 sequential_15/simple_rnn_15/time?
4sequential_15/simple_rnn_15/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????26
4sequential_15/simple_rnn_15/while/maximum_iterations?
.sequential_15/simple_rnn_15/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_15/simple_rnn_15/while/loop_counter?
!sequential_15/simple_rnn_15/whileWhile7sequential_15/simple_rnn_15/while/loop_counter:output:0=sequential_15/simple_rnn_15/while/maximum_iterations:output:0)sequential_15/simple_rnn_15/time:output:04sequential_15/simple_rnn_15/TensorArrayV2_1:handle:0*sequential_15/simple_rnn_15/zeros:output:04sequential_15/simple_rnn_15/strided_slice_1:output:0Ssequential_15/simple_rnn_15/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_15_simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resourceNsequential_15_simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resourceOsequential_15_simple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*8
body0R.
,sequential_15_simple_rnn_15_while_body_16782*8
cond0R.
,sequential_15_simple_rnn_15_while_cond_16781*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2#
!sequential_15/simple_rnn_15/while?
Lsequential_15/simple_rnn_15/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2N
Lsequential_15/simple_rnn_15/TensorArrayV2Stack/TensorListStack/element_shape?
>sequential_15/simple_rnn_15/TensorArrayV2Stack/TensorListStackTensorListStack*sequential_15/simple_rnn_15/while:output:3Usequential_15/simple_rnn_15/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:p?????????@*
element_dtype02@
>sequential_15/simple_rnn_15/TensorArrayV2Stack/TensorListStack?
1sequential_15/simple_rnn_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????23
1sequential_15/simple_rnn_15/strided_slice_3/stack?
3sequential_15/simple_rnn_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_15/simple_rnn_15/strided_slice_3/stack_1?
3sequential_15/simple_rnn_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_15/simple_rnn_15/strided_slice_3/stack_2?
+sequential_15/simple_rnn_15/strided_slice_3StridedSliceGsequential_15/simple_rnn_15/TensorArrayV2Stack/TensorListStack:tensor:0:sequential_15/simple_rnn_15/strided_slice_3/stack:output:0<sequential_15/simple_rnn_15/strided_slice_3/stack_1:output:0<sequential_15/simple_rnn_15/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2-
+sequential_15/simple_rnn_15/strided_slice_3?
,sequential_15/simple_rnn_15/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2.
,sequential_15/simple_rnn_15/transpose_1/perm?
'sequential_15/simple_rnn_15/transpose_1	TransposeGsequential_15/simple_rnn_15/TensorArrayV2Stack/TensorListStack:tensor:05sequential_15/simple_rnn_15/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????p@2)
'sequential_15/simple_rnn_15/transpose_1?
,sequential_15/dense_60/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_60_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02.
,sequential_15/dense_60/MatMul/ReadVariableOp?
sequential_15/dense_60/MatMulMatMul4sequential_15/simple_rnn_15/strided_slice_3:output:04sequential_15/dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_15/dense_60/MatMul?
-sequential_15/dense_60/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_60_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_15/dense_60/BiasAdd/ReadVariableOp?
sequential_15/dense_60/BiasAddBiasAdd'sequential_15/dense_60/MatMul:product:05sequential_15/dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
sequential_15/dense_60/BiasAdd?
sequential_15/dense_60/ReluRelu'sequential_15/dense_60/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_15/dense_60/Relu?
,sequential_15/dense_61/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_61_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_15/dense_61/MatMul/ReadVariableOp?
sequential_15/dense_61/MatMulMatMul)sequential_15/dense_60/Relu:activations:04sequential_15/dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_15/dense_61/MatMul?
-sequential_15/dense_61/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_15/dense_61/BiasAdd/ReadVariableOp?
sequential_15/dense_61/BiasAddBiasAdd'sequential_15/dense_61/MatMul:product:05sequential_15/dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_15/dense_61/BiasAdd?
sequential_15/dense_61/SigmoidSigmoid'sequential_15/dense_61/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_15/dense_61/Sigmoid?
,sequential_15/dense_62/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_62_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_15/dense_62/MatMul/ReadVariableOp?
sequential_15/dense_62/MatMulMatMul"sequential_15/dense_61/Sigmoid:y:04sequential_15/dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_15/dense_62/MatMul?
-sequential_15/dense_62/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_15/dense_62/BiasAdd/ReadVariableOp?
sequential_15/dense_62/BiasAddBiasAdd'sequential_15/dense_62/MatMul:product:05sequential_15/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_15/dense_62/BiasAdd?
sequential_15/dense_62/ReluRelu'sequential_15/dense_62/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_15/dense_62/Relu?
,sequential_15/dense_63/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_63_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_15/dense_63/MatMul/ReadVariableOp?
sequential_15/dense_63/MatMulMatMul)sequential_15/dense_62/Relu:activations:04sequential_15/dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_15/dense_63/MatMul?
-sequential_15/dense_63/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_15/dense_63/BiasAdd/ReadVariableOp?
sequential_15/dense_63/BiasAddBiasAdd'sequential_15/dense_63/MatMul:product:05sequential_15/dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_15/dense_63/BiasAdd?
sequential_15/dense_63/SigmoidSigmoid'sequential_15/dense_63/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_15/dense_63/Sigmoid?
IdentityIdentity"sequential_15/dense_63/Sigmoid:y:0.^sequential_15/dense_60/BiasAdd/ReadVariableOp-^sequential_15/dense_60/MatMul/ReadVariableOp.^sequential_15/dense_61/BiasAdd/ReadVariableOp-^sequential_15/dense_61/MatMul/ReadVariableOp.^sequential_15/dense_62/BiasAdd/ReadVariableOp-^sequential_15/dense_62/MatMul/ReadVariableOp.^sequential_15/dense_63/BiasAdd/ReadVariableOp-^sequential_15/dense_63/MatMul/ReadVariableOpF^sequential_15/simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOpE^sequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOpG^sequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp"^sequential_15/simple_rnn_15/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????p?:::::::::::2^
-sequential_15/dense_60/BiasAdd/ReadVariableOp-sequential_15/dense_60/BiasAdd/ReadVariableOp2\
,sequential_15/dense_60/MatMul/ReadVariableOp,sequential_15/dense_60/MatMul/ReadVariableOp2^
-sequential_15/dense_61/BiasAdd/ReadVariableOp-sequential_15/dense_61/BiasAdd/ReadVariableOp2\
,sequential_15/dense_61/MatMul/ReadVariableOp,sequential_15/dense_61/MatMul/ReadVariableOp2^
-sequential_15/dense_62/BiasAdd/ReadVariableOp-sequential_15/dense_62/BiasAdd/ReadVariableOp2\
,sequential_15/dense_62/MatMul/ReadVariableOp,sequential_15/dense_62/MatMul/ReadVariableOp2^
-sequential_15/dense_63/BiasAdd/ReadVariableOp-sequential_15/dense_63/BiasAdd/ReadVariableOp2\
,sequential_15/dense_63/MatMul/ReadVariableOp,sequential_15/dense_63/MatMul/ReadVariableOp2?
Esequential_15/simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOpEsequential_15/simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp2?
Dsequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOpDsequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp2?
Fsequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOpFsequential_15/simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp2F
!sequential_15/simple_rnn_15/while!sequential_15/simple_rnn_15/while:a ]
,
_output_shapes
:?????????p?
-
_user_specified_namesimple_rnn_15_input
?4
?
while_body_18677
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_15_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_15_matmul_readvariableop_resource<
8while_simple_rnn_cell_15_biasadd_readvariableop_resource=
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource??/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?.while/simple_rnn_cell_15/MatMul/ReadVariableOp?0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
.while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?@*
dtype020
.while/simple_rnn_cell_15/MatMul/ReadVariableOp?
while/simple_rnn_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
while/simple_rnn_cell_15/MatMul?
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp?
 while/simple_rnn_cell_15/BiasAddBiasAdd)while/simple_rnn_cell_15/MatMul:product:07while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 while/simple_rnn_cell_15/BiasAdd?
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp?
!while/simple_rnn_cell_15/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2#
!while/simple_rnn_cell_15/MatMul_1?
while/simple_rnn_cell_15/addAddV2)while/simple_rnn_cell_15/BiasAdd:output:0+while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_15/add?
while/simple_rnn_cell_15/TanhTanh while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2
while/simple_rnn_cell_15/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_15/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity!while/simple_rnn_cell_15/Tanh:y:00^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_15_matmul_readvariableop_resource9while_simple_rnn_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????@: : :::2b
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_15/MatMul/ReadVariableOp.while/simple_rnn_cell_15/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?H
?
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_18743
inputs_05
1simple_rnn_cell_15_matmul_readvariableop_resource6
2simple_rnn_cell_15_biasadd_readvariableop_resource7
3simple_rnn_cell_15_matmul_1_readvariableop_resource
identity??)simple_rnn_cell_15/BiasAdd/ReadVariableOp?(simple_rnn_cell_15/MatMul/ReadVariableOp?*simple_rnn_cell_15/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
(simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02*
(simple_rnn_cell_15/MatMul/ReadVariableOp?
simple_rnn_cell_15/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/MatMul?
)simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_15/BiasAdd/ReadVariableOp?
simple_rnn_cell_15/BiasAddBiasAdd#simple_rnn_cell_15/MatMul:product:01simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/BiasAdd?
*simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_15/MatMul_1/ReadVariableOp?
simple_rnn_cell_15/MatMul_1MatMulzeros:output:02simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/MatMul_1?
simple_rnn_cell_15/addAddV2#simple_rnn_cell_15/BiasAdd:output:0%simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/add?
simple_rnn_cell_15/TanhTanhsimple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:?????????@2
simple_rnn_cell_15/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_15_matmul_readvariableop_resource2simple_rnn_cell_15_biasadd_readvariableop_resource3simple_rnn_cell_15_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_18677*
condR
while_cond_18676*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_15/BiasAdd/ReadVariableOp)^simple_rnn_cell_15/MatMul/ReadVariableOp+^simple_rnn_cell_15/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2V
)simple_rnn_cell_15/BiasAdd/ReadVariableOp)simple_rnn_cell_15/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_15/MatMul/ReadVariableOp(simple_rnn_cell_15/MatMul/ReadVariableOp2X
*simple_rnn_cell_15/MatMul_1/ReadVariableOp*simple_rnn_cell_15/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
-__inference_simple_rnn_15_layer_call_fn_18519

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_176152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????p?:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????p?
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
X
simple_rnn_15_inputA
%serving_default_simple_rnn_15_input:0?????????p?<
dense_630
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?7
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
{_default_save_signature
|__call__
*}&call_and_return_all_conditional_losses"?3
_tf_keras_sequential?3{"class_name": "Sequential", "name": "sequential_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 112, 768]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "simple_rnn_15_input"}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_15", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 112, 768]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_61", "trainable": true, "dtype": "float32", "units": 16, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_62", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_63", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 768]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 112, 768]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 112, 768]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "simple_rnn_15_input"}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_15", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 112, 768]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_61", "trainable": true, "dtype": "float32", "units": 16, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_62", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_63", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
~__call__
*&call_and_return_all_conditional_losses"?

_tf_keras_rnn_layer?
{"class_name": "SimpleRNN", "name": "simple_rnn_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 112, 768]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_15", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 112, 768]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 768]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 112, 768]}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_60", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_61", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_61", "trainable": true, "dtype": "float32", "units": 16, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?

kernel
bias
 	variables
!regularization_losses
"trainable_variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_62", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?

$kernel
%bias
&	variables
'regularization_losses
(trainable_variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_63", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_63", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8]}}
?
*iter

+beta_1

,beta_2
	-decay
.learning_ratememfmgmhmimj$mk%ml/mm0mn1movpvqvrvsvtvu$vv%vw/vx0vy1vz"
	optimizer
n
/0
01
12
3
4
5
6
7
8
$9
%10"
trackable_list_wrapper
 "
trackable_list_wrapper
n
/0
01
12
3
4
5
6
7
8
$9
%10"
trackable_list_wrapper
?
	variables

2layers
regularization_losses
3non_trainable_variables
4layer_regularization_losses
	trainable_variables
5layer_metrics
6metrics
|__call__
{_default_save_signature
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?

/kernel
0recurrent_kernel
1bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell_15", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}
 "
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
?
	variables

;layers
<non_trainable_variables
=layer_regularization_losses
regularization_losses
trainable_variables

>states
?layer_metrics
@metrics
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
!:@ 2dense_60/kernel
: 2dense_60/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Anon_trainable_variables
Blayer_regularization_losses

Clayers
	variables
regularization_losses
trainable_variables
Dlayer_metrics
Emetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_61/kernel
:2dense_61/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Fnon_trainable_variables
Glayer_regularization_losses

Hlayers
	variables
regularization_losses
trainable_variables
Ilayer_metrics
Jmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:2dense_62/kernel
:2dense_62/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Knon_trainable_variables
Llayer_regularization_losses

Mlayers
 	variables
!regularization_losses
"trainable_variables
Nlayer_metrics
Ometrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:2dense_63/kernel
:2dense_63/bias
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
?
Pnon_trainable_variables
Qlayer_regularization_losses

Rlayers
&	variables
'regularization_losses
(trainable_variables
Slayer_metrics
Tmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
::8	?@2'simple_rnn_15/simple_rnn_cell_15/kernel
C:A@@21simple_rnn_15/simple_rnn_cell_15/recurrent_kernel
3:1@2%simple_rnn_15/simple_rnn_cell_15/bias
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
U0
V1"
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
?
Wnon_trainable_variables
Xlayer_regularization_losses

Ylayers
7	variables
8regularization_losses
9trainable_variables
Zlayer_metrics
[metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
?
	\total
	]count
^	variables
_	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	`total
	acount
b
_fn_kwargs
c	variables
d	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
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
:  (2total
:  (2count
.
\0
]1"
trackable_list_wrapper
-
^	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
`0
a1"
trackable_list_wrapper
-
c	variables"
_generic_user_object
&:$@ 2Adam/dense_60/kernel/m
 : 2Adam/dense_60/bias/m
&:$ 2Adam/dense_61/kernel/m
 :2Adam/dense_61/bias/m
&:$2Adam/dense_62/kernel/m
 :2Adam/dense_62/bias/m
&:$2Adam/dense_63/kernel/m
 :2Adam/dense_63/bias/m
?:=	?@2.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/m
H:F@@28Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/m
8:6@2,Adam/simple_rnn_15/simple_rnn_cell_15/bias/m
&:$@ 2Adam/dense_60/kernel/v
 : 2Adam/dense_60/bias/v
&:$ 2Adam/dense_61/kernel/v
 :2Adam/dense_61/bias/v
&:$2Adam/dense_62/kernel/v
 :2Adam/dense_62/bias/v
&:$2Adam/dense_63/kernel/v
 :2Adam/dense_63/bias/v
?:=	?@2.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/v
H:F@@28Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/v
8:6@2,Adam/simple_rnn_15/simple_rnn_cell_15/bias/v
?2?
 __inference__wrapped_model_16876?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/
simple_rnn_15_input?????????p?
?2?
-__inference_sequential_15_layer_call_fn_18273
-__inference_sequential_15_layer_call_fn_17902
-__inference_sequential_15_layer_call_fn_17844
-__inference_sequential_15_layer_call_fn_18246?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_15_layer_call_and_return_conditional_losses_18219
H__inference_sequential_15_layer_call_and_return_conditional_losses_18079
H__inference_sequential_15_layer_call_and_return_conditional_losses_17754
H__inference_sequential_15_layer_call_and_return_conditional_losses_17785?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_simple_rnn_15_layer_call_fn_18519
-__inference_simple_rnn_15_layer_call_fn_18754
-__inference_simple_rnn_15_layer_call_fn_18508
-__inference_simple_rnn_15_layer_call_fn_18765?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_18385
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_18743
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_18497
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_18631?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_60_layer_call_fn_18785?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_60_layer_call_and_return_conditional_losses_18776?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_61_layer_call_fn_18805?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_61_layer_call_and_return_conditional_losses_18796?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_62_layer_call_fn_18825?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_62_layer_call_and_return_conditional_losses_18816?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_63_layer_call_fn_18845?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_63_layer_call_and_return_conditional_losses_18836?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_17939simple_rnn_15_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_simple_rnn_cell_15_layer_call_fn_18893
2__inference_simple_rnn_cell_15_layer_call_fn_18907?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
M__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_18862
M__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_18879?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
 __inference__wrapped_model_16876?/10$%A?>
7?4
2?/
simple_rnn_15_input?????????p?
? "3?0
.
dense_63"?
dense_63??????????
C__inference_dense_60_layer_call_and_return_conditional_losses_18776\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? {
(__inference_dense_60_layer_call_fn_18785O/?,
%?"
 ?
inputs?????????@
? "?????????? ?
C__inference_dense_61_layer_call_and_return_conditional_losses_18796\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? {
(__inference_dense_61_layer_call_fn_18805O/?,
%?"
 ?
inputs????????? 
? "???????????
C__inference_dense_62_layer_call_and_return_conditional_losses_18816\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
(__inference_dense_62_layer_call_fn_18825O/?,
%?"
 ?
inputs?????????
? "???????????
C__inference_dense_63_layer_call_and_return_conditional_losses_18836\$%/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
(__inference_dense_63_layer_call_fn_18845O$%/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_sequential_15_layer_call_and_return_conditional_losses_17754/10$%I?F
??<
2?/
simple_rnn_15_input?????????p?
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_15_layer_call_and_return_conditional_losses_17785/10$%I?F
??<
2?/
simple_rnn_15_input?????????p?
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_15_layer_call_and_return_conditional_losses_18079r/10$%<?9
2?/
%?"
inputs?????????p?
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_15_layer_call_and_return_conditional_losses_18219r/10$%<?9
2?/
%?"
inputs?????????p?
p 

 
? "%?"
?
0?????????
? ?
-__inference_sequential_15_layer_call_fn_17844r/10$%I?F
??<
2?/
simple_rnn_15_input?????????p?
p

 
? "???????????
-__inference_sequential_15_layer_call_fn_17902r/10$%I?F
??<
2?/
simple_rnn_15_input?????????p?
p 

 
? "???????????
-__inference_sequential_15_layer_call_fn_18246e/10$%<?9
2?/
%?"
inputs?????????p?
p

 
? "???????????
-__inference_sequential_15_layer_call_fn_18273e/10$%<?9
2?/
%?"
inputs?????????p?
p 

 
? "???????????
#__inference_signature_wrapper_17939?/10$%X?U
? 
N?K
I
simple_rnn_15_input2?/
simple_rnn_15_input?????????p?"3?0
.
dense_63"?
dense_63??????????
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_18385n/10@?=
6?3
%?"
inputs?????????p?

 
p

 
? "%?"
?
0?????????@
? ?
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_18497n/10@?=
6?3
%?"
inputs?????????p?

 
p 

 
? "%?"
?
0?????????@
? ?
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_18631~/10P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "%?"
?
0?????????@
? ?
H__inference_simple_rnn_15_layer_call_and_return_conditional_losses_18743~/10P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "%?"
?
0?????????@
? ?
-__inference_simple_rnn_15_layer_call_fn_18508a/10@?=
6?3
%?"
inputs?????????p?

 
p

 
? "??????????@?
-__inference_simple_rnn_15_layer_call_fn_18519a/10@?=
6?3
%?"
inputs?????????p?

 
p 

 
? "??????????@?
-__inference_simple_rnn_15_layer_call_fn_18754q/10P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "??????????@?
-__inference_simple_rnn_15_layer_call_fn_18765q/10P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "??????????@?
M__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_18862?/10]?Z
S?P
!?
inputs??????????
'?$
"?
states/0?????????@
p
? "R?O
H?E
?
0/0?????????@
$?!
?
0/1/0?????????@
? ?
M__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_18879?/10]?Z
S?P
!?
inputs??????????
'?$
"?
states/0?????????@
p 
? "R?O
H?E
?
0/0?????????@
$?!
?
0/1/0?????????@
? ?
2__inference_simple_rnn_cell_15_layer_call_fn_18893?/10]?Z
S?P
!?
inputs??????????
'?$
"?
states/0?????????@
p
? "D?A
?
0?????????@
"?
?
1/0?????????@?
2__inference_simple_rnn_cell_15_layer_call_fn_18907?/10]?Z
S?P
!?
inputs??????????
'?$
"?
states/0?????????@
p 
? "D?A
?
0?????????@
"?
?
1/0?????????@