??
??
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
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
embedding_7/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameembedding_7/embeddings
?
*embedding_7/embeddings/Read/ReadVariableOpReadVariableOpembedding_7/embeddings*
_output_shapes

:d*
dtype0
{
dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?* 
shared_namedense_28/kernel
t
#dense_28/kernel/Read/ReadVariableOpReadVariableOpdense_28/kernel*
_output_shapes
:	d?*
dtype0
s
dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_28/bias
l
!dense_28/bias/Read/ReadVariableOpReadVariableOpdense_28/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_9/gamma
?
/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_9/beta
?
.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*
_output_shapes	
:?*
dtype0
|
dense_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_29/kernel
u
#dense_29/kernel/Read/ReadVariableOpReadVariableOpdense_29/kernel* 
_output_shapes
:
??*
dtype0
s
dense_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_29/bias
l
!dense_29/bias/Read/ReadVariableOpReadVariableOpdense_29/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_10/gamma
?
0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_10/beta
?
/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes	
:?*
dtype0
|
dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_30/kernel
u
#dense_30/kernel/Read/ReadVariableOpReadVariableOpdense_30/kernel* 
_output_shapes
:
??*
dtype0
s
dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_30/bias
l
!dense_30/bias/Read/ReadVariableOpReadVariableOpdense_30/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_11/gamma
?
0batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_11/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_11/beta
?
/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_11/beta*
_output_shapes	
:?*
dtype0
}
dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???* 
shared_namedense_31/kernel
v
#dense_31/kernel/Read/ReadVariableOpReadVariableOpdense_31/kernel*!
_output_shapes
:???*
dtype0
t
dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*
shared_namedense_31/bias
m
!dense_31/bias/Read/ReadVariableOpReadVariableOpdense_31/bias*
_output_shapes

:??*
dtype0
?
!batch_normalization_9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_9/moving_mean
?
5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_9/moving_variance
?
9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes	
:?*
dtype0
?
"batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_10/moving_mean
?
6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_10/moving_variance
?
:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes	
:?*
dtype0
?
"batch_normalization_11/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_11/moving_mean
?
6batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_11/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_11/moving_variance
?
:batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
_output_shapes	
:?*
dtype0

NoOpNoOp
?A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?@
value?@B?@ B?@
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
trainable_variables
	variables
	regularization_losses

	keras_api

signatures
 
b

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
 
R
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
 layer-7
!layer_with_weights-5
!layer-8
"layer_with_weights-6
"layer-9
#layer-10
$trainable_variables
%	variables
&regularization_losses
'	keras_api
n
0
(1
)2
*3
+4
,5
-6
.7
/8
09
110
211
312
413
514
?
0
(1
)2
*3
+4
65
76
,7
-8
.9
/10
811
912
013
114
215
316
:17
;18
419
520
 
?
trainable_variables
<metrics
=layer_metrics
>layer_regularization_losses
?non_trainable_variables
	variables
	regularization_losses

@layers
 
fd
VARIABLE_VALUEembedding_7/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?
Ametrics
trainable_variables
Blayer_metrics
Clayer_regularization_losses
Dnon_trainable_variables
	variables
regularization_losses

Elayers
 
 
 
?
Fmetrics
trainable_variables
Glayer_metrics
Hlayer_regularization_losses
Inon_trainable_variables
	variables
regularization_losses

Jlayers
 
 
 
?
Kmetrics
trainable_variables
Llayer_metrics
Mlayer_regularization_losses
Nnon_trainable_variables
	variables
regularization_losses

Olayers
h

(kernel
)bias
Ptrainable_variables
Q	variables
Rregularization_losses
S	keras_api
R
Ttrainable_variables
U	variables
Vregularization_losses
W	keras_api
?
Xaxis
	*gamma
+beta
6moving_mean
7moving_variance
Ytrainable_variables
Z	variables
[regularization_losses
\	keras_api
h

,kernel
-bias
]trainable_variables
^	variables
_regularization_losses
`	keras_api
R
atrainable_variables
b	variables
cregularization_losses
d	keras_api
?
eaxis
	.gamma
/beta
8moving_mean
9moving_variance
ftrainable_variables
g	variables
hregularization_losses
i	keras_api
h

0kernel
1bias
jtrainable_variables
k	variables
lregularization_losses
m	keras_api
R
ntrainable_variables
o	variables
pregularization_losses
q	keras_api
?
raxis
	2gamma
3beta
:moving_mean
;moving_variance
strainable_variables
t	variables
uregularization_losses
v	keras_api
h

4kernel
5bias
wtrainable_variables
x	variables
yregularization_losses
z	keras_api
R
{trainable_variables
|	variables
}regularization_losses
~	keras_api
f
(0
)1
*2
+3
,4
-5
.6
/7
08
19
210
311
412
513
?
(0
)1
*2
+3
64
75
,6
-7
.8
/9
810
911
012
113
214
315
:16
;17
418
519
 
?
$trainable_variables
metrics
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
%	variables
&regularization_losses
?layers
US
VARIABLE_VALUEdense_28/kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_28/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_9/gamma0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbatch_normalization_9/beta0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_29/kernel0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_29/bias0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization_10/gamma0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_10/beta0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_30/kernel0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_30/bias1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEbatch_normalization_11/gamma1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization_11/beta1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_31/kernel1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_31/bias1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!batch_normalization_9/moving_mean&variables/5/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%batch_normalization_9/moving_variance&variables/6/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"batch_normalization_10/moving_mean'variables/11/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE&batch_normalization_10/moving_variance'variables/12/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"batch_normalization_11/moving_mean'variables/17/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE&batch_normalization_11/moving_variance'variables/18/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
*
60
71
82
93
:4
;5
*
0
1
2
3
4
5
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

(0
)1

(0
)1
 
?
?metrics
Ptrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
Q	variables
Rregularization_losses
?layers
 
 
 
?
?metrics
Ttrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
U	variables
Vregularization_losses
?layers
 

*0
+1

*0
+1
62
73
 
?
?metrics
Ytrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
Z	variables
[regularization_losses
?layers

,0
-1

,0
-1
 
?
?metrics
]trainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
^	variables
_regularization_losses
?layers
 
 
 
?
?metrics
atrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
b	variables
cregularization_losses
?layers
 

.0
/1

.0
/1
82
93
 
?
?metrics
ftrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
g	variables
hregularization_losses
?layers

00
11

00
11
 
?
?metrics
jtrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
k	variables
lregularization_losses
?layers
 
 
 
?
?metrics
ntrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
o	variables
pregularization_losses
?layers
 

20
31

20
31
:2
;3
 
?
?metrics
strainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
t	variables
uregularization_losses
?layers

40
51

40
51
 
?
?metrics
wtrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
x	variables
yregularization_losses
?layers
 
 
 
?
?metrics
{trainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
|	variables
}regularization_losses
?layers
 
 
 
*
60
71
82
93
:4
;5
N
0
1
2
3
4
5
6
 7
!8
"9
#10
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

60
71
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

80
91
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

:0
;1
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
{
serving_default_input_21Placeholder*'
_output_shapes
:?????????d*
dtype0*
shape:?????????d
{
serving_default_input_22Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_21serving_default_input_22embedding_7/embeddingsdense_28/kerneldense_28/bias%batch_normalization_9/moving_variancebatch_normalization_9/gamma!batch_normalization_9/moving_meanbatch_normalization_9/betadense_29/kerneldense_29/bias&batch_normalization_10/moving_variancebatch_normalization_10/gamma"batch_normalization_10/moving_meanbatch_normalization_10/betadense_30/kerneldense_30/bias&batch_normalization_11/moving_variancebatch_normalization_11/gamma"batch_normalization_11/moving_meanbatch_normalization_11/betadense_31/kerneldense_31/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_3670350
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_7/embeddings/Read/ReadVariableOp#dense_28/kernel/Read/ReadVariableOp!dense_28/bias/Read/ReadVariableOp/batch_normalization_9/gamma/Read/ReadVariableOp.batch_normalization_9/beta/Read/ReadVariableOp#dense_29/kernel/Read/ReadVariableOp!dense_29/bias/Read/ReadVariableOp0batch_normalization_10/gamma/Read/ReadVariableOp/batch_normalization_10/beta/Read/ReadVariableOp#dense_30/kernel/Read/ReadVariableOp!dense_30/bias/Read/ReadVariableOp0batch_normalization_11/gamma/Read/ReadVariableOp/batch_normalization_11/beta/Read/ReadVariableOp#dense_31/kernel/Read/ReadVariableOp!dense_31/bias/Read/ReadVariableOp5batch_normalization_9/moving_mean/Read/ReadVariableOp9batch_normalization_9/moving_variance/Read/ReadVariableOp6batch_normalization_10/moving_mean/Read/ReadVariableOp:batch_normalization_10/moving_variance/Read/ReadVariableOp6batch_normalization_11/moving_mean/Read/ReadVariableOp:batch_normalization_11/moving_variance/Read/ReadVariableOpConst*"
Tin
2*
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
GPU2*0J 8? *)
f$R"
 __inference__traced_save_3671508
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_7/embeddingsdense_28/kerneldense_28/biasbatch_normalization_9/gammabatch_normalization_9/betadense_29/kerneldense_29/biasbatch_normalization_10/gammabatch_normalization_10/betadense_30/kerneldense_30/biasbatch_normalization_11/gammabatch_normalization_11/betadense_31/kerneldense_31/bias!batch_normalization_9/moving_mean%batch_normalization_9/moving_variance"batch_normalization_10/moving_mean&batch_normalization_10/moving_variance"batch_normalization_11/moving_mean&batch_normalization_11/moving_variance*!
Tin
2*
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
GPU2*0J 8? *,
f'R%
#__inference__traced_restore_3671581??
?9
?
I__inference_sequential_7_layer_call_and_return_conditional_losses_3669820

inputs
dense_28_3669768
dense_28_3669770!
batch_normalization_9_3669774!
batch_normalization_9_3669776!
batch_normalization_9_3669778!
batch_normalization_9_3669780
dense_29_3669783
dense_29_3669785"
batch_normalization_10_3669789"
batch_normalization_10_3669791"
batch_normalization_10_3669793"
batch_normalization_10_3669795
dense_30_3669798
dense_30_3669800"
batch_normalization_11_3669804"
batch_normalization_11_3669806"
batch_normalization_11_3669808"
batch_normalization_11_3669810
dense_31_3669813
dense_31_3669815
identity??.batch_normalization_10/StatefulPartitionedCall?.batch_normalization_11/StatefulPartitionedCall?-batch_normalization_9/StatefulPartitionedCall? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCallinputsdense_28_3669768dense_28_3669770*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_36693452"
 dense_28/StatefulPartitionedCall?
leaky_re_lu_21/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_21_layer_call_and_return_conditional_losses_36693662 
leaky_re_lu_21/PartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_21/PartitionedCall:output:0batch_normalization_9_3669774batch_normalization_9_3669776batch_normalization_9_3669778batch_normalization_9_3669780*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_36690402/
-batch_normalization_9/StatefulPartitionedCall?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_29_3669783dense_29_3669785*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_36694192"
 dense_29/StatefulPartitionedCall?
leaky_re_lu_22/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_22_layer_call_and_return_conditional_losses_36694402 
leaky_re_lu_22/PartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_22/PartitionedCall:output:0batch_normalization_10_3669789batch_normalization_10_3669791batch_normalization_10_3669793batch_normalization_10_3669795*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_366918020
.batch_normalization_10/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0dense_30_3669798dense_30_3669800*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_30_layer_call_and_return_conditional_losses_36694932"
 dense_30/StatefulPartitionedCall?
leaky_re_lu_23/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_23_layer_call_and_return_conditional_losses_36695142 
leaky_re_lu_23/PartitionedCall?
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_23/PartitionedCall:output:0batch_normalization_11_3669804batch_normalization_11_3669806batch_normalization_11_3669808batch_normalization_11_3669810*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_366932020
.batch_normalization_11/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0dense_31_3669813dense_31_3669815*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_31_layer_call_and_return_conditional_losses_36695682"
 dense_31/StatefulPartitionedCall?
reshape_3/PartitionedCallPartitionedCall)dense_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_3_layer_call_and_return_conditional_losses_36695982
reshape_3/PartitionedCall?
IdentityIdentity"reshape_3/PartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

*__inference_dense_29_layer_call_fn_3671179

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
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_36694192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_7_layer_call_fn_3671004

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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*0
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_36697202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

*__inference_dense_31_layer_call_fn_3671402

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
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_31_layer_call_and_return_conditional_losses_36695682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_9_layer_call_fn_3671160

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_36690402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_3671245

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_11_layer_call_fn_3671369

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_36692872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_model_10_layer_call_and_return_conditional_losses_3670050
input_21
input_22
embedding_7_3669886
sequential_7_3670008
sequential_7_3670010
sequential_7_3670012
sequential_7_3670014
sequential_7_3670016
sequential_7_3670018
sequential_7_3670020
sequential_7_3670022
sequential_7_3670024
sequential_7_3670026
sequential_7_3670028
sequential_7_3670030
sequential_7_3670032
sequential_7_3670034
sequential_7_3670036
sequential_7_3670038
sequential_7_3670040
sequential_7_3670042
sequential_7_3670044
sequential_7_3670046
identity??#embedding_7/StatefulPartitionedCall?$sequential_7/StatefulPartitionedCall?
#embedding_7/StatefulPartitionedCallStatefulPartitionedCallinput_22embedding_7_3669886*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_embedding_7_layer_call_and_return_conditional_losses_36698772%
#embedding_7/StatefulPartitionedCall?
flatten_11/PartitionedCallPartitionedCall,embedding_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_11_layer_call_and_return_conditional_losses_36698952
flatten_11/PartitionedCall?
multiply_7/PartitionedCallPartitionedCallinput_21#flatten_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_multiply_7_layer_call_and_return_conditional_losses_36699092
multiply_7/PartitionedCall?
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall#multiply_7/PartitionedCall:output:0sequential_7_3670008sequential_7_3670010sequential_7_3670012sequential_7_3670014sequential_7_3670016sequential_7_3670018sequential_7_3670020sequential_7_3670022sequential_7_3670024sequential_7_3670026sequential_7_3670028sequential_7_3670030sequential_7_3670032sequential_7_3670034sequential_7_3670036sequential_7_3670038sequential_7_3670040sequential_7_3670042sequential_7_3670044sequential_7_3670046* 
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*0
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_36697202&
$sequential_7/StatefulPartitionedCall?
IdentityIdentity-sequential_7/StatefulPartitionedCall:output:0$^embedding_7/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2J
#embedding_7/StatefulPartitionedCall#embedding_7/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
input_21:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_22
?
?
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_3669040

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
H__inference_embedding_7_layer_call_and_return_conditional_losses_3670701

inputs
embedding_lookup_3670695
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_3670695inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/3670695*+
_output_shapes
:?????????d*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/3670695*+
_output_shapes
:?????????d2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_29_layer_call_and_return_conditional_losses_3669419

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
s
-__inference_embedding_7_layer_call_fn_3670708

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_embedding_7_layer_call_and_return_conditional_losses_36698772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_23_layer_call_and_return_conditional_losses_3671295

inputs
identityU
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
E__inference_model_10_layer_call_and_return_conditional_losses_3670497
inputs_0
inputs_1(
$embedding_7_embedding_lookup_36703548
4sequential_7_dense_28_matmul_readvariableop_resource9
5sequential_7_dense_28_biasadd_readvariableop_resource>
:sequential_7_batch_normalization_9_assignmovingavg_3670377@
<sequential_7_batch_normalization_9_assignmovingavg_1_3670383L
Hsequential_7_batch_normalization_9_batchnorm_mul_readvariableop_resourceH
Dsequential_7_batch_normalization_9_batchnorm_readvariableop_resource8
4sequential_7_dense_29_matmul_readvariableop_resource9
5sequential_7_dense_29_biasadd_readvariableop_resource?
;sequential_7_batch_normalization_10_assignmovingavg_3670416A
=sequential_7_batch_normalization_10_assignmovingavg_1_3670422M
Isequential_7_batch_normalization_10_batchnorm_mul_readvariableop_resourceI
Esequential_7_batch_normalization_10_batchnorm_readvariableop_resource8
4sequential_7_dense_30_matmul_readvariableop_resource9
5sequential_7_dense_30_biasadd_readvariableop_resource?
;sequential_7_batch_normalization_11_assignmovingavg_3670455A
=sequential_7_batch_normalization_11_assignmovingavg_1_3670461M
Isequential_7_batch_normalization_11_batchnorm_mul_readvariableop_resourceI
Esequential_7_batch_normalization_11_batchnorm_readvariableop_resource8
4sequential_7_dense_31_matmul_readvariableop_resource9
5sequential_7_dense_31_biasadd_readvariableop_resource
identity??embedding_7/embedding_lookup?Gsequential_7/batch_normalization_10/AssignMovingAvg/AssignSubVariableOp?Bsequential_7/batch_normalization_10/AssignMovingAvg/ReadVariableOp?Isequential_7/batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOp?Dsequential_7/batch_normalization_10/AssignMovingAvg_1/ReadVariableOp?<sequential_7/batch_normalization_10/batchnorm/ReadVariableOp?@sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOp?Gsequential_7/batch_normalization_11/AssignMovingAvg/AssignSubVariableOp?Bsequential_7/batch_normalization_11/AssignMovingAvg/ReadVariableOp?Isequential_7/batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOp?Dsequential_7/batch_normalization_11/AssignMovingAvg_1/ReadVariableOp?<sequential_7/batch_normalization_11/batchnorm/ReadVariableOp?@sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOp?Fsequential_7/batch_normalization_9/AssignMovingAvg/AssignSubVariableOp?Asequential_7/batch_normalization_9/AssignMovingAvg/ReadVariableOp?Hsequential_7/batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOp?Csequential_7/batch_normalization_9/AssignMovingAvg_1/ReadVariableOp?;sequential_7/batch_normalization_9/batchnorm/ReadVariableOp??sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp?,sequential_7/dense_28/BiasAdd/ReadVariableOp?+sequential_7/dense_28/MatMul/ReadVariableOp?,sequential_7/dense_29/BiasAdd/ReadVariableOp?+sequential_7/dense_29/MatMul/ReadVariableOp?,sequential_7/dense_30/BiasAdd/ReadVariableOp?+sequential_7/dense_30/MatMul/ReadVariableOp?,sequential_7/dense_31/BiasAdd/ReadVariableOp?+sequential_7/dense_31/MatMul/ReadVariableOp?
embedding_7/embedding_lookupResourceGather$embedding_7_embedding_lookup_3670354inputs_1",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_7/embedding_lookup/3670354*+
_output_shapes
:?????????d*
dtype02
embedding_7/embedding_lookup?
%embedding_7/embedding_lookup/IdentityIdentity%embedding_7/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_7/embedding_lookup/3670354*+
_output_shapes
:?????????d2'
%embedding_7/embedding_lookup/Identity?
'embedding_7/embedding_lookup/Identity_1Identity.embedding_7/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2)
'embedding_7/embedding_lookup/Identity_1u
flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"????d   2
flatten_11/Const?
flatten_11/ReshapeReshape0embedding_7/embedding_lookup/Identity_1:output:0flatten_11/Const:output:0*
T0*'
_output_shapes
:?????????d2
flatten_11/Reshape?
multiply_7/mulMulinputs_0flatten_11/Reshape:output:0*
T0*'
_output_shapes
:?????????d2
multiply_7/mul?
+sequential_7/dense_28/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_28_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02-
+sequential_7/dense_28/MatMul/ReadVariableOp?
sequential_7/dense_28/MatMulMatMulmultiply_7/mul:z:03sequential_7/dense_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_28/MatMul?
,sequential_7/dense_28/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_28/BiasAdd/ReadVariableOp?
sequential_7/dense_28/BiasAddBiasAdd&sequential_7/dense_28/MatMul:product:04sequential_7/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_28/BiasAdd?
%sequential_7/leaky_re_lu_21/LeakyRelu	LeakyRelu&sequential_7/dense_28/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_7/leaky_re_lu_21/LeakyRelu?
Asequential_7/batch_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2C
Asequential_7/batch_normalization_9/moments/mean/reduction_indices?
/sequential_7/batch_normalization_9/moments/meanMean3sequential_7/leaky_re_lu_21/LeakyRelu:activations:0Jsequential_7/batch_normalization_9/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(21
/sequential_7/batch_normalization_9/moments/mean?
7sequential_7/batch_normalization_9/moments/StopGradientStopGradient8sequential_7/batch_normalization_9/moments/mean:output:0*
T0*
_output_shapes
:	?29
7sequential_7/batch_normalization_9/moments/StopGradient?
<sequential_7/batch_normalization_9/moments/SquaredDifferenceSquaredDifference3sequential_7/leaky_re_lu_21/LeakyRelu:activations:0@sequential_7/batch_normalization_9/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2>
<sequential_7/batch_normalization_9/moments/SquaredDifference?
Esequential_7/batch_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2G
Esequential_7/batch_normalization_9/moments/variance/reduction_indices?
3sequential_7/batch_normalization_9/moments/varianceMean@sequential_7/batch_normalization_9/moments/SquaredDifference:z:0Nsequential_7/batch_normalization_9/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(25
3sequential_7/batch_normalization_9/moments/variance?
2sequential_7/batch_normalization_9/moments/SqueezeSqueeze8sequential_7/batch_normalization_9/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 24
2sequential_7/batch_normalization_9/moments/Squeeze?
4sequential_7/batch_normalization_9/moments/Squeeze_1Squeeze<sequential_7/batch_normalization_9/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 26
4sequential_7/batch_normalization_9/moments/Squeeze_1?
8sequential_7/batch_normalization_9/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_7/batch_normalization_9/AssignMovingAvg/3670377*
_output_shapes
: *
dtype0*
valueB
 *??L>2:
8sequential_7/batch_normalization_9/AssignMovingAvg/decay?
Asequential_7/batch_normalization_9/AssignMovingAvg/ReadVariableOpReadVariableOp:sequential_7_batch_normalization_9_assignmovingavg_3670377*
_output_shapes	
:?*
dtype02C
Asequential_7/batch_normalization_9/AssignMovingAvg/ReadVariableOp?
6sequential_7/batch_normalization_9/AssignMovingAvg/subSubIsequential_7/batch_normalization_9/AssignMovingAvg/ReadVariableOp:value:0;sequential_7/batch_normalization_9/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_7/batch_normalization_9/AssignMovingAvg/3670377*
_output_shapes	
:?28
6sequential_7/batch_normalization_9/AssignMovingAvg/sub?
6sequential_7/batch_normalization_9/AssignMovingAvg/mulMul:sequential_7/batch_normalization_9/AssignMovingAvg/sub:z:0Asequential_7/batch_normalization_9/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_7/batch_normalization_9/AssignMovingAvg/3670377*
_output_shapes	
:?28
6sequential_7/batch_normalization_9/AssignMovingAvg/mul?
Fsequential_7/batch_normalization_9/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp:sequential_7_batch_normalization_9_assignmovingavg_3670377:sequential_7/batch_normalization_9/AssignMovingAvg/mul:z:0B^sequential_7/batch_normalization_9/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_7/batch_normalization_9/AssignMovingAvg/3670377*
_output_shapes
 *
dtype02H
Fsequential_7/batch_normalization_9/AssignMovingAvg/AssignSubVariableOp?
:sequential_7/batch_normalization_9/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_7/batch_normalization_9/AssignMovingAvg_1/3670383*
_output_shapes
: *
dtype0*
valueB
 *??L>2<
:sequential_7/batch_normalization_9/AssignMovingAvg_1/decay?
Csequential_7/batch_normalization_9/AssignMovingAvg_1/ReadVariableOpReadVariableOp<sequential_7_batch_normalization_9_assignmovingavg_1_3670383*
_output_shapes	
:?*
dtype02E
Csequential_7/batch_normalization_9/AssignMovingAvg_1/ReadVariableOp?
8sequential_7/batch_normalization_9/AssignMovingAvg_1/subSubKsequential_7/batch_normalization_9/AssignMovingAvg_1/ReadVariableOp:value:0=sequential_7/batch_normalization_9/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_7/batch_normalization_9/AssignMovingAvg_1/3670383*
_output_shapes	
:?2:
8sequential_7/batch_normalization_9/AssignMovingAvg_1/sub?
8sequential_7/batch_normalization_9/AssignMovingAvg_1/mulMul<sequential_7/batch_normalization_9/AssignMovingAvg_1/sub:z:0Csequential_7/batch_normalization_9/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_7/batch_normalization_9/AssignMovingAvg_1/3670383*
_output_shapes	
:?2:
8sequential_7/batch_normalization_9/AssignMovingAvg_1/mul?
Hsequential_7/batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp<sequential_7_batch_normalization_9_assignmovingavg_1_3670383<sequential_7/batch_normalization_9/AssignMovingAvg_1/mul:z:0D^sequential_7/batch_normalization_9/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_7/batch_normalization_9/AssignMovingAvg_1/3670383*
_output_shapes
 *
dtype02J
Hsequential_7/batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOp?
2sequential_7/batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_7/batch_normalization_9/batchnorm/add/y?
0sequential_7/batch_normalization_9/batchnorm/addAddV2=sequential_7/batch_normalization_9/moments/Squeeze_1:output:0;sequential_7/batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_7/batch_normalization_9/batchnorm/add?
2sequential_7/batch_normalization_9/batchnorm/RsqrtRsqrt4sequential_7/batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_7/batch_normalization_9/batchnorm/Rsqrt?
?sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_7_batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp?
0sequential_7/batch_normalization_9/batchnorm/mulMul6sequential_7/batch_normalization_9/batchnorm/Rsqrt:y:0Gsequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_7/batch_normalization_9/batchnorm/mul?
2sequential_7/batch_normalization_9/batchnorm/mul_1Mul3sequential_7/leaky_re_lu_21/LeakyRelu:activations:04sequential_7/batch_normalization_9/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_7/batch_normalization_9/batchnorm/mul_1?
2sequential_7/batch_normalization_9/batchnorm/mul_2Mul;sequential_7/batch_normalization_9/moments/Squeeze:output:04sequential_7/batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_7/batch_normalization_9/batchnorm/mul_2?
;sequential_7/batch_normalization_9/batchnorm/ReadVariableOpReadVariableOpDsequential_7_batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_7/batch_normalization_9/batchnorm/ReadVariableOp?
0sequential_7/batch_normalization_9/batchnorm/subSubCsequential_7/batch_normalization_9/batchnorm/ReadVariableOp:value:06sequential_7/batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_7/batch_normalization_9/batchnorm/sub?
2sequential_7/batch_normalization_9/batchnorm/add_1AddV26sequential_7/batch_normalization_9/batchnorm/mul_1:z:04sequential_7/batch_normalization_9/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_7/batch_normalization_9/batchnorm/add_1?
+sequential_7/dense_29/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_29_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_7/dense_29/MatMul/ReadVariableOp?
sequential_7/dense_29/MatMulMatMul6sequential_7/batch_normalization_9/batchnorm/add_1:z:03sequential_7/dense_29/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_29/MatMul?
,sequential_7/dense_29/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_29/BiasAdd/ReadVariableOp?
sequential_7/dense_29/BiasAddBiasAdd&sequential_7/dense_29/MatMul:product:04sequential_7/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_29/BiasAdd?
%sequential_7/leaky_re_lu_22/LeakyRelu	LeakyRelu&sequential_7/dense_29/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_7/leaky_re_lu_22/LeakyRelu?
Bsequential_7/batch_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bsequential_7/batch_normalization_10/moments/mean/reduction_indices?
0sequential_7/batch_normalization_10/moments/meanMean3sequential_7/leaky_re_lu_22/LeakyRelu:activations:0Ksequential_7/batch_normalization_10/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(22
0sequential_7/batch_normalization_10/moments/mean?
8sequential_7/batch_normalization_10/moments/StopGradientStopGradient9sequential_7/batch_normalization_10/moments/mean:output:0*
T0*
_output_shapes
:	?2:
8sequential_7/batch_normalization_10/moments/StopGradient?
=sequential_7/batch_normalization_10/moments/SquaredDifferenceSquaredDifference3sequential_7/leaky_re_lu_22/LeakyRelu:activations:0Asequential_7/batch_normalization_10/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2?
=sequential_7/batch_normalization_10/moments/SquaredDifference?
Fsequential_7/batch_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fsequential_7/batch_normalization_10/moments/variance/reduction_indices?
4sequential_7/batch_normalization_10/moments/varianceMeanAsequential_7/batch_normalization_10/moments/SquaredDifference:z:0Osequential_7/batch_normalization_10/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(26
4sequential_7/batch_normalization_10/moments/variance?
3sequential_7/batch_normalization_10/moments/SqueezeSqueeze9sequential_7/batch_normalization_10/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 25
3sequential_7/batch_normalization_10/moments/Squeeze?
5sequential_7/batch_normalization_10/moments/Squeeze_1Squeeze=sequential_7/batch_normalization_10/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 27
5sequential_7/batch_normalization_10/moments/Squeeze_1?
9sequential_7/batch_normalization_10/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*N
_classD
B@loc:@sequential_7/batch_normalization_10/AssignMovingAvg/3670416*
_output_shapes
: *
dtype0*
valueB
 *??L>2;
9sequential_7/batch_normalization_10/AssignMovingAvg/decay?
Bsequential_7/batch_normalization_10/AssignMovingAvg/ReadVariableOpReadVariableOp;sequential_7_batch_normalization_10_assignmovingavg_3670416*
_output_shapes	
:?*
dtype02D
Bsequential_7/batch_normalization_10/AssignMovingAvg/ReadVariableOp?
7sequential_7/batch_normalization_10/AssignMovingAvg/subSubJsequential_7/batch_normalization_10/AssignMovingAvg/ReadVariableOp:value:0<sequential_7/batch_normalization_10/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*N
_classD
B@loc:@sequential_7/batch_normalization_10/AssignMovingAvg/3670416*
_output_shapes	
:?29
7sequential_7/batch_normalization_10/AssignMovingAvg/sub?
7sequential_7/batch_normalization_10/AssignMovingAvg/mulMul;sequential_7/batch_normalization_10/AssignMovingAvg/sub:z:0Bsequential_7/batch_normalization_10/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*N
_classD
B@loc:@sequential_7/batch_normalization_10/AssignMovingAvg/3670416*
_output_shapes	
:?29
7sequential_7/batch_normalization_10/AssignMovingAvg/mul?
Gsequential_7/batch_normalization_10/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp;sequential_7_batch_normalization_10_assignmovingavg_3670416;sequential_7/batch_normalization_10/AssignMovingAvg/mul:z:0C^sequential_7/batch_normalization_10/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*N
_classD
B@loc:@sequential_7/batch_normalization_10/AssignMovingAvg/3670416*
_output_shapes
 *
dtype02I
Gsequential_7/batch_normalization_10/AssignMovingAvg/AssignSubVariableOp?
;sequential_7/batch_normalization_10/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*P
_classF
DBloc:@sequential_7/batch_normalization_10/AssignMovingAvg_1/3670422*
_output_shapes
: *
dtype0*
valueB
 *??L>2=
;sequential_7/batch_normalization_10/AssignMovingAvg_1/decay?
Dsequential_7/batch_normalization_10/AssignMovingAvg_1/ReadVariableOpReadVariableOp=sequential_7_batch_normalization_10_assignmovingavg_1_3670422*
_output_shapes	
:?*
dtype02F
Dsequential_7/batch_normalization_10/AssignMovingAvg_1/ReadVariableOp?
9sequential_7/batch_normalization_10/AssignMovingAvg_1/subSubLsequential_7/batch_normalization_10/AssignMovingAvg_1/ReadVariableOp:value:0>sequential_7/batch_normalization_10/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*P
_classF
DBloc:@sequential_7/batch_normalization_10/AssignMovingAvg_1/3670422*
_output_shapes	
:?2;
9sequential_7/batch_normalization_10/AssignMovingAvg_1/sub?
9sequential_7/batch_normalization_10/AssignMovingAvg_1/mulMul=sequential_7/batch_normalization_10/AssignMovingAvg_1/sub:z:0Dsequential_7/batch_normalization_10/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*P
_classF
DBloc:@sequential_7/batch_normalization_10/AssignMovingAvg_1/3670422*
_output_shapes	
:?2;
9sequential_7/batch_normalization_10/AssignMovingAvg_1/mul?
Isequential_7/batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp=sequential_7_batch_normalization_10_assignmovingavg_1_3670422=sequential_7/batch_normalization_10/AssignMovingAvg_1/mul:z:0E^sequential_7/batch_normalization_10/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*P
_classF
DBloc:@sequential_7/batch_normalization_10/AssignMovingAvg_1/3670422*
_output_shapes
 *
dtype02K
Isequential_7/batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOp?
3sequential_7/batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:25
3sequential_7/batch_normalization_10/batchnorm/add/y?
1sequential_7/batch_normalization_10/batchnorm/addAddV2>sequential_7/batch_normalization_10/moments/Squeeze_1:output:0<sequential_7/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?23
1sequential_7/batch_normalization_10/batchnorm/add?
3sequential_7/batch_normalization_10/batchnorm/RsqrtRsqrt5sequential_7/batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes	
:?25
3sequential_7/batch_normalization_10/batchnorm/Rsqrt?
@sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_7_batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOp?
1sequential_7/batch_normalization_10/batchnorm/mulMul7sequential_7/batch_normalization_10/batchnorm/Rsqrt:y:0Hsequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?23
1sequential_7/batch_normalization_10/batchnorm/mul?
3sequential_7/batch_normalization_10/batchnorm/mul_1Mul3sequential_7/leaky_re_lu_22/LeakyRelu:activations:05sequential_7/batch_normalization_10/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????25
3sequential_7/batch_normalization_10/batchnorm/mul_1?
3sequential_7/batch_normalization_10/batchnorm/mul_2Mul<sequential_7/batch_normalization_10/moments/Squeeze:output:05sequential_7/batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes	
:?25
3sequential_7/batch_normalization_10/batchnorm/mul_2?
<sequential_7/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOpEsequential_7_batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<sequential_7/batch_normalization_10/batchnorm/ReadVariableOp?
1sequential_7/batch_normalization_10/batchnorm/subSubDsequential_7/batch_normalization_10/batchnorm/ReadVariableOp:value:07sequential_7/batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?23
1sequential_7/batch_normalization_10/batchnorm/sub?
3sequential_7/batch_normalization_10/batchnorm/add_1AddV27sequential_7/batch_normalization_10/batchnorm/mul_1:z:05sequential_7/batch_normalization_10/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????25
3sequential_7/batch_normalization_10/batchnorm/add_1?
+sequential_7/dense_30/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_30_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_7/dense_30/MatMul/ReadVariableOp?
sequential_7/dense_30/MatMulMatMul7sequential_7/batch_normalization_10/batchnorm/add_1:z:03sequential_7/dense_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_30/MatMul?
,sequential_7/dense_30/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_30_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_30/BiasAdd/ReadVariableOp?
sequential_7/dense_30/BiasAddBiasAdd&sequential_7/dense_30/MatMul:product:04sequential_7/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_30/BiasAdd?
%sequential_7/leaky_re_lu_23/LeakyRelu	LeakyRelu&sequential_7/dense_30/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_7/leaky_re_lu_23/LeakyRelu?
Bsequential_7/batch_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bsequential_7/batch_normalization_11/moments/mean/reduction_indices?
0sequential_7/batch_normalization_11/moments/meanMean3sequential_7/leaky_re_lu_23/LeakyRelu:activations:0Ksequential_7/batch_normalization_11/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(22
0sequential_7/batch_normalization_11/moments/mean?
8sequential_7/batch_normalization_11/moments/StopGradientStopGradient9sequential_7/batch_normalization_11/moments/mean:output:0*
T0*
_output_shapes
:	?2:
8sequential_7/batch_normalization_11/moments/StopGradient?
=sequential_7/batch_normalization_11/moments/SquaredDifferenceSquaredDifference3sequential_7/leaky_re_lu_23/LeakyRelu:activations:0Asequential_7/batch_normalization_11/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2?
=sequential_7/batch_normalization_11/moments/SquaredDifference?
Fsequential_7/batch_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fsequential_7/batch_normalization_11/moments/variance/reduction_indices?
4sequential_7/batch_normalization_11/moments/varianceMeanAsequential_7/batch_normalization_11/moments/SquaredDifference:z:0Osequential_7/batch_normalization_11/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(26
4sequential_7/batch_normalization_11/moments/variance?
3sequential_7/batch_normalization_11/moments/SqueezeSqueeze9sequential_7/batch_normalization_11/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 25
3sequential_7/batch_normalization_11/moments/Squeeze?
5sequential_7/batch_normalization_11/moments/Squeeze_1Squeeze=sequential_7/batch_normalization_11/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 27
5sequential_7/batch_normalization_11/moments/Squeeze_1?
9sequential_7/batch_normalization_11/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*N
_classD
B@loc:@sequential_7/batch_normalization_11/AssignMovingAvg/3670455*
_output_shapes
: *
dtype0*
valueB
 *??L>2;
9sequential_7/batch_normalization_11/AssignMovingAvg/decay?
Bsequential_7/batch_normalization_11/AssignMovingAvg/ReadVariableOpReadVariableOp;sequential_7_batch_normalization_11_assignmovingavg_3670455*
_output_shapes	
:?*
dtype02D
Bsequential_7/batch_normalization_11/AssignMovingAvg/ReadVariableOp?
7sequential_7/batch_normalization_11/AssignMovingAvg/subSubJsequential_7/batch_normalization_11/AssignMovingAvg/ReadVariableOp:value:0<sequential_7/batch_normalization_11/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*N
_classD
B@loc:@sequential_7/batch_normalization_11/AssignMovingAvg/3670455*
_output_shapes	
:?29
7sequential_7/batch_normalization_11/AssignMovingAvg/sub?
7sequential_7/batch_normalization_11/AssignMovingAvg/mulMul;sequential_7/batch_normalization_11/AssignMovingAvg/sub:z:0Bsequential_7/batch_normalization_11/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*N
_classD
B@loc:@sequential_7/batch_normalization_11/AssignMovingAvg/3670455*
_output_shapes	
:?29
7sequential_7/batch_normalization_11/AssignMovingAvg/mul?
Gsequential_7/batch_normalization_11/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp;sequential_7_batch_normalization_11_assignmovingavg_3670455;sequential_7/batch_normalization_11/AssignMovingAvg/mul:z:0C^sequential_7/batch_normalization_11/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*N
_classD
B@loc:@sequential_7/batch_normalization_11/AssignMovingAvg/3670455*
_output_shapes
 *
dtype02I
Gsequential_7/batch_normalization_11/AssignMovingAvg/AssignSubVariableOp?
;sequential_7/batch_normalization_11/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*P
_classF
DBloc:@sequential_7/batch_normalization_11/AssignMovingAvg_1/3670461*
_output_shapes
: *
dtype0*
valueB
 *??L>2=
;sequential_7/batch_normalization_11/AssignMovingAvg_1/decay?
Dsequential_7/batch_normalization_11/AssignMovingAvg_1/ReadVariableOpReadVariableOp=sequential_7_batch_normalization_11_assignmovingavg_1_3670461*
_output_shapes	
:?*
dtype02F
Dsequential_7/batch_normalization_11/AssignMovingAvg_1/ReadVariableOp?
9sequential_7/batch_normalization_11/AssignMovingAvg_1/subSubLsequential_7/batch_normalization_11/AssignMovingAvg_1/ReadVariableOp:value:0>sequential_7/batch_normalization_11/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*P
_classF
DBloc:@sequential_7/batch_normalization_11/AssignMovingAvg_1/3670461*
_output_shapes	
:?2;
9sequential_7/batch_normalization_11/AssignMovingAvg_1/sub?
9sequential_7/batch_normalization_11/AssignMovingAvg_1/mulMul=sequential_7/batch_normalization_11/AssignMovingAvg_1/sub:z:0Dsequential_7/batch_normalization_11/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*P
_classF
DBloc:@sequential_7/batch_normalization_11/AssignMovingAvg_1/3670461*
_output_shapes	
:?2;
9sequential_7/batch_normalization_11/AssignMovingAvg_1/mul?
Isequential_7/batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp=sequential_7_batch_normalization_11_assignmovingavg_1_3670461=sequential_7/batch_normalization_11/AssignMovingAvg_1/mul:z:0E^sequential_7/batch_normalization_11/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*P
_classF
DBloc:@sequential_7/batch_normalization_11/AssignMovingAvg_1/3670461*
_output_shapes
 *
dtype02K
Isequential_7/batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOp?
3sequential_7/batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:25
3sequential_7/batch_normalization_11/batchnorm/add/y?
1sequential_7/batch_normalization_11/batchnorm/addAddV2>sequential_7/batch_normalization_11/moments/Squeeze_1:output:0<sequential_7/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?23
1sequential_7/batch_normalization_11/batchnorm/add?
3sequential_7/batch_normalization_11/batchnorm/RsqrtRsqrt5sequential_7/batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes	
:?25
3sequential_7/batch_normalization_11/batchnorm/Rsqrt?
@sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_7_batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOp?
1sequential_7/batch_normalization_11/batchnorm/mulMul7sequential_7/batch_normalization_11/batchnorm/Rsqrt:y:0Hsequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?23
1sequential_7/batch_normalization_11/batchnorm/mul?
3sequential_7/batch_normalization_11/batchnorm/mul_1Mul3sequential_7/leaky_re_lu_23/LeakyRelu:activations:05sequential_7/batch_normalization_11/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????25
3sequential_7/batch_normalization_11/batchnorm/mul_1?
3sequential_7/batch_normalization_11/batchnorm/mul_2Mul<sequential_7/batch_normalization_11/moments/Squeeze:output:05sequential_7/batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes	
:?25
3sequential_7/batch_normalization_11/batchnorm/mul_2?
<sequential_7/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOpEsequential_7_batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<sequential_7/batch_normalization_11/batchnorm/ReadVariableOp?
1sequential_7/batch_normalization_11/batchnorm/subSubDsequential_7/batch_normalization_11/batchnorm/ReadVariableOp:value:07sequential_7/batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?23
1sequential_7/batch_normalization_11/batchnorm/sub?
3sequential_7/batch_normalization_11/batchnorm/add_1AddV27sequential_7/batch_normalization_11/batchnorm/mul_1:z:05sequential_7/batch_normalization_11/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????25
3sequential_7/batch_normalization_11/batchnorm/add_1?
+sequential_7/dense_31/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_31_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02-
+sequential_7/dense_31/MatMul/ReadVariableOp?
sequential_7/dense_31/MatMulMatMul7sequential_7/batch_normalization_11/batchnorm/add_1:z:03sequential_7/dense_31/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_7/dense_31/MatMul?
,sequential_7/dense_31/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_31_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02.
,sequential_7/dense_31/BiasAdd/ReadVariableOp?
sequential_7/dense_31/BiasAddBiasAdd&sequential_7/dense_31/MatMul:product:04sequential_7/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_7/dense_31/BiasAdd?
sequential_7/dense_31/TanhTanh&sequential_7/dense_31/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
sequential_7/dense_31/Tanh?
sequential_7/reshape_3/ShapeShapesequential_7/dense_31/Tanh:y:0*
T0*
_output_shapes
:2
sequential_7/reshape_3/Shape?
*sequential_7/reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_7/reshape_3/strided_slice/stack?
,sequential_7/reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_7/reshape_3/strided_slice/stack_1?
,sequential_7/reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_7/reshape_3/strided_slice/stack_2?
$sequential_7/reshape_3/strided_sliceStridedSlice%sequential_7/reshape_3/Shape:output:03sequential_7/reshape_3/strided_slice/stack:output:05sequential_7/reshape_3/strided_slice/stack_1:output:05sequential_7/reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_7/reshape_3/strided_slice?
&sequential_7/reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_7/reshape_3/Reshape/shape/1?
&sequential_7/reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_7/reshape_3/Reshape/shape/2?
&sequential_7/reshape_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_7/reshape_3/Reshape/shape/3?
$sequential_7/reshape_3/Reshape/shapePack-sequential_7/reshape_3/strided_slice:output:0/sequential_7/reshape_3/Reshape/shape/1:output:0/sequential_7/reshape_3/Reshape/shape/2:output:0/sequential_7/reshape_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$sequential_7/reshape_3/Reshape/shape?
sequential_7/reshape_3/ReshapeReshapesequential_7/dense_31/Tanh:y:0-sequential_7/reshape_3/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2 
sequential_7/reshape_3/Reshape?
IdentityIdentity'sequential_7/reshape_3/Reshape:output:0^embedding_7/embedding_lookupH^sequential_7/batch_normalization_10/AssignMovingAvg/AssignSubVariableOpC^sequential_7/batch_normalization_10/AssignMovingAvg/ReadVariableOpJ^sequential_7/batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOpE^sequential_7/batch_normalization_10/AssignMovingAvg_1/ReadVariableOp=^sequential_7/batch_normalization_10/batchnorm/ReadVariableOpA^sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOpH^sequential_7/batch_normalization_11/AssignMovingAvg/AssignSubVariableOpC^sequential_7/batch_normalization_11/AssignMovingAvg/ReadVariableOpJ^sequential_7/batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOpE^sequential_7/batch_normalization_11/AssignMovingAvg_1/ReadVariableOp=^sequential_7/batch_normalization_11/batchnorm/ReadVariableOpA^sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOpG^sequential_7/batch_normalization_9/AssignMovingAvg/AssignSubVariableOpB^sequential_7/batch_normalization_9/AssignMovingAvg/ReadVariableOpI^sequential_7/batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOpD^sequential_7/batch_normalization_9/AssignMovingAvg_1/ReadVariableOp<^sequential_7/batch_normalization_9/batchnorm/ReadVariableOp@^sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp-^sequential_7/dense_28/BiasAdd/ReadVariableOp,^sequential_7/dense_28/MatMul/ReadVariableOp-^sequential_7/dense_29/BiasAdd/ReadVariableOp,^sequential_7/dense_29/MatMul/ReadVariableOp-^sequential_7/dense_30/BiasAdd/ReadVariableOp,^sequential_7/dense_30/MatMul/ReadVariableOp-^sequential_7/dense_31/BiasAdd/ReadVariableOp,^sequential_7/dense_31/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2<
embedding_7/embedding_lookupembedding_7/embedding_lookup2?
Gsequential_7/batch_normalization_10/AssignMovingAvg/AssignSubVariableOpGsequential_7/batch_normalization_10/AssignMovingAvg/AssignSubVariableOp2?
Bsequential_7/batch_normalization_10/AssignMovingAvg/ReadVariableOpBsequential_7/batch_normalization_10/AssignMovingAvg/ReadVariableOp2?
Isequential_7/batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOpIsequential_7/batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOp2?
Dsequential_7/batch_normalization_10/AssignMovingAvg_1/ReadVariableOpDsequential_7/batch_normalization_10/AssignMovingAvg_1/ReadVariableOp2|
<sequential_7/batch_normalization_10/batchnorm/ReadVariableOp<sequential_7/batch_normalization_10/batchnorm/ReadVariableOp2?
@sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOp@sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOp2?
Gsequential_7/batch_normalization_11/AssignMovingAvg/AssignSubVariableOpGsequential_7/batch_normalization_11/AssignMovingAvg/AssignSubVariableOp2?
Bsequential_7/batch_normalization_11/AssignMovingAvg/ReadVariableOpBsequential_7/batch_normalization_11/AssignMovingAvg/ReadVariableOp2?
Isequential_7/batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOpIsequential_7/batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOp2?
Dsequential_7/batch_normalization_11/AssignMovingAvg_1/ReadVariableOpDsequential_7/batch_normalization_11/AssignMovingAvg_1/ReadVariableOp2|
<sequential_7/batch_normalization_11/batchnorm/ReadVariableOp<sequential_7/batch_normalization_11/batchnorm/ReadVariableOp2?
@sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOp@sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOp2?
Fsequential_7/batch_normalization_9/AssignMovingAvg/AssignSubVariableOpFsequential_7/batch_normalization_9/AssignMovingAvg/AssignSubVariableOp2?
Asequential_7/batch_normalization_9/AssignMovingAvg/ReadVariableOpAsequential_7/batch_normalization_9/AssignMovingAvg/ReadVariableOp2?
Hsequential_7/batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOpHsequential_7/batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOp2?
Csequential_7/batch_normalization_9/AssignMovingAvg_1/ReadVariableOpCsequential_7/batch_normalization_9/AssignMovingAvg_1/ReadVariableOp2z
;sequential_7/batch_normalization_9/batchnorm/ReadVariableOp;sequential_7/batch_normalization_9/batchnorm/ReadVariableOp2?
?sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp?sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp2\
,sequential_7/dense_28/BiasAdd/ReadVariableOp,sequential_7/dense_28/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_28/MatMul/ReadVariableOp+sequential_7/dense_28/MatMul/ReadVariableOp2\
,sequential_7/dense_29/BiasAdd/ReadVariableOp,sequential_7/dense_29/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_29/MatMul/ReadVariableOp+sequential_7/dense_29/MatMul/ReadVariableOp2\
,sequential_7/dense_30/BiasAdd/ReadVariableOp,sequential_7/dense_30/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_30/MatMul/ReadVariableOp+sequential_7/dense_30/MatMul/ReadVariableOp2\
,sequential_7/dense_31/BiasAdd/ReadVariableOp,sequential_7/dense_31/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_31/MatMul/ReadVariableOp+sequential_7/dense_31/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?

*__inference_dense_28_layer_call_fn_3671068

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
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_36693452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
G
+__inference_reshape_3_layer_call_fn_3671421

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_3_layer_call_and_return_conditional_losses_36695982
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
*__inference_model_10_layer_call_fn_3670692
inputs_0
inputs_1
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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_10_layer_call_and_return_conditional_losses_36702552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
8__inference_batch_normalization_11_layer_call_fn_3671382

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_36693202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?Z
?
#__inference__traced_restore_3671581
file_prefix+
'assignvariableop_embedding_7_embeddings&
"assignvariableop_1_dense_28_kernel$
 assignvariableop_2_dense_28_bias2
.assignvariableop_3_batch_normalization_9_gamma1
-assignvariableop_4_batch_normalization_9_beta&
"assignvariableop_5_dense_29_kernel$
 assignvariableop_6_dense_29_bias3
/assignvariableop_7_batch_normalization_10_gamma2
.assignvariableop_8_batch_normalization_10_beta&
"assignvariableop_9_dense_30_kernel%
!assignvariableop_10_dense_30_bias4
0assignvariableop_11_batch_normalization_11_gamma3
/assignvariableop_12_batch_normalization_11_beta'
#assignvariableop_13_dense_31_kernel%
!assignvariableop_14_dense_31_bias9
5assignvariableop_15_batch_normalization_9_moving_mean=
9assignvariableop_16_batch_normalization_9_moving_variance:
6assignvariableop_17_batch_normalization_10_moving_mean>
:assignvariableop_18_batch_normalization_10_moving_variance:
6assignvariableop_19_batch_normalization_11_moving_mean>
:assignvariableop_20_batch_normalization_11_moving_variance
identity_22??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp'assignvariableop_embedding_7_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_28_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp assignvariableop_2_dense_28_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_9_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp-assignvariableop_4_batch_normalization_9_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_29_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_29_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp/assignvariableop_7_batch_normalization_10_gammaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_10_betaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_30_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp!assignvariableop_10_dense_30_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp0assignvariableop_11_batch_normalization_11_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_batch_normalization_11_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_dense_31_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp!assignvariableop_14_dense_31_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp5assignvariableop_15_batch_normalization_9_moving_meanIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp9assignvariableop_16_batch_normalization_9_moving_varianceIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp6assignvariableop_17_batch_normalization_10_moving_meanIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp:assignvariableop_18_batch_normalization_10_moving_varianceIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp6assignvariableop_19_batch_normalization_11_moving_meanIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp:assignvariableop_20_batch_normalization_11_moving_varianceIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21?
Identity_22IdentityIdentity_21:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_22"#
identity_22Identity_22:output:0*i
_input_shapesX
V: :::::::::::::::::::::2$
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
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
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
??
?
"__inference__wrapped_model_3668911
input_21
input_221
-model_10_embedding_7_embedding_lookup_3668816A
=model_10_sequential_7_dense_28_matmul_readvariableop_resourceB
>model_10_sequential_7_dense_28_biasadd_readvariableop_resourceQ
Mmodel_10_sequential_7_batch_normalization_9_batchnorm_readvariableop_resourceU
Qmodel_10_sequential_7_batch_normalization_9_batchnorm_mul_readvariableop_resourceS
Omodel_10_sequential_7_batch_normalization_9_batchnorm_readvariableop_1_resourceS
Omodel_10_sequential_7_batch_normalization_9_batchnorm_readvariableop_2_resourceA
=model_10_sequential_7_dense_29_matmul_readvariableop_resourceB
>model_10_sequential_7_dense_29_biasadd_readvariableop_resourceR
Nmodel_10_sequential_7_batch_normalization_10_batchnorm_readvariableop_resourceV
Rmodel_10_sequential_7_batch_normalization_10_batchnorm_mul_readvariableop_resourceT
Pmodel_10_sequential_7_batch_normalization_10_batchnorm_readvariableop_1_resourceT
Pmodel_10_sequential_7_batch_normalization_10_batchnorm_readvariableop_2_resourceA
=model_10_sequential_7_dense_30_matmul_readvariableop_resourceB
>model_10_sequential_7_dense_30_biasadd_readvariableop_resourceR
Nmodel_10_sequential_7_batch_normalization_11_batchnorm_readvariableop_resourceV
Rmodel_10_sequential_7_batch_normalization_11_batchnorm_mul_readvariableop_resourceT
Pmodel_10_sequential_7_batch_normalization_11_batchnorm_readvariableop_1_resourceT
Pmodel_10_sequential_7_batch_normalization_11_batchnorm_readvariableop_2_resourceA
=model_10_sequential_7_dense_31_matmul_readvariableop_resourceB
>model_10_sequential_7_dense_31_biasadd_readvariableop_resource
identity??%model_10/embedding_7/embedding_lookup?Emodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp?Gmodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_1?Gmodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_2?Imodel_10/sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOp?Emodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp?Gmodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_1?Gmodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_2?Imodel_10/sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOp?Dmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp?Fmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1?Fmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2?Hmodel_10/sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp?5model_10/sequential_7/dense_28/BiasAdd/ReadVariableOp?4model_10/sequential_7/dense_28/MatMul/ReadVariableOp?5model_10/sequential_7/dense_29/BiasAdd/ReadVariableOp?4model_10/sequential_7/dense_29/MatMul/ReadVariableOp?5model_10/sequential_7/dense_30/BiasAdd/ReadVariableOp?4model_10/sequential_7/dense_30/MatMul/ReadVariableOp?5model_10/sequential_7/dense_31/BiasAdd/ReadVariableOp?4model_10/sequential_7/dense_31/MatMul/ReadVariableOp?
%model_10/embedding_7/embedding_lookupResourceGather-model_10_embedding_7_embedding_lookup_3668816input_22",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*@
_class6
42loc:@model_10/embedding_7/embedding_lookup/3668816*+
_output_shapes
:?????????d*
dtype02'
%model_10/embedding_7/embedding_lookup?
.model_10/embedding_7/embedding_lookup/IdentityIdentity.model_10/embedding_7/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*@
_class6
42loc:@model_10/embedding_7/embedding_lookup/3668816*+
_output_shapes
:?????????d20
.model_10/embedding_7/embedding_lookup/Identity?
0model_10/embedding_7/embedding_lookup/Identity_1Identity7model_10/embedding_7/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d22
0model_10/embedding_7/embedding_lookup/Identity_1?
model_10/flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"????d   2
model_10/flatten_11/Const?
model_10/flatten_11/ReshapeReshape9model_10/embedding_7/embedding_lookup/Identity_1:output:0"model_10/flatten_11/Const:output:0*
T0*'
_output_shapes
:?????????d2
model_10/flatten_11/Reshape?
model_10/multiply_7/mulMulinput_21$model_10/flatten_11/Reshape:output:0*
T0*'
_output_shapes
:?????????d2
model_10/multiply_7/mul?
4model_10/sequential_7/dense_28/MatMul/ReadVariableOpReadVariableOp=model_10_sequential_7_dense_28_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype026
4model_10/sequential_7/dense_28/MatMul/ReadVariableOp?
%model_10/sequential_7/dense_28/MatMulMatMulmodel_10/multiply_7/mul:z:0<model_10/sequential_7/dense_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%model_10/sequential_7/dense_28/MatMul?
5model_10/sequential_7/dense_28/BiasAdd/ReadVariableOpReadVariableOp>model_10_sequential_7_dense_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype027
5model_10/sequential_7/dense_28/BiasAdd/ReadVariableOp?
&model_10/sequential_7/dense_28/BiasAddBiasAdd/model_10/sequential_7/dense_28/MatMul:product:0=model_10/sequential_7/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&model_10/sequential_7/dense_28/BiasAdd?
.model_10/sequential_7/leaky_re_lu_21/LeakyRelu	LeakyRelu/model_10/sequential_7/dense_28/BiasAdd:output:0*(
_output_shapes
:??????????20
.model_10/sequential_7/leaky_re_lu_21/LeakyRelu?
Dmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOpReadVariableOpMmodel_10_sequential_7_batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp?
;model_10/sequential_7/batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2=
;model_10/sequential_7/batch_normalization_9/batchnorm/add/y?
9model_10/sequential_7/batch_normalization_9/batchnorm/addAddV2Lmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp:value:0Dmodel_10/sequential_7/batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2;
9model_10/sequential_7/batch_normalization_9/batchnorm/add?
;model_10/sequential_7/batch_normalization_9/batchnorm/RsqrtRsqrt=model_10/sequential_7/batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:?2=
;model_10/sequential_7/batch_normalization_9/batchnorm/Rsqrt?
Hmodel_10/sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOpQmodel_10_sequential_7_batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodel_10/sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp?
9model_10/sequential_7/batch_normalization_9/batchnorm/mulMul?model_10/sequential_7/batch_normalization_9/batchnorm/Rsqrt:y:0Pmodel_10/sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2;
9model_10/sequential_7/batch_normalization_9/batchnorm/mul?
;model_10/sequential_7/batch_normalization_9/batchnorm/mul_1Mul<model_10/sequential_7/leaky_re_lu_21/LeakyRelu:activations:0=model_10/sequential_7/batch_normalization_9/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2=
;model_10/sequential_7/batch_normalization_9/batchnorm/mul_1?
Fmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1ReadVariableOpOmodel_10_sequential_7_batch_normalization_9_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02H
Fmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1?
;model_10/sequential_7/batch_normalization_9/batchnorm/mul_2MulNmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1:value:0=model_10/sequential_7/batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2=
;model_10/sequential_7/batch_normalization_9/batchnorm/mul_2?
Fmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2ReadVariableOpOmodel_10_sequential_7_batch_normalization_9_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02H
Fmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2?
9model_10/sequential_7/batch_normalization_9/batchnorm/subSubNmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2:value:0?model_10/sequential_7/batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2;
9model_10/sequential_7/batch_normalization_9/batchnorm/sub?
;model_10/sequential_7/batch_normalization_9/batchnorm/add_1AddV2?model_10/sequential_7/batch_normalization_9/batchnorm/mul_1:z:0=model_10/sequential_7/batch_normalization_9/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2=
;model_10/sequential_7/batch_normalization_9/batchnorm/add_1?
4model_10/sequential_7/dense_29/MatMul/ReadVariableOpReadVariableOp=model_10_sequential_7_dense_29_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype026
4model_10/sequential_7/dense_29/MatMul/ReadVariableOp?
%model_10/sequential_7/dense_29/MatMulMatMul?model_10/sequential_7/batch_normalization_9/batchnorm/add_1:z:0<model_10/sequential_7/dense_29/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%model_10/sequential_7/dense_29/MatMul?
5model_10/sequential_7/dense_29/BiasAdd/ReadVariableOpReadVariableOp>model_10_sequential_7_dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype027
5model_10/sequential_7/dense_29/BiasAdd/ReadVariableOp?
&model_10/sequential_7/dense_29/BiasAddBiasAdd/model_10/sequential_7/dense_29/MatMul:product:0=model_10/sequential_7/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&model_10/sequential_7/dense_29/BiasAdd?
.model_10/sequential_7/leaky_re_lu_22/LeakyRelu	LeakyRelu/model_10/sequential_7/dense_29/BiasAdd:output:0*(
_output_shapes
:??????????20
.model_10/sequential_7/leaky_re_lu_22/LeakyRelu?
Emodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOpNmodel_10_sequential_7_batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Emodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp?
<model_10/sequential_7/batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2>
<model_10/sequential_7/batch_normalization_10/batchnorm/add/y?
:model_10/sequential_7/batch_normalization_10/batchnorm/addAddV2Mmodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp:value:0Emodel_10/sequential_7/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2<
:model_10/sequential_7/batch_normalization_10/batchnorm/add?
<model_10/sequential_7/batch_normalization_10/batchnorm/RsqrtRsqrt>model_10/sequential_7/batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes	
:?2>
<model_10/sequential_7/batch_normalization_10/batchnorm/Rsqrt?
Imodel_10/sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpRmodel_10_sequential_7_batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02K
Imodel_10/sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOp?
:model_10/sequential_7/batch_normalization_10/batchnorm/mulMul@model_10/sequential_7/batch_normalization_10/batchnorm/Rsqrt:y:0Qmodel_10/sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2<
:model_10/sequential_7/batch_normalization_10/batchnorm/mul?
<model_10/sequential_7/batch_normalization_10/batchnorm/mul_1Mul<model_10/sequential_7/leaky_re_lu_22/LeakyRelu:activations:0>model_10/sequential_7/batch_normalization_10/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2>
<model_10/sequential_7/batch_normalization_10/batchnorm/mul_1?
Gmodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOpPmodel_10_sequential_7_batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02I
Gmodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_1?
<model_10/sequential_7/batch_normalization_10/batchnorm/mul_2MulOmodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_1:value:0>model_10/sequential_7/batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2>
<model_10/sequential_7/batch_normalization_10/batchnorm/mul_2?
Gmodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOpPmodel_10_sequential_7_batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02I
Gmodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_2?
:model_10/sequential_7/batch_normalization_10/batchnorm/subSubOmodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_2:value:0@model_10/sequential_7/batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2<
:model_10/sequential_7/batch_normalization_10/batchnorm/sub?
<model_10/sequential_7/batch_normalization_10/batchnorm/add_1AddV2@model_10/sequential_7/batch_normalization_10/batchnorm/mul_1:z:0>model_10/sequential_7/batch_normalization_10/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2>
<model_10/sequential_7/batch_normalization_10/batchnorm/add_1?
4model_10/sequential_7/dense_30/MatMul/ReadVariableOpReadVariableOp=model_10_sequential_7_dense_30_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype026
4model_10/sequential_7/dense_30/MatMul/ReadVariableOp?
%model_10/sequential_7/dense_30/MatMulMatMul@model_10/sequential_7/batch_normalization_10/batchnorm/add_1:z:0<model_10/sequential_7/dense_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%model_10/sequential_7/dense_30/MatMul?
5model_10/sequential_7/dense_30/BiasAdd/ReadVariableOpReadVariableOp>model_10_sequential_7_dense_30_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype027
5model_10/sequential_7/dense_30/BiasAdd/ReadVariableOp?
&model_10/sequential_7/dense_30/BiasAddBiasAdd/model_10/sequential_7/dense_30/MatMul:product:0=model_10/sequential_7/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&model_10/sequential_7/dense_30/BiasAdd?
.model_10/sequential_7/leaky_re_lu_23/LeakyRelu	LeakyRelu/model_10/sequential_7/dense_30/BiasAdd:output:0*(
_output_shapes
:??????????20
.model_10/sequential_7/leaky_re_lu_23/LeakyRelu?
Emodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOpNmodel_10_sequential_7_batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Emodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp?
<model_10/sequential_7/batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2>
<model_10/sequential_7/batch_normalization_11/batchnorm/add/y?
:model_10/sequential_7/batch_normalization_11/batchnorm/addAddV2Mmodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp:value:0Emodel_10/sequential_7/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2<
:model_10/sequential_7/batch_normalization_11/batchnorm/add?
<model_10/sequential_7/batch_normalization_11/batchnorm/RsqrtRsqrt>model_10/sequential_7/batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes	
:?2>
<model_10/sequential_7/batch_normalization_11/batchnorm/Rsqrt?
Imodel_10/sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpRmodel_10_sequential_7_batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02K
Imodel_10/sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOp?
:model_10/sequential_7/batch_normalization_11/batchnorm/mulMul@model_10/sequential_7/batch_normalization_11/batchnorm/Rsqrt:y:0Qmodel_10/sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2<
:model_10/sequential_7/batch_normalization_11/batchnorm/mul?
<model_10/sequential_7/batch_normalization_11/batchnorm/mul_1Mul<model_10/sequential_7/leaky_re_lu_23/LeakyRelu:activations:0>model_10/sequential_7/batch_normalization_11/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2>
<model_10/sequential_7/batch_normalization_11/batchnorm/mul_1?
Gmodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_1ReadVariableOpPmodel_10_sequential_7_batch_normalization_11_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02I
Gmodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_1?
<model_10/sequential_7/batch_normalization_11/batchnorm/mul_2MulOmodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_1:value:0>model_10/sequential_7/batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2>
<model_10/sequential_7/batch_normalization_11/batchnorm/mul_2?
Gmodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_2ReadVariableOpPmodel_10_sequential_7_batch_normalization_11_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02I
Gmodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_2?
:model_10/sequential_7/batch_normalization_11/batchnorm/subSubOmodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_2:value:0@model_10/sequential_7/batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2<
:model_10/sequential_7/batch_normalization_11/batchnorm/sub?
<model_10/sequential_7/batch_normalization_11/batchnorm/add_1AddV2@model_10/sequential_7/batch_normalization_11/batchnorm/mul_1:z:0>model_10/sequential_7/batch_normalization_11/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2>
<model_10/sequential_7/batch_normalization_11/batchnorm/add_1?
4model_10/sequential_7/dense_31/MatMul/ReadVariableOpReadVariableOp=model_10_sequential_7_dense_31_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype026
4model_10/sequential_7/dense_31/MatMul/ReadVariableOp?
%model_10/sequential_7/dense_31/MatMulMatMul@model_10/sequential_7/batch_normalization_11/batchnorm/add_1:z:0<model_10/sequential_7/dense_31/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2'
%model_10/sequential_7/dense_31/MatMul?
5model_10/sequential_7/dense_31/BiasAdd/ReadVariableOpReadVariableOp>model_10_sequential_7_dense_31_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype027
5model_10/sequential_7/dense_31/BiasAdd/ReadVariableOp?
&model_10/sequential_7/dense_31/BiasAddBiasAdd/model_10/sequential_7/dense_31/MatMul:product:0=model_10/sequential_7/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2(
&model_10/sequential_7/dense_31/BiasAdd?
#model_10/sequential_7/dense_31/TanhTanh/model_10/sequential_7/dense_31/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2%
#model_10/sequential_7/dense_31/Tanh?
%model_10/sequential_7/reshape_3/ShapeShape'model_10/sequential_7/dense_31/Tanh:y:0*
T0*
_output_shapes
:2'
%model_10/sequential_7/reshape_3/Shape?
3model_10/sequential_7/reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3model_10/sequential_7/reshape_3/strided_slice/stack?
5model_10/sequential_7/reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5model_10/sequential_7/reshape_3/strided_slice/stack_1?
5model_10/sequential_7/reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5model_10/sequential_7/reshape_3/strided_slice/stack_2?
-model_10/sequential_7/reshape_3/strided_sliceStridedSlice.model_10/sequential_7/reshape_3/Shape:output:0<model_10/sequential_7/reshape_3/strided_slice/stack:output:0>model_10/sequential_7/reshape_3/strided_slice/stack_1:output:0>model_10/sequential_7/reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-model_10/sequential_7/reshape_3/strided_slice?
/model_10/sequential_7/reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?21
/model_10/sequential_7/reshape_3/Reshape/shape/1?
/model_10/sequential_7/reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?21
/model_10/sequential_7/reshape_3/Reshape/shape/2?
/model_10/sequential_7/reshape_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :21
/model_10/sequential_7/reshape_3/Reshape/shape/3?
-model_10/sequential_7/reshape_3/Reshape/shapePack6model_10/sequential_7/reshape_3/strided_slice:output:08model_10/sequential_7/reshape_3/Reshape/shape/1:output:08model_10/sequential_7/reshape_3/Reshape/shape/2:output:08model_10/sequential_7/reshape_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2/
-model_10/sequential_7/reshape_3/Reshape/shape?
'model_10/sequential_7/reshape_3/ReshapeReshape'model_10/sequential_7/dense_31/Tanh:y:06model_10/sequential_7/reshape_3/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2)
'model_10/sequential_7/reshape_3/Reshape?
IdentityIdentity0model_10/sequential_7/reshape_3/Reshape:output:0&^model_10/embedding_7/embedding_lookupF^model_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOpH^model_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_1H^model_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_2J^model_10/sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOpF^model_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOpH^model_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_1H^model_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_2J^model_10/sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOpE^model_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOpG^model_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1G^model_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2I^model_10/sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp6^model_10/sequential_7/dense_28/BiasAdd/ReadVariableOp5^model_10/sequential_7/dense_28/MatMul/ReadVariableOp6^model_10/sequential_7/dense_29/BiasAdd/ReadVariableOp5^model_10/sequential_7/dense_29/MatMul/ReadVariableOp6^model_10/sequential_7/dense_30/BiasAdd/ReadVariableOp5^model_10/sequential_7/dense_30/MatMul/ReadVariableOp6^model_10/sequential_7/dense_31/BiasAdd/ReadVariableOp5^model_10/sequential_7/dense_31/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2N
%model_10/embedding_7/embedding_lookup%model_10/embedding_7/embedding_lookup2?
Emodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOpEmodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp2?
Gmodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_1Gmodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_12?
Gmodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_2Gmodel_10/sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_22?
Imodel_10/sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOpImodel_10/sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOp2?
Emodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOpEmodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp2?
Gmodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_1Gmodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_12?
Gmodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_2Gmodel_10/sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_22?
Imodel_10/sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOpImodel_10/sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOp2?
Dmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOpDmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp2?
Fmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1Fmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_12?
Fmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2Fmodel_10/sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_22?
Hmodel_10/sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOpHmodel_10/sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp2n
5model_10/sequential_7/dense_28/BiasAdd/ReadVariableOp5model_10/sequential_7/dense_28/BiasAdd/ReadVariableOp2l
4model_10/sequential_7/dense_28/MatMul/ReadVariableOp4model_10/sequential_7/dense_28/MatMul/ReadVariableOp2n
5model_10/sequential_7/dense_29/BiasAdd/ReadVariableOp5model_10/sequential_7/dense_29/BiasAdd/ReadVariableOp2l
4model_10/sequential_7/dense_29/MatMul/ReadVariableOp4model_10/sequential_7/dense_29/MatMul/ReadVariableOp2n
5model_10/sequential_7/dense_30/BiasAdd/ReadVariableOp5model_10/sequential_7/dense_30/BiasAdd/ReadVariableOp2l
4model_10/sequential_7/dense_30/MatMul/ReadVariableOp4model_10/sequential_7/dense_30/MatMul/ReadVariableOp2n
5model_10/sequential_7/dense_31/BiasAdd/ReadVariableOp5model_10/sequential_7/dense_31/BiasAdd/ReadVariableOp2l
4model_10/sequential_7/dense_31/MatMul/ReadVariableOp4model_10/sequential_7/dense_31/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
input_21:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_22
?	
?
H__inference_embedding_7_layer_call_and_return_conditional_losses_3669877

inputs
embedding_lookup_3669871
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_3669871inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/3669871*+
_output_shapes
:?????????d*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/3669871*+
_output_shapes
:?????????d2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_model_10_layer_call_fn_3670300
input_21
input_22
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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_21input_22unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_10_layer_call_and_return_conditional_losses_36702552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
input_21:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_22
?	
?
E__inference_dense_28_layer_call_and_return_conditional_losses_3669345

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
E__inference_model_10_layer_call_and_return_conditional_losses_3670156

inputs
inputs_1
embedding_7_3670109
sequential_7_3670114
sequential_7_3670116
sequential_7_3670118
sequential_7_3670120
sequential_7_3670122
sequential_7_3670124
sequential_7_3670126
sequential_7_3670128
sequential_7_3670130
sequential_7_3670132
sequential_7_3670134
sequential_7_3670136
sequential_7_3670138
sequential_7_3670140
sequential_7_3670142
sequential_7_3670144
sequential_7_3670146
sequential_7_3670148
sequential_7_3670150
sequential_7_3670152
identity??#embedding_7/StatefulPartitionedCall?$sequential_7/StatefulPartitionedCall?
#embedding_7/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_7_3670109*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_embedding_7_layer_call_and_return_conditional_losses_36698772%
#embedding_7/StatefulPartitionedCall?
flatten_11/PartitionedCallPartitionedCall,embedding_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_11_layer_call_and_return_conditional_losses_36698952
flatten_11/PartitionedCall?
multiply_7/PartitionedCallPartitionedCallinputs#flatten_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_multiply_7_layer_call_and_return_conditional_losses_36699092
multiply_7/PartitionedCall?
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall#multiply_7/PartitionedCall:output:0sequential_7_3670114sequential_7_3670116sequential_7_3670118sequential_7_3670120sequential_7_3670122sequential_7_3670124sequential_7_3670126sequential_7_3670128sequential_7_3670130sequential_7_3670132sequential_7_3670134sequential_7_3670136sequential_7_3670138sequential_7_3670140sequential_7_3670142sequential_7_3670144sequential_7_3670146sequential_7_3670148sequential_7_3670150sequential_7_3670152* 
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*0
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_36697202&
$sequential_7/StatefulPartitionedCall?
IdentityIdentity-sequential_7/StatefulPartitionedCall:output:0$^embedding_7/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2J
#embedding_7/StatefulPartitionedCall#embedding_7/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_29_layer_call_and_return_conditional_losses_3671170

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?4
?

 __inference__traced_save_3671508
file_prefix5
1savev2_embedding_7_embeddings_read_readvariableop.
*savev2_dense_28_kernel_read_readvariableop,
(savev2_dense_28_bias_read_readvariableop:
6savev2_batch_normalization_9_gamma_read_readvariableop9
5savev2_batch_normalization_9_beta_read_readvariableop.
*savev2_dense_29_kernel_read_readvariableop,
(savev2_dense_29_bias_read_readvariableop;
7savev2_batch_normalization_10_gamma_read_readvariableop:
6savev2_batch_normalization_10_beta_read_readvariableop.
*savev2_dense_30_kernel_read_readvariableop,
(savev2_dense_30_bias_read_readvariableop;
7savev2_batch_normalization_11_gamma_read_readvariableop:
6savev2_batch_normalization_11_beta_read_readvariableop.
*savev2_dense_31_kernel_read_readvariableop,
(savev2_dense_31_bias_read_readvariableop@
<savev2_batch_normalization_9_moving_mean_read_readvariableopD
@savev2_batch_normalization_9_moving_variance_read_readvariableopA
=savev2_batch_normalization_10_moving_mean_read_readvariableopE
Asavev2_batch_normalization_10_moving_variance_read_readvariableopA
=savev2_batch_normalization_11_moving_mean_read_readvariableopE
Asavev2_batch_normalization_11_moving_variance_read_readvariableop
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
ShardedFilename?	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_7_embeddings_read_readvariableop*savev2_dense_28_kernel_read_readvariableop(savev2_dense_28_bias_read_readvariableop6savev2_batch_normalization_9_gamma_read_readvariableop5savev2_batch_normalization_9_beta_read_readvariableop*savev2_dense_29_kernel_read_readvariableop(savev2_dense_29_bias_read_readvariableop7savev2_batch_normalization_10_gamma_read_readvariableop6savev2_batch_normalization_10_beta_read_readvariableop*savev2_dense_30_kernel_read_readvariableop(savev2_dense_30_bias_read_readvariableop7savev2_batch_normalization_11_gamma_read_readvariableop6savev2_batch_normalization_11_beta_read_readvariableop*savev2_dense_31_kernel_read_readvariableop(savev2_dense_31_bias_read_readvariableop<savev2_batch_normalization_9_moving_mean_read_readvariableop@savev2_batch_normalization_9_moving_variance_read_readvariableop=savev2_batch_normalization_10_moving_mean_read_readvariableopAsavev2_batch_normalization_10_moving_variance_read_readvariableop=savev2_batch_normalization_11_moving_mean_read_readvariableopAsavev2_batch_normalization_11_moving_variance_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
22
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :d:	d?:?:?:?:
??:?:?:?:
??:?:?:?:???:??:?:?:?:?:?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:d:%!

_output_shapes
:	d?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!	

_output_shapes	
:?:&
"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:'#
!
_output_shapes
:???:"

_output_shapes

:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:

_output_shapes
: 
?
b
F__inference_reshape_3_layer_call_and_return_conditional_losses_3669598

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/1e
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapey
ReshapeReshapeinputsReshape/shape:output:0*
T0*1
_output_shapes
:???????????2	
Reshapen
IdentityIdentityReshape:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
E__inference_model_10_layer_call_and_return_conditional_losses_3670596
inputs_0
inputs_1(
$embedding_7_embedding_lookup_36705018
4sequential_7_dense_28_matmul_readvariableop_resource9
5sequential_7_dense_28_biasadd_readvariableop_resourceH
Dsequential_7_batch_normalization_9_batchnorm_readvariableop_resourceL
Hsequential_7_batch_normalization_9_batchnorm_mul_readvariableop_resourceJ
Fsequential_7_batch_normalization_9_batchnorm_readvariableop_1_resourceJ
Fsequential_7_batch_normalization_9_batchnorm_readvariableop_2_resource8
4sequential_7_dense_29_matmul_readvariableop_resource9
5sequential_7_dense_29_biasadd_readvariableop_resourceI
Esequential_7_batch_normalization_10_batchnorm_readvariableop_resourceM
Isequential_7_batch_normalization_10_batchnorm_mul_readvariableop_resourceK
Gsequential_7_batch_normalization_10_batchnorm_readvariableop_1_resourceK
Gsequential_7_batch_normalization_10_batchnorm_readvariableop_2_resource8
4sequential_7_dense_30_matmul_readvariableop_resource9
5sequential_7_dense_30_biasadd_readvariableop_resourceI
Esequential_7_batch_normalization_11_batchnorm_readvariableop_resourceM
Isequential_7_batch_normalization_11_batchnorm_mul_readvariableop_resourceK
Gsequential_7_batch_normalization_11_batchnorm_readvariableop_1_resourceK
Gsequential_7_batch_normalization_11_batchnorm_readvariableop_2_resource8
4sequential_7_dense_31_matmul_readvariableop_resource9
5sequential_7_dense_31_biasadd_readvariableop_resource
identity??embedding_7/embedding_lookup?<sequential_7/batch_normalization_10/batchnorm/ReadVariableOp?>sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_1?>sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_2?@sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOp?<sequential_7/batch_normalization_11/batchnorm/ReadVariableOp?>sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_1?>sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_2?@sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOp?;sequential_7/batch_normalization_9/batchnorm/ReadVariableOp?=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1?=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2??sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp?,sequential_7/dense_28/BiasAdd/ReadVariableOp?+sequential_7/dense_28/MatMul/ReadVariableOp?,sequential_7/dense_29/BiasAdd/ReadVariableOp?+sequential_7/dense_29/MatMul/ReadVariableOp?,sequential_7/dense_30/BiasAdd/ReadVariableOp?+sequential_7/dense_30/MatMul/ReadVariableOp?,sequential_7/dense_31/BiasAdd/ReadVariableOp?+sequential_7/dense_31/MatMul/ReadVariableOp?
embedding_7/embedding_lookupResourceGather$embedding_7_embedding_lookup_3670501inputs_1",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_7/embedding_lookup/3670501*+
_output_shapes
:?????????d*
dtype02
embedding_7/embedding_lookup?
%embedding_7/embedding_lookup/IdentityIdentity%embedding_7/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_7/embedding_lookup/3670501*+
_output_shapes
:?????????d2'
%embedding_7/embedding_lookup/Identity?
'embedding_7/embedding_lookup/Identity_1Identity.embedding_7/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2)
'embedding_7/embedding_lookup/Identity_1u
flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"????d   2
flatten_11/Const?
flatten_11/ReshapeReshape0embedding_7/embedding_lookup/Identity_1:output:0flatten_11/Const:output:0*
T0*'
_output_shapes
:?????????d2
flatten_11/Reshape?
multiply_7/mulMulinputs_0flatten_11/Reshape:output:0*
T0*'
_output_shapes
:?????????d2
multiply_7/mul?
+sequential_7/dense_28/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_28_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02-
+sequential_7/dense_28/MatMul/ReadVariableOp?
sequential_7/dense_28/MatMulMatMulmultiply_7/mul:z:03sequential_7/dense_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_28/MatMul?
,sequential_7/dense_28/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_28/BiasAdd/ReadVariableOp?
sequential_7/dense_28/BiasAddBiasAdd&sequential_7/dense_28/MatMul:product:04sequential_7/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_28/BiasAdd?
%sequential_7/leaky_re_lu_21/LeakyRelu	LeakyRelu&sequential_7/dense_28/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_7/leaky_re_lu_21/LeakyRelu?
;sequential_7/batch_normalization_9/batchnorm/ReadVariableOpReadVariableOpDsequential_7_batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_7/batch_normalization_9/batchnorm/ReadVariableOp?
2sequential_7/batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_7/batch_normalization_9/batchnorm/add/y?
0sequential_7/batch_normalization_9/batchnorm/addAddV2Csequential_7/batch_normalization_9/batchnorm/ReadVariableOp:value:0;sequential_7/batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_7/batch_normalization_9/batchnorm/add?
2sequential_7/batch_normalization_9/batchnorm/RsqrtRsqrt4sequential_7/batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_7/batch_normalization_9/batchnorm/Rsqrt?
?sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_7_batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp?
0sequential_7/batch_normalization_9/batchnorm/mulMul6sequential_7/batch_normalization_9/batchnorm/Rsqrt:y:0Gsequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_7/batch_normalization_9/batchnorm/mul?
2sequential_7/batch_normalization_9/batchnorm/mul_1Mul3sequential_7/leaky_re_lu_21/LeakyRelu:activations:04sequential_7/batch_normalization_9/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_7/batch_normalization_9/batchnorm/mul_1?
=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_7_batch_normalization_9_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02?
=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1?
2sequential_7/batch_normalization_9/batchnorm/mul_2MulEsequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1:value:04sequential_7/batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_7/batch_normalization_9/batchnorm/mul_2?
=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_7_batch_normalization_9_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02?
=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2?
0sequential_7/batch_normalization_9/batchnorm/subSubEsequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2:value:06sequential_7/batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_7/batch_normalization_9/batchnorm/sub?
2sequential_7/batch_normalization_9/batchnorm/add_1AddV26sequential_7/batch_normalization_9/batchnorm/mul_1:z:04sequential_7/batch_normalization_9/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_7/batch_normalization_9/batchnorm/add_1?
+sequential_7/dense_29/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_29_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_7/dense_29/MatMul/ReadVariableOp?
sequential_7/dense_29/MatMulMatMul6sequential_7/batch_normalization_9/batchnorm/add_1:z:03sequential_7/dense_29/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_29/MatMul?
,sequential_7/dense_29/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_29/BiasAdd/ReadVariableOp?
sequential_7/dense_29/BiasAddBiasAdd&sequential_7/dense_29/MatMul:product:04sequential_7/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_29/BiasAdd?
%sequential_7/leaky_re_lu_22/LeakyRelu	LeakyRelu&sequential_7/dense_29/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_7/leaky_re_lu_22/LeakyRelu?
<sequential_7/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOpEsequential_7_batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<sequential_7/batch_normalization_10/batchnorm/ReadVariableOp?
3sequential_7/batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:25
3sequential_7/batch_normalization_10/batchnorm/add/y?
1sequential_7/batch_normalization_10/batchnorm/addAddV2Dsequential_7/batch_normalization_10/batchnorm/ReadVariableOp:value:0<sequential_7/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?23
1sequential_7/batch_normalization_10/batchnorm/add?
3sequential_7/batch_normalization_10/batchnorm/RsqrtRsqrt5sequential_7/batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes	
:?25
3sequential_7/batch_normalization_10/batchnorm/Rsqrt?
@sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_7_batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOp?
1sequential_7/batch_normalization_10/batchnorm/mulMul7sequential_7/batch_normalization_10/batchnorm/Rsqrt:y:0Hsequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?23
1sequential_7/batch_normalization_10/batchnorm/mul?
3sequential_7/batch_normalization_10/batchnorm/mul_1Mul3sequential_7/leaky_re_lu_22/LeakyRelu:activations:05sequential_7/batch_normalization_10/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????25
3sequential_7/batch_normalization_10/batchnorm/mul_1?
>sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_7_batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02@
>sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_1?
3sequential_7/batch_normalization_10/batchnorm/mul_2MulFsequential_7/batch_normalization_10/batchnorm/ReadVariableOp_1:value:05sequential_7/batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes	
:?25
3sequential_7/batch_normalization_10/batchnorm/mul_2?
>sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_7_batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02@
>sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_2?
1sequential_7/batch_normalization_10/batchnorm/subSubFsequential_7/batch_normalization_10/batchnorm/ReadVariableOp_2:value:07sequential_7/batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?23
1sequential_7/batch_normalization_10/batchnorm/sub?
3sequential_7/batch_normalization_10/batchnorm/add_1AddV27sequential_7/batch_normalization_10/batchnorm/mul_1:z:05sequential_7/batch_normalization_10/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????25
3sequential_7/batch_normalization_10/batchnorm/add_1?
+sequential_7/dense_30/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_30_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_7/dense_30/MatMul/ReadVariableOp?
sequential_7/dense_30/MatMulMatMul7sequential_7/batch_normalization_10/batchnorm/add_1:z:03sequential_7/dense_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_30/MatMul?
,sequential_7/dense_30/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_30_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_30/BiasAdd/ReadVariableOp?
sequential_7/dense_30/BiasAddBiasAdd&sequential_7/dense_30/MatMul:product:04sequential_7/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_30/BiasAdd?
%sequential_7/leaky_re_lu_23/LeakyRelu	LeakyRelu&sequential_7/dense_30/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_7/leaky_re_lu_23/LeakyRelu?
<sequential_7/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOpEsequential_7_batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<sequential_7/batch_normalization_11/batchnorm/ReadVariableOp?
3sequential_7/batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:25
3sequential_7/batch_normalization_11/batchnorm/add/y?
1sequential_7/batch_normalization_11/batchnorm/addAddV2Dsequential_7/batch_normalization_11/batchnorm/ReadVariableOp:value:0<sequential_7/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?23
1sequential_7/batch_normalization_11/batchnorm/add?
3sequential_7/batch_normalization_11/batchnorm/RsqrtRsqrt5sequential_7/batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes	
:?25
3sequential_7/batch_normalization_11/batchnorm/Rsqrt?
@sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_7_batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOp?
1sequential_7/batch_normalization_11/batchnorm/mulMul7sequential_7/batch_normalization_11/batchnorm/Rsqrt:y:0Hsequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?23
1sequential_7/batch_normalization_11/batchnorm/mul?
3sequential_7/batch_normalization_11/batchnorm/mul_1Mul3sequential_7/leaky_re_lu_23/LeakyRelu:activations:05sequential_7/batch_normalization_11/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????25
3sequential_7/batch_normalization_11/batchnorm/mul_1?
>sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_7_batch_normalization_11_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02@
>sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_1?
3sequential_7/batch_normalization_11/batchnorm/mul_2MulFsequential_7/batch_normalization_11/batchnorm/ReadVariableOp_1:value:05sequential_7/batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes	
:?25
3sequential_7/batch_normalization_11/batchnorm/mul_2?
>sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_7_batch_normalization_11_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02@
>sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_2?
1sequential_7/batch_normalization_11/batchnorm/subSubFsequential_7/batch_normalization_11/batchnorm/ReadVariableOp_2:value:07sequential_7/batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?23
1sequential_7/batch_normalization_11/batchnorm/sub?
3sequential_7/batch_normalization_11/batchnorm/add_1AddV27sequential_7/batch_normalization_11/batchnorm/mul_1:z:05sequential_7/batch_normalization_11/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????25
3sequential_7/batch_normalization_11/batchnorm/add_1?
+sequential_7/dense_31/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_31_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02-
+sequential_7/dense_31/MatMul/ReadVariableOp?
sequential_7/dense_31/MatMulMatMul7sequential_7/batch_normalization_11/batchnorm/add_1:z:03sequential_7/dense_31/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_7/dense_31/MatMul?
,sequential_7/dense_31/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_31_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02.
,sequential_7/dense_31/BiasAdd/ReadVariableOp?
sequential_7/dense_31/BiasAddBiasAdd&sequential_7/dense_31/MatMul:product:04sequential_7/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_7/dense_31/BiasAdd?
sequential_7/dense_31/TanhTanh&sequential_7/dense_31/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
sequential_7/dense_31/Tanh?
sequential_7/reshape_3/ShapeShapesequential_7/dense_31/Tanh:y:0*
T0*
_output_shapes
:2
sequential_7/reshape_3/Shape?
*sequential_7/reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_7/reshape_3/strided_slice/stack?
,sequential_7/reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_7/reshape_3/strided_slice/stack_1?
,sequential_7/reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_7/reshape_3/strided_slice/stack_2?
$sequential_7/reshape_3/strided_sliceStridedSlice%sequential_7/reshape_3/Shape:output:03sequential_7/reshape_3/strided_slice/stack:output:05sequential_7/reshape_3/strided_slice/stack_1:output:05sequential_7/reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_7/reshape_3/strided_slice?
&sequential_7/reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_7/reshape_3/Reshape/shape/1?
&sequential_7/reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_7/reshape_3/Reshape/shape/2?
&sequential_7/reshape_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_7/reshape_3/Reshape/shape/3?
$sequential_7/reshape_3/Reshape/shapePack-sequential_7/reshape_3/strided_slice:output:0/sequential_7/reshape_3/Reshape/shape/1:output:0/sequential_7/reshape_3/Reshape/shape/2:output:0/sequential_7/reshape_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$sequential_7/reshape_3/Reshape/shape?
sequential_7/reshape_3/ReshapeReshapesequential_7/dense_31/Tanh:y:0-sequential_7/reshape_3/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2 
sequential_7/reshape_3/Reshape?

IdentityIdentity'sequential_7/reshape_3/Reshape:output:0^embedding_7/embedding_lookup=^sequential_7/batch_normalization_10/batchnorm/ReadVariableOp?^sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_1?^sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_2A^sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOp=^sequential_7/batch_normalization_11/batchnorm/ReadVariableOp?^sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_1?^sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_2A^sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOp<^sequential_7/batch_normalization_9/batchnorm/ReadVariableOp>^sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1>^sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2@^sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp-^sequential_7/dense_28/BiasAdd/ReadVariableOp,^sequential_7/dense_28/MatMul/ReadVariableOp-^sequential_7/dense_29/BiasAdd/ReadVariableOp,^sequential_7/dense_29/MatMul/ReadVariableOp-^sequential_7/dense_30/BiasAdd/ReadVariableOp,^sequential_7/dense_30/MatMul/ReadVariableOp-^sequential_7/dense_31/BiasAdd/ReadVariableOp,^sequential_7/dense_31/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2<
embedding_7/embedding_lookupembedding_7/embedding_lookup2|
<sequential_7/batch_normalization_10/batchnorm/ReadVariableOp<sequential_7/batch_normalization_10/batchnorm/ReadVariableOp2?
>sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_1>sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_12?
>sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_2>sequential_7/batch_normalization_10/batchnorm/ReadVariableOp_22?
@sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOp@sequential_7/batch_normalization_10/batchnorm/mul/ReadVariableOp2|
<sequential_7/batch_normalization_11/batchnorm/ReadVariableOp<sequential_7/batch_normalization_11/batchnorm/ReadVariableOp2?
>sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_1>sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_12?
>sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_2>sequential_7/batch_normalization_11/batchnorm/ReadVariableOp_22?
@sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOp@sequential_7/batch_normalization_11/batchnorm/mul/ReadVariableOp2z
;sequential_7/batch_normalization_9/batchnorm/ReadVariableOp;sequential_7/batch_normalization_9/batchnorm/ReadVariableOp2~
=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_1=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_12~
=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_2=sequential_7/batch_normalization_9/batchnorm/ReadVariableOp_22?
?sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp?sequential_7/batch_normalization_9/batchnorm/mul/ReadVariableOp2\
,sequential_7/dense_28/BiasAdd/ReadVariableOp,sequential_7/dense_28/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_28/MatMul/ReadVariableOp+sequential_7/dense_28/MatMul/ReadVariableOp2\
,sequential_7/dense_29/BiasAdd/ReadVariableOp,sequential_7/dense_29/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_29/MatMul/ReadVariableOp+sequential_7/dense_29/MatMul/ReadVariableOp2\
,sequential_7/dense_30/BiasAdd/ReadVariableOp,sequential_7/dense_30/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_30/MatMul/ReadVariableOp+sequential_7/dense_30/MatMul/ReadVariableOp2\
,sequential_7/dense_31/BiasAdd/ReadVariableOp,sequential_7/dense_31/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_31/MatMul/ReadVariableOp+sequential_7/dense_31/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
c
G__inference_flatten_11_layer_call_and_return_conditional_losses_3669895

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????d   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????d2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????d:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
L
0__inference_leaky_re_lu_23_layer_call_fn_3671300

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_23_layer_call_and_return_conditional_losses_36695142
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_model_10_layer_call_and_return_conditional_losses_3670101
input_21
input_22
embedding_7_3670054
sequential_7_3670059
sequential_7_3670061
sequential_7_3670063
sequential_7_3670065
sequential_7_3670067
sequential_7_3670069
sequential_7_3670071
sequential_7_3670073
sequential_7_3670075
sequential_7_3670077
sequential_7_3670079
sequential_7_3670081
sequential_7_3670083
sequential_7_3670085
sequential_7_3670087
sequential_7_3670089
sequential_7_3670091
sequential_7_3670093
sequential_7_3670095
sequential_7_3670097
identity??#embedding_7/StatefulPartitionedCall?$sequential_7/StatefulPartitionedCall?
#embedding_7/StatefulPartitionedCallStatefulPartitionedCallinput_22embedding_7_3670054*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_embedding_7_layer_call_and_return_conditional_losses_36698772%
#embedding_7/StatefulPartitionedCall?
flatten_11/PartitionedCallPartitionedCall,embedding_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_11_layer_call_and_return_conditional_losses_36698952
flatten_11/PartitionedCall?
multiply_7/PartitionedCallPartitionedCallinput_21#flatten_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_multiply_7_layer_call_and_return_conditional_losses_36699092
multiply_7/PartitionedCall?
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall#multiply_7/PartitionedCall:output:0sequential_7_3670059sequential_7_3670061sequential_7_3670063sequential_7_3670065sequential_7_3670067sequential_7_3670069sequential_7_3670071sequential_7_3670073sequential_7_3670075sequential_7_3670077sequential_7_3670079sequential_7_3670081sequential_7_3670083sequential_7_3670085sequential_7_3670087sequential_7_3670089sequential_7_3670091sequential_7_3670093sequential_7_3670095sequential_7_3670097* 
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_36698202&
$sequential_7/StatefulPartitionedCall?
IdentityIdentity-sequential_7/StatefulPartitionedCall:output:0$^embedding_7/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2J
#embedding_7/StatefulPartitionedCall#embedding_7/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
input_21:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_22
?
?
.__inference_sequential_7_layer_call_fn_3669763
dense_28_input
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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_28_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*0
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_36697202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_28_input
?	
?
E__inference_dense_30_layer_call_and_return_conditional_losses_3671281

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_10_layer_call_fn_3671271

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_36691802
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_3671336

inputs
assignmovingavg_3671311
assignmovingavg_1_3671317)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3671311*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_3671311*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3671311*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3671311*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3671311AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3671311*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3671317*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_3671317*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3671317*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3671317*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_3671317AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3671317*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
s
G__inference_multiply_7_layer_call_and_return_conditional_losses_3670725
inputs_0
inputs_1
identityW
mulMulinputs_0inputs_1*
T0*'
_output_shapes
:?????????d2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:?????????d:?????????d:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/1
?9
?
I__inference_sequential_7_layer_call_and_return_conditional_losses_3669607
dense_28_input
dense_28_3669356
dense_28_3669358!
batch_normalization_9_3669400!
batch_normalization_9_3669402!
batch_normalization_9_3669404!
batch_normalization_9_3669406
dense_29_3669430
dense_29_3669432"
batch_normalization_10_3669474"
batch_normalization_10_3669476"
batch_normalization_10_3669478"
batch_normalization_10_3669480
dense_30_3669504
dense_30_3669506"
batch_normalization_11_3669548"
batch_normalization_11_3669550"
batch_normalization_11_3669552"
batch_normalization_11_3669554
dense_31_3669579
dense_31_3669581
identity??.batch_normalization_10/StatefulPartitionedCall?.batch_normalization_11/StatefulPartitionedCall?-batch_normalization_9/StatefulPartitionedCall? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCalldense_28_inputdense_28_3669356dense_28_3669358*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_36693452"
 dense_28/StatefulPartitionedCall?
leaky_re_lu_21/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_21_layer_call_and_return_conditional_losses_36693662 
leaky_re_lu_21/PartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_21/PartitionedCall:output:0batch_normalization_9_3669400batch_normalization_9_3669402batch_normalization_9_3669404batch_normalization_9_3669406*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_36690072/
-batch_normalization_9/StatefulPartitionedCall?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_29_3669430dense_29_3669432*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_36694192"
 dense_29/StatefulPartitionedCall?
leaky_re_lu_22/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_22_layer_call_and_return_conditional_losses_36694402 
leaky_re_lu_22/PartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_22/PartitionedCall:output:0batch_normalization_10_3669474batch_normalization_10_3669476batch_normalization_10_3669478batch_normalization_10_3669480*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_366914720
.batch_normalization_10/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0dense_30_3669504dense_30_3669506*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_30_layer_call_and_return_conditional_losses_36694932"
 dense_30/StatefulPartitionedCall?
leaky_re_lu_23/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_23_layer_call_and_return_conditional_losses_36695142 
leaky_re_lu_23/PartitionedCall?
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_23/PartitionedCall:output:0batch_normalization_11_3669548batch_normalization_11_3669550batch_normalization_11_3669552batch_normalization_11_3669554*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_366928720
.batch_normalization_11/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0dense_31_3669579dense_31_3669581*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_31_layer_call_and_return_conditional_losses_36695682"
 dense_31/StatefulPartitionedCall?
reshape_3/PartitionedCallPartitionedCall)dense_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_3_layer_call_and_return_conditional_losses_36695982
reshape_3/PartitionedCall?
IdentityIdentity"reshape_3/PartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_28_input
?
?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_3671356

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_21_layer_call_and_return_conditional_losses_3671073

inputs
identityU
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
G__inference_flatten_11_layer_call_and_return_conditional_losses_3670714

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????d   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????d2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????d:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_3671225

inputs
assignmovingavg_3671200
assignmovingavg_1_3671206)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3671200*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_3671200*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3671200*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3671200*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3671200AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3671200*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3671206*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_3671206*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3671206*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3671206*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_3671206AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3671206*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_9_layer_call_fn_3671147

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_36690072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_3669147

inputs
assignmovingavg_3669122
assignmovingavg_1_3669128)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3669122*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_3669122*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3669122*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3669122*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3669122AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3669122*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3669128*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_3669128*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3669128*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3669128*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_3669128AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3669128*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_22_layer_call_and_return_conditional_losses_3669440

inputs
identityU
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_30_layer_call_and_return_conditional_losses_3669493

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_7_layer_call_fn_3671049

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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_36698202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_3670350
input_21
input_22
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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_21input_22unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_36689112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
input_21:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_22
?
X
,__inference_multiply_7_layer_call_fn_3670731
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_multiply_7_layer_call_and_return_conditional_losses_36699092
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:?????????d:?????????d:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/1
?
?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_3669320

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_23_layer_call_and_return_conditional_losses_3669514

inputs
identityU
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
L
0__inference_leaky_re_lu_21_layer_call_fn_3671078

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_21_layer_call_and_return_conditional_losses_36693662
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_3669287

inputs
assignmovingavg_3669262
assignmovingavg_1_3669268)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3669262*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_3669262*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3669262*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3669262*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3669262AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3669262*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3669268*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_3669268*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3669268*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3669268*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_3669268AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3669268*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_model_10_layer_call_fn_3670644
inputs_0
inputs_1
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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*1
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_10_layer_call_and_return_conditional_losses_36701562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
L
0__inference_leaky_re_lu_22_layer_call_fn_3671189

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_22_layer_call_and_return_conditional_losses_36694402
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?0
?
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_3669007

inputs
assignmovingavg_3668982
assignmovingavg_1_3668988)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3668982*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_3668982*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3668982*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3668982*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3668982AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3668982*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3668988*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_3668988*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3668988*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3668988*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_3668988AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3668988*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
ڊ
?
I__inference_sequential_7_layer_call_and_return_conditional_losses_3670959

inputs+
'dense_28_matmul_readvariableop_resource,
(dense_28_biasadd_readvariableop_resource;
7batch_normalization_9_batchnorm_readvariableop_resource?
;batch_normalization_9_batchnorm_mul_readvariableop_resource=
9batch_normalization_9_batchnorm_readvariableop_1_resource=
9batch_normalization_9_batchnorm_readvariableop_2_resource+
'dense_29_matmul_readvariableop_resource,
(dense_29_biasadd_readvariableop_resource<
8batch_normalization_10_batchnorm_readvariableop_resource@
<batch_normalization_10_batchnorm_mul_readvariableop_resource>
:batch_normalization_10_batchnorm_readvariableop_1_resource>
:batch_normalization_10_batchnorm_readvariableop_2_resource+
'dense_30_matmul_readvariableop_resource,
(dense_30_biasadd_readvariableop_resource<
8batch_normalization_11_batchnorm_readvariableop_resource@
<batch_normalization_11_batchnorm_mul_readvariableop_resource>
:batch_normalization_11_batchnorm_readvariableop_1_resource>
:batch_normalization_11_batchnorm_readvariableop_2_resource+
'dense_31_matmul_readvariableop_resource,
(dense_31_biasadd_readvariableop_resource
identity??/batch_normalization_10/batchnorm/ReadVariableOp?1batch_normalization_10/batchnorm/ReadVariableOp_1?1batch_normalization_10/batchnorm/ReadVariableOp_2?3batch_normalization_10/batchnorm/mul/ReadVariableOp?/batch_normalization_11/batchnorm/ReadVariableOp?1batch_normalization_11/batchnorm/ReadVariableOp_1?1batch_normalization_11/batchnorm/ReadVariableOp_2?3batch_normalization_11/batchnorm/mul/ReadVariableOp?.batch_normalization_9/batchnorm/ReadVariableOp?0batch_normalization_9/batchnorm/ReadVariableOp_1?0batch_normalization_9/batchnorm/ReadVariableOp_2?2batch_normalization_9/batchnorm/mul/ReadVariableOp?dense_28/BiasAdd/ReadVariableOp?dense_28/MatMul/ReadVariableOp?dense_29/BiasAdd/ReadVariableOp?dense_29/MatMul/ReadVariableOp?dense_30/BiasAdd/ReadVariableOp?dense_30/MatMul/ReadVariableOp?dense_31/BiasAdd/ReadVariableOp?dense_31/MatMul/ReadVariableOp?
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_28/MatMul/ReadVariableOp?
dense_28/MatMulMatMulinputs&dense_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_28/MatMul?
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_28/BiasAdd/ReadVariableOp?
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_28/BiasAdd?
leaky_re_lu_21/LeakyRelu	LeakyReludense_28/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_21/LeakyRelu?
.batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_9/batchnorm/ReadVariableOp?
%batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_9/batchnorm/add/y?
#batch_normalization_9/batchnorm/addAddV26batch_normalization_9/batchnorm/ReadVariableOp:value:0.batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_9/batchnorm/add?
%batch_normalization_9/batchnorm/RsqrtRsqrt'batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_9/batchnorm/Rsqrt?
2batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_9/batchnorm/mul/ReadVariableOp?
#batch_normalization_9/batchnorm/mulMul)batch_normalization_9/batchnorm/Rsqrt:y:0:batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_9/batchnorm/mul?
%batch_normalization_9/batchnorm/mul_1Mul&leaky_re_lu_21/LeakyRelu:activations:0'batch_normalization_9/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_9/batchnorm/mul_1?
0batch_normalization_9/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_9_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_9/batchnorm/ReadVariableOp_1?
%batch_normalization_9/batchnorm/mul_2Mul8batch_normalization_9/batchnorm/ReadVariableOp_1:value:0'batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_9/batchnorm/mul_2?
0batch_normalization_9/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_9_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_9/batchnorm/ReadVariableOp_2?
#batch_normalization_9/batchnorm/subSub8batch_normalization_9/batchnorm/ReadVariableOp_2:value:0)batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_9/batchnorm/sub?
%batch_normalization_9/batchnorm/add_1AddV2)batch_normalization_9/batchnorm/mul_1:z:0'batch_normalization_9/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_9/batchnorm/add_1?
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_29/MatMul/ReadVariableOp?
dense_29/MatMulMatMul)batch_normalization_9/batchnorm/add_1:z:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_29/MatMul?
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_29/BiasAdd/ReadVariableOp?
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_29/BiasAdd?
leaky_re_lu_22/LeakyRelu	LeakyReludense_29/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_22/LeakyRelu?
/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_10/batchnorm/ReadVariableOp?
&batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_10/batchnorm/add/y?
$batch_normalization_10/batchnorm/addAddV27batch_normalization_10/batchnorm/ReadVariableOp:value:0/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_10/batchnorm/add?
&batch_normalization_10/batchnorm/RsqrtRsqrt(batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_10/batchnorm/Rsqrt?
3batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_10/batchnorm/mul/ReadVariableOp?
$batch_normalization_10/batchnorm/mulMul*batch_normalization_10/batchnorm/Rsqrt:y:0;batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_10/batchnorm/mul?
&batch_normalization_10/batchnorm/mul_1Mul&leaky_re_lu_22/LeakyRelu:activations:0(batch_normalization_10/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_10/batchnorm/mul_1?
1batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_10/batchnorm/ReadVariableOp_1?
&batch_normalization_10/batchnorm/mul_2Mul9batch_normalization_10/batchnorm/ReadVariableOp_1:value:0(batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_10/batchnorm/mul_2?
1batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_10/batchnorm/ReadVariableOp_2?
$batch_normalization_10/batchnorm/subSub9batch_normalization_10/batchnorm/ReadVariableOp_2:value:0*batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_10/batchnorm/sub?
&batch_normalization_10/batchnorm/add_1AddV2*batch_normalization_10/batchnorm/mul_1:z:0(batch_normalization_10/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_10/batchnorm/add_1?
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_30/MatMul/ReadVariableOp?
dense_30/MatMulMatMul*batch_normalization_10/batchnorm/add_1:z:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_30/MatMul?
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_30/BiasAdd/ReadVariableOp?
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_30/BiasAdd?
leaky_re_lu_23/LeakyRelu	LeakyReludense_30/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_23/LeakyRelu?
/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_11/batchnorm/ReadVariableOp?
&batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_11/batchnorm/add/y?
$batch_normalization_11/batchnorm/addAddV27batch_normalization_11/batchnorm/ReadVariableOp:value:0/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_11/batchnorm/add?
&batch_normalization_11/batchnorm/RsqrtRsqrt(batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_11/batchnorm/Rsqrt?
3batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_11/batchnorm/mul/ReadVariableOp?
$batch_normalization_11/batchnorm/mulMul*batch_normalization_11/batchnorm/Rsqrt:y:0;batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_11/batchnorm/mul?
&batch_normalization_11/batchnorm/mul_1Mul&leaky_re_lu_23/LeakyRelu:activations:0(batch_normalization_11/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_11/batchnorm/mul_1?
1batch_normalization_11/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_11_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_11/batchnorm/ReadVariableOp_1?
&batch_normalization_11/batchnorm/mul_2Mul9batch_normalization_11/batchnorm/ReadVariableOp_1:value:0(batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_11/batchnorm/mul_2?
1batch_normalization_11/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_11_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_11/batchnorm/ReadVariableOp_2?
$batch_normalization_11/batchnorm/subSub9batch_normalization_11/batchnorm/ReadVariableOp_2:value:0*batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_11/batchnorm/sub?
&batch_normalization_11/batchnorm/add_1AddV2*batch_normalization_11/batchnorm/mul_1:z:0(batch_normalization_11/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_11/batchnorm/add_1?
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02 
dense_31/MatMul/ReadVariableOp?
dense_31/MatMulMatMul*batch_normalization_11/batchnorm/add_1:z:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_31/MatMul?
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02!
dense_31/BiasAdd/ReadVariableOp?
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_31/BiasAddu
dense_31/TanhTanhdense_31/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
dense_31/Tanhc
reshape_3/ShapeShapedense_31/Tanh:y:0*
T0*
_output_shapes
:2
reshape_3/Shape?
reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_3/strided_slice/stack?
reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_3/strided_slice/stack_1?
reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_3/strided_slice/stack_2?
reshape_3/strided_sliceStridedSlicereshape_3/Shape:output:0&reshape_3/strided_slice/stack:output:0(reshape_3/strided_slice/stack_1:output:0(reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_3/strided_slicey
reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_3/Reshape/shape/1y
reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_3/Reshape/shape/2x
reshape_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_3/Reshape/shape/3?
reshape_3/Reshape/shapePack reshape_3/strided_slice:output:0"reshape_3/Reshape/shape/1:output:0"reshape_3/Reshape/shape/2:output:0"reshape_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_3/Reshape/shape?
reshape_3/ReshapeReshapedense_31/Tanh:y:0 reshape_3/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2
reshape_3/Reshape?
IdentityIdentityreshape_3/Reshape:output:00^batch_normalization_10/batchnorm/ReadVariableOp2^batch_normalization_10/batchnorm/ReadVariableOp_12^batch_normalization_10/batchnorm/ReadVariableOp_24^batch_normalization_10/batchnorm/mul/ReadVariableOp0^batch_normalization_11/batchnorm/ReadVariableOp2^batch_normalization_11/batchnorm/ReadVariableOp_12^batch_normalization_11/batchnorm/ReadVariableOp_24^batch_normalization_11/batchnorm/mul/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp1^batch_normalization_9/batchnorm/ReadVariableOp_11^batch_normalization_9/batchnorm/ReadVariableOp_23^batch_normalization_9/batchnorm/mul/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2b
/batch_normalization_10/batchnorm/ReadVariableOp/batch_normalization_10/batchnorm/ReadVariableOp2f
1batch_normalization_10/batchnorm/ReadVariableOp_11batch_normalization_10/batchnorm/ReadVariableOp_12f
1batch_normalization_10/batchnorm/ReadVariableOp_21batch_normalization_10/batchnorm/ReadVariableOp_22j
3batch_normalization_10/batchnorm/mul/ReadVariableOp3batch_normalization_10/batchnorm/mul/ReadVariableOp2b
/batch_normalization_11/batchnorm/ReadVariableOp/batch_normalization_11/batchnorm/ReadVariableOp2f
1batch_normalization_11/batchnorm/ReadVariableOp_11batch_normalization_11/batchnorm/ReadVariableOp_12f
1batch_normalization_11/batchnorm/ReadVariableOp_21batch_normalization_11/batchnorm/ReadVariableOp_22j
3batch_normalization_11/batchnorm/mul/ReadVariableOp3batch_normalization_11/batchnorm/mul/ReadVariableOp2`
.batch_normalization_9/batchnorm/ReadVariableOp.batch_normalization_9/batchnorm/ReadVariableOp2d
0batch_normalization_9/batchnorm/ReadVariableOp_10batch_normalization_9/batchnorm/ReadVariableOp_12d
0batch_normalization_9/batchnorm/ReadVariableOp_20batch_normalization_9/batchnorm/ReadVariableOp_22h
2batch_normalization_9/batchnorm/mul/ReadVariableOp2batch_normalization_9/batchnorm/mul/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
E__inference_dense_28_layer_call_and_return_conditional_losses_3671059

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_3671134

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_dense_30_layer_call_fn_3671290

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
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_30_layer_call_and_return_conditional_losses_36694932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_reshape_3_layer_call_and_return_conditional_losses_3671416

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/1e
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapey
ReshapeReshapeinputsReshape/shape:output:0*
T0*1
_output_shapes
:???????????2	
Reshapen
IdentityIdentityReshape:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_10_layer_call_fn_3671258

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_36691472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_31_layer_call_and_return_conditional_losses_3671393

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes

:??*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2	
BiasAddZ
TanhTanhBiasAdd:output:0*
T0*)
_output_shapes
:???????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_model_10_layer_call_and_return_conditional_losses_3670255

inputs
inputs_1
embedding_7_3670208
sequential_7_3670213
sequential_7_3670215
sequential_7_3670217
sequential_7_3670219
sequential_7_3670221
sequential_7_3670223
sequential_7_3670225
sequential_7_3670227
sequential_7_3670229
sequential_7_3670231
sequential_7_3670233
sequential_7_3670235
sequential_7_3670237
sequential_7_3670239
sequential_7_3670241
sequential_7_3670243
sequential_7_3670245
sequential_7_3670247
sequential_7_3670249
sequential_7_3670251
identity??#embedding_7/StatefulPartitionedCall?$sequential_7/StatefulPartitionedCall?
#embedding_7/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_7_3670208*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_embedding_7_layer_call_and_return_conditional_losses_36698772%
#embedding_7/StatefulPartitionedCall?
flatten_11/PartitionedCallPartitionedCall,embedding_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_11_layer_call_and_return_conditional_losses_36698952
flatten_11/PartitionedCall?
multiply_7/PartitionedCallPartitionedCallinputs#flatten_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_multiply_7_layer_call_and_return_conditional_losses_36699092
multiply_7/PartitionedCall?
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall#multiply_7/PartitionedCall:output:0sequential_7_3670213sequential_7_3670215sequential_7_3670217sequential_7_3670219sequential_7_3670221sequential_7_3670223sequential_7_3670225sequential_7_3670227sequential_7_3670229sequential_7_3670231sequential_7_3670233sequential_7_3670235sequential_7_3670237sequential_7_3670239sequential_7_3670241sequential_7_3670243sequential_7_3670245sequential_7_3670247sequential_7_3670249sequential_7_3670251* 
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_36698202&
$sequential_7/StatefulPartitionedCall?
IdentityIdentity-sequential_7/StatefulPartitionedCall:output:0$^embedding_7/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2J
#embedding_7/StatefulPartitionedCall#embedding_7/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_21_layer_call_and_return_conditional_losses_3669366

inputs
identityU
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_3669180

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_22_layer_call_and_return_conditional_losses_3671184

inputs
identityU
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
H
,__inference_flatten_11_layer_call_fn_3670719

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_11_layer_call_and_return_conditional_losses_36698952
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????d:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?9
?
I__inference_sequential_7_layer_call_and_return_conditional_losses_3669720

inputs
dense_28_3669668
dense_28_3669670!
batch_normalization_9_3669674!
batch_normalization_9_3669676!
batch_normalization_9_3669678!
batch_normalization_9_3669680
dense_29_3669683
dense_29_3669685"
batch_normalization_10_3669689"
batch_normalization_10_3669691"
batch_normalization_10_3669693"
batch_normalization_10_3669695
dense_30_3669698
dense_30_3669700"
batch_normalization_11_3669704"
batch_normalization_11_3669706"
batch_normalization_11_3669708"
batch_normalization_11_3669710
dense_31_3669713
dense_31_3669715
identity??.batch_normalization_10/StatefulPartitionedCall?.batch_normalization_11/StatefulPartitionedCall?-batch_normalization_9/StatefulPartitionedCall? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCallinputsdense_28_3669668dense_28_3669670*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_36693452"
 dense_28/StatefulPartitionedCall?
leaky_re_lu_21/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_21_layer_call_and_return_conditional_losses_36693662 
leaky_re_lu_21/PartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_21/PartitionedCall:output:0batch_normalization_9_3669674batch_normalization_9_3669676batch_normalization_9_3669678batch_normalization_9_3669680*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_36690072/
-batch_normalization_9/StatefulPartitionedCall?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_29_3669683dense_29_3669685*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_36694192"
 dense_29/StatefulPartitionedCall?
leaky_re_lu_22/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_22_layer_call_and_return_conditional_losses_36694402 
leaky_re_lu_22/PartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_22/PartitionedCall:output:0batch_normalization_10_3669689batch_normalization_10_3669691batch_normalization_10_3669693batch_normalization_10_3669695*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_366914720
.batch_normalization_10/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0dense_30_3669698dense_30_3669700*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_30_layer_call_and_return_conditional_losses_36694932"
 dense_30/StatefulPartitionedCall?
leaky_re_lu_23/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_23_layer_call_and_return_conditional_losses_36695142 
leaky_re_lu_23/PartitionedCall?
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_23/PartitionedCall:output:0batch_normalization_11_3669704batch_normalization_11_3669706batch_normalization_11_3669708batch_normalization_11_3669710*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_366928720
.batch_normalization_11/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0dense_31_3669713dense_31_3669715*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_31_layer_call_and_return_conditional_losses_36695682"
 dense_31/StatefulPartitionedCall?
reshape_3/PartitionedCallPartitionedCall)dense_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_3_layer_call_and_return_conditional_losses_36695982
reshape_3/PartitionedCall?
IdentityIdentity"reshape_3/PartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
E__inference_dense_31_layer_call_and_return_conditional_losses_3669568

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes

:??*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2	
BiasAddZ
TanhTanhBiasAdd:output:0*
T0*)
_output_shapes
:???????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
Ճ
?
I__inference_sequential_7_layer_call_and_return_conditional_losses_3670869

inputs+
'dense_28_matmul_readvariableop_resource,
(dense_28_biasadd_readvariableop_resource1
-batch_normalization_9_assignmovingavg_36707493
/batch_normalization_9_assignmovingavg_1_3670755?
;batch_normalization_9_batchnorm_mul_readvariableop_resource;
7batch_normalization_9_batchnorm_readvariableop_resource+
'dense_29_matmul_readvariableop_resource,
(dense_29_biasadd_readvariableop_resource2
.batch_normalization_10_assignmovingavg_36707884
0batch_normalization_10_assignmovingavg_1_3670794@
<batch_normalization_10_batchnorm_mul_readvariableop_resource<
8batch_normalization_10_batchnorm_readvariableop_resource+
'dense_30_matmul_readvariableop_resource,
(dense_30_biasadd_readvariableop_resource2
.batch_normalization_11_assignmovingavg_36708274
0batch_normalization_11_assignmovingavg_1_3670833@
<batch_normalization_11_batchnorm_mul_readvariableop_resource<
8batch_normalization_11_batchnorm_readvariableop_resource+
'dense_31_matmul_readvariableop_resource,
(dense_31_biasadd_readvariableop_resource
identity??:batch_normalization_10/AssignMovingAvg/AssignSubVariableOp?5batch_normalization_10/AssignMovingAvg/ReadVariableOp?<batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOp?7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_10/batchnorm/ReadVariableOp?3batch_normalization_10/batchnorm/mul/ReadVariableOp?:batch_normalization_11/AssignMovingAvg/AssignSubVariableOp?5batch_normalization_11/AssignMovingAvg/ReadVariableOp?<batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOp?7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_11/batchnorm/ReadVariableOp?3batch_normalization_11/batchnorm/mul/ReadVariableOp?9batch_normalization_9/AssignMovingAvg/AssignSubVariableOp?4batch_normalization_9/AssignMovingAvg/ReadVariableOp?;batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOp?6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_9/batchnorm/ReadVariableOp?2batch_normalization_9/batchnorm/mul/ReadVariableOp?dense_28/BiasAdd/ReadVariableOp?dense_28/MatMul/ReadVariableOp?dense_29/BiasAdd/ReadVariableOp?dense_29/MatMul/ReadVariableOp?dense_30/BiasAdd/ReadVariableOp?dense_30/MatMul/ReadVariableOp?dense_31/BiasAdd/ReadVariableOp?dense_31/MatMul/ReadVariableOp?
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_28/MatMul/ReadVariableOp?
dense_28/MatMulMatMulinputs&dense_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_28/MatMul?
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_28/BiasAdd/ReadVariableOp?
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_28/BiasAdd?
leaky_re_lu_21/LeakyRelu	LeakyReludense_28/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_21/LeakyRelu?
4batch_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_9/moments/mean/reduction_indices?
"batch_normalization_9/moments/meanMean&leaky_re_lu_21/LeakyRelu:activations:0=batch_normalization_9/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_9/moments/mean?
*batch_normalization_9/moments/StopGradientStopGradient+batch_normalization_9/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_9/moments/StopGradient?
/batch_normalization_9/moments/SquaredDifferenceSquaredDifference&leaky_re_lu_21/LeakyRelu:activations:03batch_normalization_9/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_9/moments/SquaredDifference?
8batch_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_9/moments/variance/reduction_indices?
&batch_normalization_9/moments/varianceMean3batch_normalization_9/moments/SquaredDifference:z:0Abatch_normalization_9/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_9/moments/variance?
%batch_normalization_9/moments/SqueezeSqueeze+batch_normalization_9/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_9/moments/Squeeze?
'batch_normalization_9/moments/Squeeze_1Squeeze/batch_normalization_9/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_9/moments/Squeeze_1?
+batch_normalization_9/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_9/AssignMovingAvg/3670749*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+batch_normalization_9/AssignMovingAvg/decay?
4batch_normalization_9/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_9_assignmovingavg_3670749*
_output_shapes	
:?*
dtype026
4batch_normalization_9/AssignMovingAvg/ReadVariableOp?
)batch_normalization_9/AssignMovingAvg/subSub<batch_normalization_9/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_9/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_9/AssignMovingAvg/3670749*
_output_shapes	
:?2+
)batch_normalization_9/AssignMovingAvg/sub?
)batch_normalization_9/AssignMovingAvg/mulMul-batch_normalization_9/AssignMovingAvg/sub:z:04batch_normalization_9/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_9/AssignMovingAvg/3670749*
_output_shapes	
:?2+
)batch_normalization_9/AssignMovingAvg/mul?
9batch_normalization_9/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_9_assignmovingavg_3670749-batch_normalization_9/AssignMovingAvg/mul:z:05^batch_normalization_9/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_9/AssignMovingAvg/3670749*
_output_shapes
 *
dtype02;
9batch_normalization_9/AssignMovingAvg/AssignSubVariableOp?
-batch_normalization_9/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_9/AssignMovingAvg_1/3670755*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-batch_normalization_9/AssignMovingAvg_1/decay?
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_9_assignmovingavg_1_3670755*
_output_shapes	
:?*
dtype028
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_9/AssignMovingAvg_1/subSub>batch_normalization_9/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_9/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_9/AssignMovingAvg_1/3670755*
_output_shapes	
:?2-
+batch_normalization_9/AssignMovingAvg_1/sub?
+batch_normalization_9/AssignMovingAvg_1/mulMul/batch_normalization_9/AssignMovingAvg_1/sub:z:06batch_normalization_9/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_9/AssignMovingAvg_1/3670755*
_output_shapes	
:?2-
+batch_normalization_9/AssignMovingAvg_1/mul?
;batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_9_assignmovingavg_1_3670755/batch_normalization_9/AssignMovingAvg_1/mul:z:07^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_9/AssignMovingAvg_1/3670755*
_output_shapes
 *
dtype02=
;batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOp?
%batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_9/batchnorm/add/y?
#batch_normalization_9/batchnorm/addAddV20batch_normalization_9/moments/Squeeze_1:output:0.batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_9/batchnorm/add?
%batch_normalization_9/batchnorm/RsqrtRsqrt'batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_9/batchnorm/Rsqrt?
2batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_9/batchnorm/mul/ReadVariableOp?
#batch_normalization_9/batchnorm/mulMul)batch_normalization_9/batchnorm/Rsqrt:y:0:batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_9/batchnorm/mul?
%batch_normalization_9/batchnorm/mul_1Mul&leaky_re_lu_21/LeakyRelu:activations:0'batch_normalization_9/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_9/batchnorm/mul_1?
%batch_normalization_9/batchnorm/mul_2Mul.batch_normalization_9/moments/Squeeze:output:0'batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_9/batchnorm/mul_2?
.batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_9/batchnorm/ReadVariableOp?
#batch_normalization_9/batchnorm/subSub6batch_normalization_9/batchnorm/ReadVariableOp:value:0)batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_9/batchnorm/sub?
%batch_normalization_9/batchnorm/add_1AddV2)batch_normalization_9/batchnorm/mul_1:z:0'batch_normalization_9/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_9/batchnorm/add_1?
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_29/MatMul/ReadVariableOp?
dense_29/MatMulMatMul)batch_normalization_9/batchnorm/add_1:z:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_29/MatMul?
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_29/BiasAdd/ReadVariableOp?
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_29/BiasAdd?
leaky_re_lu_22/LeakyRelu	LeakyReludense_29/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_22/LeakyRelu?
5batch_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_10/moments/mean/reduction_indices?
#batch_normalization_10/moments/meanMean&leaky_re_lu_22/LeakyRelu:activations:0>batch_normalization_10/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_10/moments/mean?
+batch_normalization_10/moments/StopGradientStopGradient,batch_normalization_10/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_10/moments/StopGradient?
0batch_normalization_10/moments/SquaredDifferenceSquaredDifference&leaky_re_lu_22/LeakyRelu:activations:04batch_normalization_10/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_10/moments/SquaredDifference?
9batch_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_10/moments/variance/reduction_indices?
'batch_normalization_10/moments/varianceMean4batch_normalization_10/moments/SquaredDifference:z:0Bbatch_normalization_10/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_10/moments/variance?
&batch_normalization_10/moments/SqueezeSqueeze,batch_normalization_10/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_10/moments/Squeeze?
(batch_normalization_10/moments/Squeeze_1Squeeze0batch_normalization_10/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_10/moments/Squeeze_1?
,batch_normalization_10/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization_10/AssignMovingAvg/3670788*
_output_shapes
: *
dtype0*
valueB
 *??L>2.
,batch_normalization_10/AssignMovingAvg/decay?
5batch_normalization_10/AssignMovingAvg/ReadVariableOpReadVariableOp.batch_normalization_10_assignmovingavg_3670788*
_output_shapes	
:?*
dtype027
5batch_normalization_10/AssignMovingAvg/ReadVariableOp?
*batch_normalization_10/AssignMovingAvg/subSub=batch_normalization_10/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_10/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization_10/AssignMovingAvg/3670788*
_output_shapes	
:?2,
*batch_normalization_10/AssignMovingAvg/sub?
*batch_normalization_10/AssignMovingAvg/mulMul.batch_normalization_10/AssignMovingAvg/sub:z:05batch_normalization_10/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization_10/AssignMovingAvg/3670788*
_output_shapes	
:?2,
*batch_normalization_10/AssignMovingAvg/mul?
:batch_normalization_10/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.batch_normalization_10_assignmovingavg_3670788.batch_normalization_10/AssignMovingAvg/mul:z:06^batch_normalization_10/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization_10/AssignMovingAvg/3670788*
_output_shapes
 *
dtype02<
:batch_normalization_10/AssignMovingAvg/AssignSubVariableOp?
.batch_normalization_10/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@batch_normalization_10/AssignMovingAvg_1/3670794*
_output_shapes
: *
dtype0*
valueB
 *??L>20
.batch_normalization_10/AssignMovingAvg_1/decay?
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch_normalization_10_assignmovingavg_1_3670794*
_output_shapes	
:?*
dtype029
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_10/AssignMovingAvg_1/subSub?batch_normalization_10/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_10/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@batch_normalization_10/AssignMovingAvg_1/3670794*
_output_shapes	
:?2.
,batch_normalization_10/AssignMovingAvg_1/sub?
,batch_normalization_10/AssignMovingAvg_1/mulMul0batch_normalization_10/AssignMovingAvg_1/sub:z:07batch_normalization_10/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@batch_normalization_10/AssignMovingAvg_1/3670794*
_output_shapes	
:?2.
,batch_normalization_10/AssignMovingAvg_1/mul?
<batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0batch_normalization_10_assignmovingavg_1_36707940batch_normalization_10/AssignMovingAvg_1/mul:z:08^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@batch_normalization_10/AssignMovingAvg_1/3670794*
_output_shapes
 *
dtype02>
<batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOp?
&batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_10/batchnorm/add/y?
$batch_normalization_10/batchnorm/addAddV21batch_normalization_10/moments/Squeeze_1:output:0/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_10/batchnorm/add?
&batch_normalization_10/batchnorm/RsqrtRsqrt(batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_10/batchnorm/Rsqrt?
3batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_10/batchnorm/mul/ReadVariableOp?
$batch_normalization_10/batchnorm/mulMul*batch_normalization_10/batchnorm/Rsqrt:y:0;batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_10/batchnorm/mul?
&batch_normalization_10/batchnorm/mul_1Mul&leaky_re_lu_22/LeakyRelu:activations:0(batch_normalization_10/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_10/batchnorm/mul_1?
&batch_normalization_10/batchnorm/mul_2Mul/batch_normalization_10/moments/Squeeze:output:0(batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_10/batchnorm/mul_2?
/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_10/batchnorm/ReadVariableOp?
$batch_normalization_10/batchnorm/subSub7batch_normalization_10/batchnorm/ReadVariableOp:value:0*batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_10/batchnorm/sub?
&batch_normalization_10/batchnorm/add_1AddV2*batch_normalization_10/batchnorm/mul_1:z:0(batch_normalization_10/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_10/batchnorm/add_1?
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_30/MatMul/ReadVariableOp?
dense_30/MatMulMatMul*batch_normalization_10/batchnorm/add_1:z:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_30/MatMul?
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_30/BiasAdd/ReadVariableOp?
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_30/BiasAdd?
leaky_re_lu_23/LeakyRelu	LeakyReludense_30/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_23/LeakyRelu?
5batch_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_11/moments/mean/reduction_indices?
#batch_normalization_11/moments/meanMean&leaky_re_lu_23/LeakyRelu:activations:0>batch_normalization_11/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_11/moments/mean?
+batch_normalization_11/moments/StopGradientStopGradient,batch_normalization_11/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_11/moments/StopGradient?
0batch_normalization_11/moments/SquaredDifferenceSquaredDifference&leaky_re_lu_23/LeakyRelu:activations:04batch_normalization_11/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_11/moments/SquaredDifference?
9batch_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_11/moments/variance/reduction_indices?
'batch_normalization_11/moments/varianceMean4batch_normalization_11/moments/SquaredDifference:z:0Bbatch_normalization_11/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_11/moments/variance?
&batch_normalization_11/moments/SqueezeSqueeze,batch_normalization_11/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_11/moments/Squeeze?
(batch_normalization_11/moments/Squeeze_1Squeeze0batch_normalization_11/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_11/moments/Squeeze_1?
,batch_normalization_11/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization_11/AssignMovingAvg/3670827*
_output_shapes
: *
dtype0*
valueB
 *??L>2.
,batch_normalization_11/AssignMovingAvg/decay?
5batch_normalization_11/AssignMovingAvg/ReadVariableOpReadVariableOp.batch_normalization_11_assignmovingavg_3670827*
_output_shapes	
:?*
dtype027
5batch_normalization_11/AssignMovingAvg/ReadVariableOp?
*batch_normalization_11/AssignMovingAvg/subSub=batch_normalization_11/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_11/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization_11/AssignMovingAvg/3670827*
_output_shapes	
:?2,
*batch_normalization_11/AssignMovingAvg/sub?
*batch_normalization_11/AssignMovingAvg/mulMul.batch_normalization_11/AssignMovingAvg/sub:z:05batch_normalization_11/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization_11/AssignMovingAvg/3670827*
_output_shapes	
:?2,
*batch_normalization_11/AssignMovingAvg/mul?
:batch_normalization_11/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.batch_normalization_11_assignmovingavg_3670827.batch_normalization_11/AssignMovingAvg/mul:z:06^batch_normalization_11/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization_11/AssignMovingAvg/3670827*
_output_shapes
 *
dtype02<
:batch_normalization_11/AssignMovingAvg/AssignSubVariableOp?
.batch_normalization_11/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@batch_normalization_11/AssignMovingAvg_1/3670833*
_output_shapes
: *
dtype0*
valueB
 *??L>20
.batch_normalization_11/AssignMovingAvg_1/decay?
7batch_normalization_11/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch_normalization_11_assignmovingavg_1_3670833*
_output_shapes	
:?*
dtype029
7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_11/AssignMovingAvg_1/subSub?batch_normalization_11/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_11/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@batch_normalization_11/AssignMovingAvg_1/3670833*
_output_shapes	
:?2.
,batch_normalization_11/AssignMovingAvg_1/sub?
,batch_normalization_11/AssignMovingAvg_1/mulMul0batch_normalization_11/AssignMovingAvg_1/sub:z:07batch_normalization_11/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@batch_normalization_11/AssignMovingAvg_1/3670833*
_output_shapes	
:?2.
,batch_normalization_11/AssignMovingAvg_1/mul?
<batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0batch_normalization_11_assignmovingavg_1_36708330batch_normalization_11/AssignMovingAvg_1/mul:z:08^batch_normalization_11/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@batch_normalization_11/AssignMovingAvg_1/3670833*
_output_shapes
 *
dtype02>
<batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOp?
&batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_11/batchnorm/add/y?
$batch_normalization_11/batchnorm/addAddV21batch_normalization_11/moments/Squeeze_1:output:0/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_11/batchnorm/add?
&batch_normalization_11/batchnorm/RsqrtRsqrt(batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_11/batchnorm/Rsqrt?
3batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_11/batchnorm/mul/ReadVariableOp?
$batch_normalization_11/batchnorm/mulMul*batch_normalization_11/batchnorm/Rsqrt:y:0;batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_11/batchnorm/mul?
&batch_normalization_11/batchnorm/mul_1Mul&leaky_re_lu_23/LeakyRelu:activations:0(batch_normalization_11/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_11/batchnorm/mul_1?
&batch_normalization_11/batchnorm/mul_2Mul/batch_normalization_11/moments/Squeeze:output:0(batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_11/batchnorm/mul_2?
/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_11/batchnorm/ReadVariableOp?
$batch_normalization_11/batchnorm/subSub7batch_normalization_11/batchnorm/ReadVariableOp:value:0*batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_11/batchnorm/sub?
&batch_normalization_11/batchnorm/add_1AddV2*batch_normalization_11/batchnorm/mul_1:z:0(batch_normalization_11/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_11/batchnorm/add_1?
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02 
dense_31/MatMul/ReadVariableOp?
dense_31/MatMulMatMul*batch_normalization_11/batchnorm/add_1:z:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_31/MatMul?
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02!
dense_31/BiasAdd/ReadVariableOp?
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_31/BiasAddu
dense_31/TanhTanhdense_31/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
dense_31/Tanhc
reshape_3/ShapeShapedense_31/Tanh:y:0*
T0*
_output_shapes
:2
reshape_3/Shape?
reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_3/strided_slice/stack?
reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_3/strided_slice/stack_1?
reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_3/strided_slice/stack_2?
reshape_3/strided_sliceStridedSlicereshape_3/Shape:output:0&reshape_3/strided_slice/stack:output:0(reshape_3/strided_slice/stack_1:output:0(reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_3/strided_slicey
reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_3/Reshape/shape/1y
reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_3/Reshape/shape/2x
reshape_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_3/Reshape/shape/3?
reshape_3/Reshape/shapePack reshape_3/strided_slice:output:0"reshape_3/Reshape/shape/1:output:0"reshape_3/Reshape/shape/2:output:0"reshape_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_3/Reshape/shape?
reshape_3/ReshapeReshapedense_31/Tanh:y:0 reshape_3/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2
reshape_3/Reshape?
IdentityIdentityreshape_3/Reshape:output:0;^batch_normalization_10/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_10/AssignMovingAvg/ReadVariableOp=^batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp4^batch_normalization_10/batchnorm/mul/ReadVariableOp;^batch_normalization_11/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_11/AssignMovingAvg/ReadVariableOp=^batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_11/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_11/batchnorm/ReadVariableOp4^batch_normalization_11/batchnorm/mul/ReadVariableOp:^batch_normalization_9/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_9/AssignMovingAvg/ReadVariableOp<^batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp3^batch_normalization_9/batchnorm/mul/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2x
:batch_normalization_10/AssignMovingAvg/AssignSubVariableOp:batch_normalization_10/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_10/AssignMovingAvg/ReadVariableOp5batch_normalization_10/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_10/batchnorm/ReadVariableOp/batch_normalization_10/batchnorm/ReadVariableOp2j
3batch_normalization_10/batchnorm/mul/ReadVariableOp3batch_normalization_10/batchnorm/mul/ReadVariableOp2x
:batch_normalization_11/AssignMovingAvg/AssignSubVariableOp:batch_normalization_11/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_11/AssignMovingAvg/ReadVariableOp5batch_normalization_11/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_11/batchnorm/ReadVariableOp/batch_normalization_11/batchnorm/ReadVariableOp2j
3batch_normalization_11/batchnorm/mul/ReadVariableOp3batch_normalization_11/batchnorm/mul/ReadVariableOp2v
9batch_normalization_9/AssignMovingAvg/AssignSubVariableOp9batch_normalization_9/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_9/AssignMovingAvg/ReadVariableOp4batch_normalization_9/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_9/batchnorm/ReadVariableOp.batch_normalization_9/batchnorm/ReadVariableOp2h
2batch_normalization_9/batchnorm/mul/ReadVariableOp2batch_normalization_9/batchnorm/mul/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?9
?
I__inference_sequential_7_layer_call_and_return_conditional_losses_3669662
dense_28_input
dense_28_3669610
dense_28_3669612!
batch_normalization_9_3669616!
batch_normalization_9_3669618!
batch_normalization_9_3669620!
batch_normalization_9_3669622
dense_29_3669625
dense_29_3669627"
batch_normalization_10_3669631"
batch_normalization_10_3669633"
batch_normalization_10_3669635"
batch_normalization_10_3669637
dense_30_3669640
dense_30_3669642"
batch_normalization_11_3669646"
batch_normalization_11_3669648"
batch_normalization_11_3669650"
batch_normalization_11_3669652
dense_31_3669655
dense_31_3669657
identity??.batch_normalization_10/StatefulPartitionedCall?.batch_normalization_11/StatefulPartitionedCall?-batch_normalization_9/StatefulPartitionedCall? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCalldense_28_inputdense_28_3669610dense_28_3669612*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_36693452"
 dense_28/StatefulPartitionedCall?
leaky_re_lu_21/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_21_layer_call_and_return_conditional_losses_36693662 
leaky_re_lu_21/PartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_21/PartitionedCall:output:0batch_normalization_9_3669616batch_normalization_9_3669618batch_normalization_9_3669620batch_normalization_9_3669622*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_36690402/
-batch_normalization_9/StatefulPartitionedCall?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_29_3669625dense_29_3669627*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_36694192"
 dense_29/StatefulPartitionedCall?
leaky_re_lu_22/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_22_layer_call_and_return_conditional_losses_36694402 
leaky_re_lu_22/PartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_22/PartitionedCall:output:0batch_normalization_10_3669631batch_normalization_10_3669633batch_normalization_10_3669635batch_normalization_10_3669637*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_366918020
.batch_normalization_10/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0dense_30_3669640dense_30_3669642*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_30_layer_call_and_return_conditional_losses_36694932"
 dense_30/StatefulPartitionedCall?
leaky_re_lu_23/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_23_layer_call_and_return_conditional_losses_36695142 
leaky_re_lu_23/PartitionedCall?
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_23/PartitionedCall:output:0batch_normalization_11_3669646batch_normalization_11_3669648batch_normalization_11_3669650batch_normalization_11_3669652*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_366932020
.batch_normalization_11/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0dense_31_3669655dense_31_3669657*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_31_layer_call_and_return_conditional_losses_36695682"
 dense_31/StatefulPartitionedCall?
reshape_3/PartitionedCallPartitionedCall)dense_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_3_layer_call_and_return_conditional_losses_36695982
reshape_3/PartitionedCall?
IdentityIdentity"reshape_3/PartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_28_input
?
?
.__inference_sequential_7_layer_call_fn_3669863
dense_28_input
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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_28_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_36698202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_28_input
?
?
*__inference_model_10_layer_call_fn_3670201
input_21
input_22
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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_21input_22unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*1
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_10_layer_call_and_return_conditional_losses_36701562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
input_21:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_22
?
q
G__inference_multiply_7_layer_call_and_return_conditional_losses_3669909

inputs
inputs_1
identityU
mulMulinputsinputs_1*
T0*'
_output_shapes
:?????????d2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:?????????d:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?0
?
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_3671114

inputs
assignmovingavg_3671089
assignmovingavg_1_3671095)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3671089*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_3671089*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3671089*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3671089*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3671089AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3671089*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3671095*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_3671095*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3671095*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3671095*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_3671095AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3671095*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
input_211
serving_default_input_21:0?????????d
=
input_221
serving_default_input_22:0?????????J
sequential_7:
StatefulPartitionedCall:0???????????tensorflow/serving/predict:??
?e
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
trainable_variables
	variables
	regularization_losses

	keras_api

signatures
+?&call_and_return_all_conditional_losses
?__call__
?_default_save_signature"?b
_tf_keras_network?b{"class_name": "Functional", "name": "model_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_22"}, "name": "input_22", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding_7", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 26, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_7", "inbound_nodes": [[["input_22", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_21"}, "name": "input_21", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten_11", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_11", "inbound_nodes": [[["embedding_7", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "multiply_7", "trainable": true, "dtype": "float32"}, "name": "multiply_7", "inbound_nodes": [[["input_21", 0, 0, {}], ["flatten_11", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_28_input"}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_21", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_22", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_23", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_11", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_3", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}]}, "name": "sequential_7", "inbound_nodes": [[["multiply_7", 0, 0, {}]]]}], "input_layers": [["input_21", 0, 0], ["input_22", 0, 0]], "output_layers": [["sequential_7", 1, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 100]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 100]}, {"class_name": "TensorShape", "items": [null, 1]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_22"}, "name": "input_22", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding_7", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 26, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_7", "inbound_nodes": [[["input_22", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_21"}, "name": "input_21", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten_11", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_11", "inbound_nodes": [[["embedding_7", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "multiply_7", "trainable": true, "dtype": "float32"}, "name": "multiply_7", "inbound_nodes": [[["input_21", 0, 0, {}], ["flatten_11", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_28_input"}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_21", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_22", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_23", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_11", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_3", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}]}, "name": "sequential_7", "inbound_nodes": [[["multiply_7", 0, 0, {}]]]}], "input_layers": [["input_21", 0, 0], ["input_22", 0, 0]], "output_layers": [["sequential_7", 1, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_22", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_22"}}
?

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_7", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 26, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_21", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_21"}}
?
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_11", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Multiply", "name": "multiply_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "multiply_7", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 100]}, {"class_name": "TensorShape", "items": [null, 100]}]}
?J
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
 layer-7
!layer_with_weights-5
!layer-8
"layer_with_weights-6
"layer-9
#layer-10
$trainable_variables
%	variables
&regularization_losses
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?G
_tf_keras_sequential?G{"class_name": "Sequential", "name": "sequential_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_28_input"}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_21", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_22", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_23", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_11", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_3", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_28_input"}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_21", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_22", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_23", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_11", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_3", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}]}}}
?
0
(1
)2
*3
+4
,5
-6
.7
/8
09
110
211
312
413
514"
trackable_list_wrapper
?
0
(1
)2
*3
+4
65
76
,7
-8
.9
/10
811
912
013
114
215
316
:17
;18
419
520"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
<metrics
=layer_metrics
>layer_regularization_losses
?non_trainable_variables
	variables
	regularization_losses

@layers
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
(:&d2embedding_7/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ametrics
trainable_variables
Blayer_metrics
Clayer_regularization_losses
Dnon_trainable_variables
	variables
regularization_losses

Elayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Fmetrics
trainable_variables
Glayer_metrics
Hlayer_regularization_losses
Inon_trainable_variables
	variables
regularization_losses

Jlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Kmetrics
trainable_variables
Llayer_metrics
Mlayer_regularization_losses
Nnon_trainable_variables
	variables
regularization_losses

Olayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

(kernel
)bias
Ptrainable_variables
Q	variables
Rregularization_losses
S	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_28", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?
Ttrainable_variables
U	variables
Vregularization_losses
W	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_21", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}
?	
Xaxis
	*gamma
+beta
6moving_mean
7moving_variance
Ytrainable_variables
Z	variables
[regularization_losses
\	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

,kernel
-bias
]trainable_variables
^	variables
_regularization_losses
`	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
atrainable_variables
b	variables
cregularization_losses
d	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_22", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}
?	
eaxis
	.gamma
/beta
8moving_mean
9moving_variance
ftrainable_variables
g	variables
hregularization_losses
i	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?

0kernel
1bias
jtrainable_variables
k	variables
lregularization_losses
m	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?
ntrainable_variables
o	variables
pregularization_losses
q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_23", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}
?	
raxis
	2gamma
3beta
:moving_mean
;moving_variance
strainable_variables
t	variables
uregularization_losses
v	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_11", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?

4kernel
5bias
wtrainable_variables
x	variables
yregularization_losses
z	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
{trainable_variables
|	variables
}regularization_losses
~	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Reshape", "name": "reshape_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_3", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}
?
(0
)1
*2
+3
,4
-5
.6
/7
08
19
210
311
412
513"
trackable_list_wrapper
?
(0
)1
*2
+3
64
75
,6
-7
.8
/9
810
911
012
113
214
315
:16
;17
418
519"
trackable_list_wrapper
 "
trackable_list_wrapper
?
$trainable_variables
metrics
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
%	variables
&regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	d?2dense_28/kernel
:?2dense_28/bias
*:(?2batch_normalization_9/gamma
):'?2batch_normalization_9/beta
#:!
??2dense_29/kernel
:?2dense_29/bias
+:)?2batch_normalization_10/gamma
*:(?2batch_normalization_10/beta
#:!
??2dense_30/kernel
:?2dense_30/bias
+:)?2batch_normalization_11/gamma
*:(?2batch_normalization_11/beta
$:"???2dense_31/kernel
:??2dense_31/bias
2:0? (2!batch_normalization_9/moving_mean
6:4? (2%batch_normalization_9/moving_variance
3:1? (2"batch_normalization_10/moving_mean
7:5? (2&batch_normalization_10/moving_variance
3:1? (2"batch_normalization_11/moving_mean
7:5? (2&batch_normalization_11/moving_variance
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
J
60
71
82
93
:4
;5"
trackable_list_wrapper
J
0
1
2
3
4
5"
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
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
Ptrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
Q	variables
Rregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
Ttrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
U	variables
Vregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
<
*0
+1
62
73"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
Ytrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
Z	variables
[regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
]trainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
^	variables
_regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
atrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
b	variables
cregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
<
.0
/1
82
93"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
ftrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
g	variables
hregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?
?metrics
jtrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
k	variables
lregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
ntrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
o	variables
pregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
<
20
31
:2
;3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
strainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
t	variables
uregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
wtrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
x	variables
yregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
{trainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
|	variables
}regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
J
60
71
82
93
:4
;5"
trackable_list_wrapper
n
0
1
2
3
4
5
6
 7
!8
"9
#10"
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
.
60
71"
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
.
80
91"
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
.
:0
;1"
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
?2?
E__inference_model_10_layer_call_and_return_conditional_losses_3670497
E__inference_model_10_layer_call_and_return_conditional_losses_3670596
E__inference_model_10_layer_call_and_return_conditional_losses_3670050
E__inference_model_10_layer_call_and_return_conditional_losses_3670101?
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
?2?
*__inference_model_10_layer_call_fn_3670201
*__inference_model_10_layer_call_fn_3670644
*__inference_model_10_layer_call_fn_3670300
*__inference_model_10_layer_call_fn_3670692?
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
?2?
"__inference__wrapped_model_3668911?
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
annotations? *P?M
K?H
"?
input_21?????????d
"?
input_22?????????
?2?
H__inference_embedding_7_layer_call_and_return_conditional_losses_3670701?
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
-__inference_embedding_7_layer_call_fn_3670708?
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
G__inference_flatten_11_layer_call_and_return_conditional_losses_3670714?
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
,__inference_flatten_11_layer_call_fn_3670719?
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
G__inference_multiply_7_layer_call_and_return_conditional_losses_3670725?
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
,__inference_multiply_7_layer_call_fn_3670731?
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
?2?
I__inference_sequential_7_layer_call_and_return_conditional_losses_3670869
I__inference_sequential_7_layer_call_and_return_conditional_losses_3670959
I__inference_sequential_7_layer_call_and_return_conditional_losses_3669607
I__inference_sequential_7_layer_call_and_return_conditional_losses_3669662?
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
.__inference_sequential_7_layer_call_fn_3671049
.__inference_sequential_7_layer_call_fn_3671004
.__inference_sequential_7_layer_call_fn_3669763
.__inference_sequential_7_layer_call_fn_3669863?
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
?B?
%__inference_signature_wrapper_3670350input_21input_22"?
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
?2?
E__inference_dense_28_layer_call_and_return_conditional_losses_3671059?
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
*__inference_dense_28_layer_call_fn_3671068?
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
K__inference_leaky_re_lu_21_layer_call_and_return_conditional_losses_3671073?
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
0__inference_leaky_re_lu_21_layer_call_fn_3671078?
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
?2?
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_3671114
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_3671134?
???
FullArgSpec)
args!?
jself
jinputs

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
7__inference_batch_normalization_9_layer_call_fn_3671160
7__inference_batch_normalization_9_layer_call_fn_3671147?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
E__inference_dense_29_layer_call_and_return_conditional_losses_3671170?
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
*__inference_dense_29_layer_call_fn_3671179?
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
K__inference_leaky_re_lu_22_layer_call_and_return_conditional_losses_3671184?
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
0__inference_leaky_re_lu_22_layer_call_fn_3671189?
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
?2?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_3671225
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_3671245?
???
FullArgSpec)
args!?
jself
jinputs

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
8__inference_batch_normalization_10_layer_call_fn_3671271
8__inference_batch_normalization_10_layer_call_fn_3671258?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
E__inference_dense_30_layer_call_and_return_conditional_losses_3671281?
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
*__inference_dense_30_layer_call_fn_3671290?
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
K__inference_leaky_re_lu_23_layer_call_and_return_conditional_losses_3671295?
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
0__inference_leaky_re_lu_23_layer_call_fn_3671300?
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
?2?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_3671356
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_3671336?
???
FullArgSpec)
args!?
jself
jinputs

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
8__inference_batch_normalization_11_layer_call_fn_3671369
8__inference_batch_normalization_11_layer_call_fn_3671382?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
E__inference_dense_31_layer_call_and_return_conditional_losses_3671393?
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
*__inference_dense_31_layer_call_fn_3671402?
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
F__inference_reshape_3_layer_call_and_return_conditional_losses_3671416?
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
+__inference_reshape_3_layer_call_fn_3671421?
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
 ?
"__inference__wrapped_model_3668911?()7*6+,-9.8/01;2:345Z?W
P?M
K?H
"?
input_21?????????d
"?
input_22?????????
? "E?B
@
sequential_70?-
sequential_7????????????
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_3671225d89./4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_3671245d9.8/4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
8__inference_batch_normalization_10_layer_call_fn_3671258W89./4?1
*?'
!?
inputs??????????
p
? "????????????
8__inference_batch_normalization_10_layer_call_fn_3671271W9.8/4?1
*?'
!?
inputs??????????
p 
? "????????????
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_3671336d:;234?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_3671356d;2:34?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
8__inference_batch_normalization_11_layer_call_fn_3671369W:;234?1
*?'
!?
inputs??????????
p
? "????????????
8__inference_batch_normalization_11_layer_call_fn_3671382W;2:34?1
*?'
!?
inputs??????????
p 
? "????????????
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_3671114d67*+4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_3671134d7*6+4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_9_layer_call_fn_3671147W67*+4?1
*?'
!?
inputs??????????
p
? "????????????
7__inference_batch_normalization_9_layer_call_fn_3671160W7*6+4?1
*?'
!?
inputs??????????
p 
? "????????????
E__inference_dense_28_layer_call_and_return_conditional_losses_3671059]()/?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????
? ~
*__inference_dense_28_layer_call_fn_3671068P()/?,
%?"
 ?
inputs?????????d
? "????????????
E__inference_dense_29_layer_call_and_return_conditional_losses_3671170^,-0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_29_layer_call_fn_3671179Q,-0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_30_layer_call_and_return_conditional_losses_3671281^010?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_30_layer_call_fn_3671290Q010?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_31_layer_call_and_return_conditional_losses_3671393_450?-
&?#
!?
inputs??????????
? "'?$
?
0???????????
? ?
*__inference_dense_31_layer_call_fn_3671402R450?-
&?#
!?
inputs??????????
? "?????????????
H__inference_embedding_7_layer_call_and_return_conditional_losses_3670701_/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????d
? ?
-__inference_embedding_7_layer_call_fn_3670708R/?,
%?"
 ?
inputs?????????
? "??????????d?
G__inference_flatten_11_layer_call_and_return_conditional_losses_3670714\3?0
)?&
$?!
inputs?????????d
? "%?"
?
0?????????d
? 
,__inference_flatten_11_layer_call_fn_3670719O3?0
)?&
$?!
inputs?????????d
? "??????????d?
K__inference_leaky_re_lu_21_layer_call_and_return_conditional_losses_3671073Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_leaky_re_lu_21_layer_call_fn_3671078M0?-
&?#
!?
inputs??????????
? "????????????
K__inference_leaky_re_lu_22_layer_call_and_return_conditional_losses_3671184Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_leaky_re_lu_22_layer_call_fn_3671189M0?-
&?#
!?
inputs??????????
? "????????????
K__inference_leaky_re_lu_23_layer_call_and_return_conditional_losses_3671295Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_leaky_re_lu_23_layer_call_fn_3671300M0?-
&?#
!?
inputs??????????
? "????????????
E__inference_model_10_layer_call_and_return_conditional_losses_3670050?()67*+,-89./01:;2345b?_
X?U
K?H
"?
input_21?????????d
"?
input_22?????????
p

 
? "/?,
%?"
0???????????
? ?
E__inference_model_10_layer_call_and_return_conditional_losses_3670101?()7*6+,-9.8/01;2:345b?_
X?U
K?H
"?
input_21?????????d
"?
input_22?????????
p 

 
? "/?,
%?"
0???????????
? ?
E__inference_model_10_layer_call_and_return_conditional_losses_3670497?()67*+,-89./01:;2345b?_
X?U
K?H
"?
inputs/0?????????d
"?
inputs/1?????????
p

 
? "/?,
%?"
0???????????
? ?
E__inference_model_10_layer_call_and_return_conditional_losses_3670596?()7*6+,-9.8/01;2:345b?_
X?U
K?H
"?
inputs/0?????????d
"?
inputs/1?????????
p 

 
? "/?,
%?"
0???????????
? ?
*__inference_model_10_layer_call_fn_3670201?()67*+,-89./01:;2345b?_
X?U
K?H
"?
input_21?????????d
"?
input_22?????????
p

 
? ""?????????????
*__inference_model_10_layer_call_fn_3670300?()7*6+,-9.8/01;2:345b?_
X?U
K?H
"?
input_21?????????d
"?
input_22?????????
p 

 
? ""?????????????
*__inference_model_10_layer_call_fn_3670644?()67*+,-89./01:;2345b?_
X?U
K?H
"?
inputs/0?????????d
"?
inputs/1?????????
p

 
? ""?????????????
*__inference_model_10_layer_call_fn_3670692?()7*6+,-9.8/01;2:345b?_
X?U
K?H
"?
inputs/0?????????d
"?
inputs/1?????????
p 

 
? ""?????????????
G__inference_multiply_7_layer_call_and_return_conditional_losses_3670725?Z?W
P?M
K?H
"?
inputs/0?????????d
"?
inputs/1?????????d
? "%?"
?
0?????????d
? ?
,__inference_multiply_7_layer_call_fn_3670731vZ?W
P?M
K?H
"?
inputs/0?????????d
"?
inputs/1?????????d
? "??????????d?
F__inference_reshape_3_layer_call_and_return_conditional_losses_3671416d1?.
'?$
"?
inputs???????????
? "/?,
%?"
0???????????
? ?
+__inference_reshape_3_layer_call_fn_3671421W1?.
'?$
"?
inputs???????????
? ""?????????????
I__inference_sequential_7_layer_call_and_return_conditional_losses_3669607?()67*+,-89./01:;2345??<
5?2
(?%
dense_28_input?????????d
p

 
? "/?,
%?"
0???????????
? ?
I__inference_sequential_7_layer_call_and_return_conditional_losses_3669662?()7*6+,-9.8/01;2:345??<
5?2
(?%
dense_28_input?????????d
p 

 
? "/?,
%?"
0???????????
? ?
I__inference_sequential_7_layer_call_and_return_conditional_losses_3670869?()67*+,-89./01:;23457?4
-?*
 ?
inputs?????????d
p

 
? "/?,
%?"
0???????????
? ?
I__inference_sequential_7_layer_call_and_return_conditional_losses_3670959?()7*6+,-9.8/01;2:3457?4
-?*
 ?
inputs?????????d
p 

 
? "/?,
%?"
0???????????
? ?
.__inference_sequential_7_layer_call_fn_3669763{()67*+,-89./01:;2345??<
5?2
(?%
dense_28_input?????????d
p

 
? ""?????????????
.__inference_sequential_7_layer_call_fn_3669863{()7*6+,-9.8/01;2:345??<
5?2
(?%
dense_28_input?????????d
p 

 
? ""?????????????
.__inference_sequential_7_layer_call_fn_3671004s()67*+,-89./01:;23457?4
-?*
 ?
inputs?????????d
p

 
? ""?????????????
.__inference_sequential_7_layer_call_fn_3671049s()7*6+,-9.8/01;2:3457?4
-?*
 ?
inputs?????????d
p 

 
? ""?????????????
%__inference_signature_wrapper_3670350?()7*6+,-9.8/01;2:345m?j
? 
c?`
.
input_21"?
input_21?????????d
.
input_22"?
input_22?????????"E?B
@
sequential_70?-
sequential_7???????????