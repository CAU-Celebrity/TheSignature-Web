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
embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*'
shared_nameembedding_3/embeddings
?
*embedding_3/embeddings/Read/ReadVariableOpReadVariableOpembedding_3/embeddings*
_output_shapes
:	?d*
dtype0
{
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?* 
shared_namedense_12/kernel
t
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes
:	d?*
dtype0
s
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_12/bias
l
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_3/gamma
?
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_3/beta
?
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes	
:?*
dtype0
|
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_13/kernel
u
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel* 
_output_shapes
:
??*
dtype0
s
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_13/bias
l
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_4/gamma
?
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_4/beta
?
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes	
:?*
dtype0
|
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_14/kernel
u
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel* 
_output_shapes
:
??*
dtype0
s
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_14/bias
l
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_5/gamma
?
/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_5/beta
?
.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes	
:?*
dtype0
}
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???* 
shared_namedense_15/kernel
v
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*!
_output_shapes
:???*
dtype0
t
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*
shared_namedense_15/bias
m
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes

:??*
dtype0
?
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_3/moving_mean
?
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_3/moving_variance
?
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes	
:?*
dtype0
?
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_4/moving_mean
?
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_4/moving_variance
?
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes	
:?*
dtype0
?
!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_5/moving_mean
?
5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_5/moving_variance
?
9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
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
	variables
>non_trainable_variables

?layers
@layer_regularization_losses
	regularization_losses
 
fd
VARIABLE_VALUEembedding_3/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?
trainable_variables
Ametrics
Blayer_metrics
	variables
Cnon_trainable_variables

Dlayers
Elayer_regularization_losses
regularization_losses
 
 
 
?
trainable_variables
Fmetrics
Glayer_metrics
	variables
Hnon_trainable_variables

Ilayers
Jlayer_regularization_losses
regularization_losses
 
 
 
?
trainable_variables
Kmetrics
Llayer_metrics
	variables
Mnon_trainable_variables

Nlayers
Olayer_regularization_losses
regularization_losses
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
%	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
&regularization_losses
US
VARIABLE_VALUEdense_12/kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_12/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_3/gamma0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbatch_normalization_3/beta0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_13/kernel0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_13/bias0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_4/gamma0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbatch_normalization_4/beta0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_14/kernel0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_14/bias1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization_5/gamma1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_5/beta1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_15/kernel1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_15/bias1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!batch_normalization_3/moving_mean&variables/5/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%batch_normalization_3/moving_variance&variables/6/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_4/moving_mean'variables/11/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_4/moving_variance'variables/12/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_5/moving_mean'variables/17/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_5/moving_variance'variables/18/.ATTRIBUTES/VARIABLE_VALUE
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
 

(0
)1

(0
)1
 
?
Ptrainable_variables
?metrics
?layer_metrics
Q	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
Rregularization_losses
 
 
 
?
Ttrainable_variables
?metrics
?layer_metrics
U	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
Vregularization_losses
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
Ytrainable_variables
?metrics
?layer_metrics
Z	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
[regularization_losses

,0
-1

,0
-1
 
?
]trainable_variables
?metrics
?layer_metrics
^	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
_regularization_losses
 
 
 
?
atrainable_variables
?metrics
?layer_metrics
b	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
cregularization_losses
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
ftrainable_variables
?metrics
?layer_metrics
g	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
hregularization_losses

00
11

00
11
 
?
jtrainable_variables
?metrics
?layer_metrics
k	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
lregularization_losses
 
 
 
?
ntrainable_variables
?metrics
?layer_metrics
o	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
pregularization_losses
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
strainable_variables
?metrics
?layer_metrics
t	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
uregularization_losses

40
51

40
51
 
?
wtrainable_variables
?metrics
?layer_metrics
x	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
yregularization_losses
 
 
 
?
{trainable_variables
?metrics
?layer_metrics
|	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
}regularization_losses
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
 
{
serving_default_input_10Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
z
serving_default_input_9Placeholder*'
_output_shapes
:?????????d*
dtype0*
shape:?????????d
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_10serving_default_input_9embedding_3/embeddingsdense_12/kerneldense_12/bias%batch_normalization_3/moving_variancebatch_normalization_3/gamma!batch_normalization_3/moving_meanbatch_normalization_3/betadense_13/kerneldense_13/bias%batch_normalization_4/moving_variancebatch_normalization_4/gamma!batch_normalization_4/moving_meanbatch_normalization_4/betadense_14/kerneldense_14/bias%batch_normalization_5/moving_variancebatch_normalization_5/gamma!batch_normalization_5/moving_meanbatch_normalization_5/betadense_15/kerneldense_15/bias*"
Tin
2*
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
%__inference_signature_wrapper_2459655
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_3/embeddings/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp/batch_normalization_4/gamma/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOpConst*"
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
 __inference__traced_save_2460813
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_3/embeddingsdense_12/kerneldense_12/biasbatch_normalization_3/gammabatch_normalization_3/betadense_13/kerneldense_13/biasbatch_normalization_4/gammabatch_normalization_4/betadense_14/kerneldense_14/biasbatch_normalization_5/gammabatch_normalization_5/betadense_15/kerneldense_15/bias!batch_normalization_3/moving_mean%batch_normalization_3/moving_variance!batch_normalization_4/moving_mean%batch_normalization_4/moving_variance!batch_normalization_5/moving_mean%batch_normalization_5/moving_variance*!
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
#__inference__traced_restore_2460886??
?
?
)__inference_model_4_layer_call_fn_2459506
input_9
input_10
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
StatefulPartitionedCallStatefulPartitionedCallinput_9input_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_24594612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_9:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_10
?
?
.__inference_sequential_3_layer_call_fn_2459168
dense_12_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_24591252
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
_user_specified_namedense_12_input
?0
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2460530

inputs
assignmovingavg_2460505
assignmovingavg_1_2460511)
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
loc:@AssignMovingAvg/2460505*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_2460505*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/2460505*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/2460505*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2460505AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/2460505*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/2460511*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_2460511*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2460511*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2460511*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_2460511AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/2460511*
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
?9
?
I__inference_sequential_3_layer_call_and_return_conditional_losses_2459125

inputs
dense_12_2459073
dense_12_2459075!
batch_normalization_3_2459079!
batch_normalization_3_2459081!
batch_normalization_3_2459083!
batch_normalization_3_2459085
dense_13_2459088
dense_13_2459090!
batch_normalization_4_2459094!
batch_normalization_4_2459096!
batch_normalization_4_2459098!
batch_normalization_4_2459100
dense_14_2459103
dense_14_2459105!
batch_normalization_5_2459109!
batch_normalization_5_2459111!
batch_normalization_5_2459113!
batch_normalization_5_2459115
dense_15_2459118
dense_15_2459120
identity??-batch_normalization_3/StatefulPartitionedCall?-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCallinputsdense_12_2459073dense_12_2459075*
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
E__inference_dense_12_layer_call_and_return_conditional_losses_24586502"
 dense_12/StatefulPartitionedCall?
leaky_re_lu_9/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_24586712
leaky_re_lu_9/PartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0batch_normalization_3_2459079batch_normalization_3_2459081batch_normalization_3_2459083batch_normalization_3_2459085*
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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_24583452/
-batch_normalization_3/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0dense_13_2459088dense_13_2459090*
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
E__inference_dense_13_layer_call_and_return_conditional_losses_24587242"
 dense_13/StatefulPartitionedCall?
leaky_re_lu_10/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_24587452 
leaky_re_lu_10/PartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0batch_normalization_4_2459094batch_normalization_4_2459096batch_normalization_4_2459098batch_normalization_4_2459100*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_24584852/
-batch_normalization_4/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_14_2459103dense_14_2459105*
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
E__inference_dense_14_layer_call_and_return_conditional_losses_24587982"
 dense_14/StatefulPartitionedCall?
leaky_re_lu_11/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_24588192 
leaky_re_lu_11/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0batch_normalization_5_2459109batch_normalization_5_2459111batch_normalization_5_2459113batch_normalization_5_2459115*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_24586252/
-batch_normalization_5/StatefulPartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_15_2459118dense_15_2459120*
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
E__inference_dense_15_layer_call_and_return_conditional_losses_24588732"
 dense_15/StatefulPartitionedCall?
reshape_1/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
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
F__inference_reshape_1_layer_call_and_return_conditional_losses_24589032
reshape_1/PartitionedCall?
IdentityIdentity"reshape_1/PartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
b
F__inference_flatten_5_layer_call_and_return_conditional_losses_2460019

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
?
s
G__inference_multiply_3_layer_call_and_return_conditional_losses_2460030
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
??
?
D__inference_model_4_layer_call_and_return_conditional_losses_2459901
inputs_0
inputs_1(
$embedding_3_embedding_lookup_24598068
4sequential_3_dense_12_matmul_readvariableop_resource9
5sequential_3_dense_12_biasadd_readvariableop_resourceH
Dsequential_3_batch_normalization_3_batchnorm_readvariableop_resourceL
Hsequential_3_batch_normalization_3_batchnorm_mul_readvariableop_resourceJ
Fsequential_3_batch_normalization_3_batchnorm_readvariableop_1_resourceJ
Fsequential_3_batch_normalization_3_batchnorm_readvariableop_2_resource8
4sequential_3_dense_13_matmul_readvariableop_resource9
5sequential_3_dense_13_biasadd_readvariableop_resourceH
Dsequential_3_batch_normalization_4_batchnorm_readvariableop_resourceL
Hsequential_3_batch_normalization_4_batchnorm_mul_readvariableop_resourceJ
Fsequential_3_batch_normalization_4_batchnorm_readvariableop_1_resourceJ
Fsequential_3_batch_normalization_4_batchnorm_readvariableop_2_resource8
4sequential_3_dense_14_matmul_readvariableop_resource9
5sequential_3_dense_14_biasadd_readvariableop_resourceH
Dsequential_3_batch_normalization_5_batchnorm_readvariableop_resourceL
Hsequential_3_batch_normalization_5_batchnorm_mul_readvariableop_resourceJ
Fsequential_3_batch_normalization_5_batchnorm_readvariableop_1_resourceJ
Fsequential_3_batch_normalization_5_batchnorm_readvariableop_2_resource8
4sequential_3_dense_15_matmul_readvariableop_resource9
5sequential_3_dense_15_biasadd_readvariableop_resource
identity??embedding_3/embedding_lookup?;sequential_3/batch_normalization_3/batchnorm/ReadVariableOp?=sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_1?=sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_2??sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp?;sequential_3/batch_normalization_4/batchnorm/ReadVariableOp?=sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_1?=sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_2??sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp?;sequential_3/batch_normalization_5/batchnorm/ReadVariableOp?=sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_1?=sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_2??sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp?,sequential_3/dense_12/BiasAdd/ReadVariableOp?+sequential_3/dense_12/MatMul/ReadVariableOp?,sequential_3/dense_13/BiasAdd/ReadVariableOp?+sequential_3/dense_13/MatMul/ReadVariableOp?,sequential_3/dense_14/BiasAdd/ReadVariableOp?+sequential_3/dense_14/MatMul/ReadVariableOp?,sequential_3/dense_15/BiasAdd/ReadVariableOp?+sequential_3/dense_15/MatMul/ReadVariableOp?
embedding_3/embedding_lookupResourceGather$embedding_3_embedding_lookup_2459806inputs_1",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_3/embedding_lookup/2459806*+
_output_shapes
:?????????d*
dtype02
embedding_3/embedding_lookup?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_3/embedding_lookup/2459806*+
_output_shapes
:?????????d2'
%embedding_3/embedding_lookup/Identity?
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2)
'embedding_3/embedding_lookup/Identity_1s
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"????d   2
flatten_5/Const?
flatten_5/ReshapeReshape0embedding_3/embedding_lookup/Identity_1:output:0flatten_5/Const:output:0*
T0*'
_output_shapes
:?????????d2
flatten_5/Reshape
multiply_3/mulMulinputs_0flatten_5/Reshape:output:0*
T0*'
_output_shapes
:?????????d2
multiply_3/mul?
+sequential_3/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_12_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02-
+sequential_3/dense_12/MatMul/ReadVariableOp?
sequential_3/dense_12/MatMulMatMulmultiply_3/mul:z:03sequential_3/dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_3/dense_12/MatMul?
,sequential_3/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_3/dense_12/BiasAdd/ReadVariableOp?
sequential_3/dense_12/BiasAddBiasAdd&sequential_3/dense_12/MatMul:product:04sequential_3/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_3/dense_12/BiasAdd?
$sequential_3/leaky_re_lu_9/LeakyRelu	LeakyRelu&sequential_3/dense_12/BiasAdd:output:0*(
_output_shapes
:??????????2&
$sequential_3/leaky_re_lu_9/LeakyRelu?
;sequential_3/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpDsequential_3_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_3/batch_normalization_3/batchnorm/ReadVariableOp?
2sequential_3/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_3/batch_normalization_3/batchnorm/add/y?
0sequential_3/batch_normalization_3/batchnorm/addAddV2Csequential_3/batch_normalization_3/batchnorm/ReadVariableOp:value:0;sequential_3/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_3/batchnorm/add?
2sequential_3/batch_normalization_3/batchnorm/RsqrtRsqrt4sequential_3/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_3/batch_normalization_3/batchnorm/Rsqrt?
?sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_3_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp?
0sequential_3/batch_normalization_3/batchnorm/mulMul6sequential_3/batch_normalization_3/batchnorm/Rsqrt:y:0Gsequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_3/batchnorm/mul?
2sequential_3/batch_normalization_3/batchnorm/mul_1Mul2sequential_3/leaky_re_lu_9/LeakyRelu:activations:04sequential_3/batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_3/batch_normalization_3/batchnorm/mul_1?
=sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_3_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02?
=sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_1?
2sequential_3/batch_normalization_3/batchnorm/mul_2MulEsequential_3/batch_normalization_3/batchnorm/ReadVariableOp_1:value:04sequential_3/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_3/batch_normalization_3/batchnorm/mul_2?
=sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_3_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02?
=sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_2?
0sequential_3/batch_normalization_3/batchnorm/subSubEsequential_3/batch_normalization_3/batchnorm/ReadVariableOp_2:value:06sequential_3/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_3/batchnorm/sub?
2sequential_3/batch_normalization_3/batchnorm/add_1AddV26sequential_3/batch_normalization_3/batchnorm/mul_1:z:04sequential_3/batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_3/batch_normalization_3/batchnorm/add_1?
+sequential_3/dense_13/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_13_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_3/dense_13/MatMul/ReadVariableOp?
sequential_3/dense_13/MatMulMatMul6sequential_3/batch_normalization_3/batchnorm/add_1:z:03sequential_3/dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_3/dense_13/MatMul?
,sequential_3/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_3/dense_13/BiasAdd/ReadVariableOp?
sequential_3/dense_13/BiasAddBiasAdd&sequential_3/dense_13/MatMul:product:04sequential_3/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_3/dense_13/BiasAdd?
%sequential_3/leaky_re_lu_10/LeakyRelu	LeakyRelu&sequential_3/dense_13/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_3/leaky_re_lu_10/LeakyRelu?
;sequential_3/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpDsequential_3_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_3/batch_normalization_4/batchnorm/ReadVariableOp?
2sequential_3/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_3/batch_normalization_4/batchnorm/add/y?
0sequential_3/batch_normalization_4/batchnorm/addAddV2Csequential_3/batch_normalization_4/batchnorm/ReadVariableOp:value:0;sequential_3/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_4/batchnorm/add?
2sequential_3/batch_normalization_4/batchnorm/RsqrtRsqrt4sequential_3/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_3/batch_normalization_4/batchnorm/Rsqrt?
?sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_3_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp?
0sequential_3/batch_normalization_4/batchnorm/mulMul6sequential_3/batch_normalization_4/batchnorm/Rsqrt:y:0Gsequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_4/batchnorm/mul?
2sequential_3/batch_normalization_4/batchnorm/mul_1Mul3sequential_3/leaky_re_lu_10/LeakyRelu:activations:04sequential_3/batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_3/batch_normalization_4/batchnorm/mul_1?
=sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_3_batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02?
=sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_1?
2sequential_3/batch_normalization_4/batchnorm/mul_2MulEsequential_3/batch_normalization_4/batchnorm/ReadVariableOp_1:value:04sequential_3/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_3/batch_normalization_4/batchnorm/mul_2?
=sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_3_batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02?
=sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_2?
0sequential_3/batch_normalization_4/batchnorm/subSubEsequential_3/batch_normalization_4/batchnorm/ReadVariableOp_2:value:06sequential_3/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_4/batchnorm/sub?
2sequential_3/batch_normalization_4/batchnorm/add_1AddV26sequential_3/batch_normalization_4/batchnorm/mul_1:z:04sequential_3/batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_3/batch_normalization_4/batchnorm/add_1?
+sequential_3/dense_14/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_14_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_3/dense_14/MatMul/ReadVariableOp?
sequential_3/dense_14/MatMulMatMul6sequential_3/batch_normalization_4/batchnorm/add_1:z:03sequential_3/dense_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_3/dense_14/MatMul?
,sequential_3/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_3/dense_14/BiasAdd/ReadVariableOp?
sequential_3/dense_14/BiasAddBiasAdd&sequential_3/dense_14/MatMul:product:04sequential_3/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_3/dense_14/BiasAdd?
%sequential_3/leaky_re_lu_11/LeakyRelu	LeakyRelu&sequential_3/dense_14/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_3/leaky_re_lu_11/LeakyRelu?
;sequential_3/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpDsequential_3_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_3/batch_normalization_5/batchnorm/ReadVariableOp?
2sequential_3/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_3/batch_normalization_5/batchnorm/add/y?
0sequential_3/batch_normalization_5/batchnorm/addAddV2Csequential_3/batch_normalization_5/batchnorm/ReadVariableOp:value:0;sequential_3/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_5/batchnorm/add?
2sequential_3/batch_normalization_5/batchnorm/RsqrtRsqrt4sequential_3/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_3/batch_normalization_5/batchnorm/Rsqrt?
?sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_3_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp?
0sequential_3/batch_normalization_5/batchnorm/mulMul6sequential_3/batch_normalization_5/batchnorm/Rsqrt:y:0Gsequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_5/batchnorm/mul?
2sequential_3/batch_normalization_5/batchnorm/mul_1Mul3sequential_3/leaky_re_lu_11/LeakyRelu:activations:04sequential_3/batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_3/batch_normalization_5/batchnorm/mul_1?
=sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_3_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02?
=sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_1?
2sequential_3/batch_normalization_5/batchnorm/mul_2MulEsequential_3/batch_normalization_5/batchnorm/ReadVariableOp_1:value:04sequential_3/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_3/batch_normalization_5/batchnorm/mul_2?
=sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_3_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02?
=sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_2?
0sequential_3/batch_normalization_5/batchnorm/subSubEsequential_3/batch_normalization_5/batchnorm/ReadVariableOp_2:value:06sequential_3/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_5/batchnorm/sub?
2sequential_3/batch_normalization_5/batchnorm/add_1AddV26sequential_3/batch_normalization_5/batchnorm/mul_1:z:04sequential_3/batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_3/batch_normalization_5/batchnorm/add_1?
+sequential_3/dense_15/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_15_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02-
+sequential_3/dense_15/MatMul/ReadVariableOp?
sequential_3/dense_15/MatMulMatMul6sequential_3/batch_normalization_5/batchnorm/add_1:z:03sequential_3/dense_15/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_3/dense_15/MatMul?
,sequential_3/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_15_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02.
,sequential_3/dense_15/BiasAdd/ReadVariableOp?
sequential_3/dense_15/BiasAddBiasAdd&sequential_3/dense_15/MatMul:product:04sequential_3/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_3/dense_15/BiasAdd?
sequential_3/dense_15/TanhTanh&sequential_3/dense_15/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
sequential_3/dense_15/Tanh?
sequential_3/reshape_1/ShapeShapesequential_3/dense_15/Tanh:y:0*
T0*
_output_shapes
:2
sequential_3/reshape_1/Shape?
*sequential_3/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_3/reshape_1/strided_slice/stack?
,sequential_3/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/reshape_1/strided_slice/stack_1?
,sequential_3/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/reshape_1/strided_slice/stack_2?
$sequential_3/reshape_1/strided_sliceStridedSlice%sequential_3/reshape_1/Shape:output:03sequential_3/reshape_1/strided_slice/stack:output:05sequential_3/reshape_1/strided_slice/stack_1:output:05sequential_3/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_3/reshape_1/strided_slice?
&sequential_3/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_3/reshape_1/Reshape/shape/1?
&sequential_3/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_3/reshape_1/Reshape/shape/2?
&sequential_3/reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_3/reshape_1/Reshape/shape/3?
$sequential_3/reshape_1/Reshape/shapePack-sequential_3/reshape_1/strided_slice:output:0/sequential_3/reshape_1/Reshape/shape/1:output:0/sequential_3/reshape_1/Reshape/shape/2:output:0/sequential_3/reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$sequential_3/reshape_1/Reshape/shape?
sequential_3/reshape_1/ReshapeReshapesequential_3/dense_15/Tanh:y:0-sequential_3/reshape_1/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2 
sequential_3/reshape_1/Reshape?

IdentityIdentity'sequential_3/reshape_1/Reshape:output:0^embedding_3/embedding_lookup<^sequential_3/batch_normalization_3/batchnorm/ReadVariableOp>^sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_1>^sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_2@^sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp<^sequential_3/batch_normalization_4/batchnorm/ReadVariableOp>^sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_1>^sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_2@^sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp<^sequential_3/batch_normalization_5/batchnorm/ReadVariableOp>^sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_1>^sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_2@^sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp-^sequential_3/dense_12/BiasAdd/ReadVariableOp,^sequential_3/dense_12/MatMul/ReadVariableOp-^sequential_3/dense_13/BiasAdd/ReadVariableOp,^sequential_3/dense_13/MatMul/ReadVariableOp-^sequential_3/dense_14/BiasAdd/ReadVariableOp,^sequential_3/dense_14/MatMul/ReadVariableOp-^sequential_3/dense_15/BiasAdd/ReadVariableOp,^sequential_3/dense_15/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2z
;sequential_3/batch_normalization_3/batchnorm/ReadVariableOp;sequential_3/batch_normalization_3/batchnorm/ReadVariableOp2~
=sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_1=sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_12~
=sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_2=sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_22?
?sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp?sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp2z
;sequential_3/batch_normalization_4/batchnorm/ReadVariableOp;sequential_3/batch_normalization_4/batchnorm/ReadVariableOp2~
=sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_1=sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_12~
=sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_2=sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_22?
?sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp?sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp2z
;sequential_3/batch_normalization_5/batchnorm/ReadVariableOp;sequential_3/batch_normalization_5/batchnorm/ReadVariableOp2~
=sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_1=sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_12~
=sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_2=sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_22?
?sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp?sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp2\
,sequential_3/dense_12/BiasAdd/ReadVariableOp,sequential_3/dense_12/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_12/MatMul/ReadVariableOp+sequential_3/dense_12/MatMul/ReadVariableOp2\
,sequential_3/dense_13/BiasAdd/ReadVariableOp,sequential_3/dense_13/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_13/MatMul/ReadVariableOp+sequential_3/dense_13/MatMul/ReadVariableOp2\
,sequential_3/dense_14/BiasAdd/ReadVariableOp,sequential_3/dense_14/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_14/MatMul/ReadVariableOp+sequential_3/dense_14/MatMul/ReadVariableOp2\
,sequential_3/dense_15/BiasAdd/ReadVariableOp,sequential_3/dense_15/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_15/MatMul/ReadVariableOp+sequential_3/dense_15/MatMul/ReadVariableOp:Q M
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
?9
?
I__inference_sequential_3_layer_call_and_return_conditional_losses_2458967
dense_12_input
dense_12_2458915
dense_12_2458917!
batch_normalization_3_2458921!
batch_normalization_3_2458923!
batch_normalization_3_2458925!
batch_normalization_3_2458927
dense_13_2458930
dense_13_2458932!
batch_normalization_4_2458936!
batch_normalization_4_2458938!
batch_normalization_4_2458940!
batch_normalization_4_2458942
dense_14_2458945
dense_14_2458947!
batch_normalization_5_2458951!
batch_normalization_5_2458953!
batch_normalization_5_2458955!
batch_normalization_5_2458957
dense_15_2458960
dense_15_2458962
identity??-batch_normalization_3/StatefulPartitionedCall?-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCalldense_12_inputdense_12_2458915dense_12_2458917*
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
E__inference_dense_12_layer_call_and_return_conditional_losses_24586502"
 dense_12/StatefulPartitionedCall?
leaky_re_lu_9/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_24586712
leaky_re_lu_9/PartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0batch_normalization_3_2458921batch_normalization_3_2458923batch_normalization_3_2458925batch_normalization_3_2458927*
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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_24583452/
-batch_normalization_3/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0dense_13_2458930dense_13_2458932*
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
E__inference_dense_13_layer_call_and_return_conditional_losses_24587242"
 dense_13/StatefulPartitionedCall?
leaky_re_lu_10/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_24587452 
leaky_re_lu_10/PartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0batch_normalization_4_2458936batch_normalization_4_2458938batch_normalization_4_2458940batch_normalization_4_2458942*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_24584852/
-batch_normalization_4/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_14_2458945dense_14_2458947*
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
E__inference_dense_14_layer_call_and_return_conditional_losses_24587982"
 dense_14/StatefulPartitionedCall?
leaky_re_lu_11/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_24588192 
leaky_re_lu_11/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0batch_normalization_5_2458951batch_normalization_5_2458953batch_normalization_5_2458955batch_normalization_5_2458957*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_24586252/
-batch_normalization_5/StatefulPartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_15_2458960dense_15_2458962*
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
E__inference_dense_15_layer_call_and_return_conditional_losses_24588732"
 dense_15/StatefulPartitionedCall?
reshape_1/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
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
F__inference_reshape_1_layer_call_and_return_conditional_losses_24589032
reshape_1/PartitionedCall?
IdentityIdentity"reshape_1/PartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_12_input
?

*__inference_dense_15_layer_call_fn_2460707

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
E__inference_dense_15_layer_call_and_return_conditional_losses_24588732
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
?
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2460550

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
?	
?
H__inference_embedding_3_layer_call_and_return_conditional_losses_2459182

inputs
embedding_lookup_2459176
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_2459176inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/2459176*+
_output_shapes
:?????????d*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/2459176*+
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
?
b
F__inference_flatten_5_layer_call_and_return_conditional_losses_2459200

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
?

*__inference_dense_13_layer_call_fn_2460484

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
E__inference_dense_13_layer_call_and_return_conditional_losses_24587242
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
?
g
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_2458745

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
E__inference_dense_14_layer_call_and_return_conditional_losses_2458798

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
7__inference_batch_normalization_4_layer_call_fn_2460563

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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_24584522
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
?9
?
I__inference_sequential_3_layer_call_and_return_conditional_losses_2458912
dense_12_input
dense_12_2458661
dense_12_2458663!
batch_normalization_3_2458705!
batch_normalization_3_2458707!
batch_normalization_3_2458709!
batch_normalization_3_2458711
dense_13_2458735
dense_13_2458737!
batch_normalization_4_2458779!
batch_normalization_4_2458781!
batch_normalization_4_2458783!
batch_normalization_4_2458785
dense_14_2458809
dense_14_2458811!
batch_normalization_5_2458853!
batch_normalization_5_2458855!
batch_normalization_5_2458857!
batch_normalization_5_2458859
dense_15_2458884
dense_15_2458886
identity??-batch_normalization_3/StatefulPartitionedCall?-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCalldense_12_inputdense_12_2458661dense_12_2458663*
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
E__inference_dense_12_layer_call_and_return_conditional_losses_24586502"
 dense_12/StatefulPartitionedCall?
leaky_re_lu_9/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_24586712
leaky_re_lu_9/PartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0batch_normalization_3_2458705batch_normalization_3_2458707batch_normalization_3_2458709batch_normalization_3_2458711*
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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_24583122/
-batch_normalization_3/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0dense_13_2458735dense_13_2458737*
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
E__inference_dense_13_layer_call_and_return_conditional_losses_24587242"
 dense_13/StatefulPartitionedCall?
leaky_re_lu_10/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_24587452 
leaky_re_lu_10/PartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0batch_normalization_4_2458779batch_normalization_4_2458781batch_normalization_4_2458783batch_normalization_4_2458785*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_24584522/
-batch_normalization_4/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_14_2458809dense_14_2458811*
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
E__inference_dense_14_layer_call_and_return_conditional_losses_24587982"
 dense_14/StatefulPartitionedCall?
leaky_re_lu_11/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_24588192 
leaky_re_lu_11/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0batch_normalization_5_2458853batch_normalization_5_2458855batch_normalization_5_2458857batch_normalization_5_2458859*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_24585922/
-batch_normalization_5/StatefulPartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_15_2458884dense_15_2458886*
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
E__inference_dense_15_layer_call_and_return_conditional_losses_24588732"
 dense_15/StatefulPartitionedCall?
reshape_1/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
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
F__inference_reshape_1_layer_call_and_return_conditional_losses_24589032
reshape_1/PartitionedCall?
IdentityIdentity"reshape_1/PartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_12_input
?	
?
E__inference_dense_12_layer_call_and_return_conditional_losses_2460364

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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2458345

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
?
q
G__inference_multiply_3_layer_call_and_return_conditional_losses_2459214

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
?
?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2458625

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
?
L
0__inference_leaky_re_lu_11_layer_call_fn_2460605

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
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_24588192
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
?
G
+__inference_reshape_1_layer_call_fn_2460726

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
F__inference_reshape_1_layer_call_and_return_conditional_losses_24589032
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
.__inference_sequential_3_layer_call_fn_2460309

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
I__inference_sequential_3_layer_call_and_return_conditional_losses_24590252
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
?0
?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2460419

inputs
assignmovingavg_2460394
assignmovingavg_1_2460400)
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
loc:@AssignMovingAvg/2460394*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_2460394*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/2460394*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/2460394*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2460394AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/2460394*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/2460400*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_2460400*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2460400*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2460400*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_2460400AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/2460400*
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
?
?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2460439

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
s
-__inference_embedding_3_layer_call_fn_2460013

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
H__inference_embedding_3_layer_call_and_return_conditional_losses_24591822
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
?
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2458485

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
݉
?
I__inference_sequential_3_layer_call_and_return_conditional_losses_2460264

inputs+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource;
7batch_normalization_3_batchnorm_readvariableop_resource?
;batch_normalization_3_batchnorm_mul_readvariableop_resource=
9batch_normalization_3_batchnorm_readvariableop_1_resource=
9batch_normalization_3_batchnorm_readvariableop_2_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource;
7batch_normalization_4_batchnorm_readvariableop_resource?
;batch_normalization_4_batchnorm_mul_readvariableop_resource=
9batch_normalization_4_batchnorm_readvariableop_1_resource=
9batch_normalization_4_batchnorm_readvariableop_2_resource+
'dense_14_matmul_readvariableop_resource,
(dense_14_biasadd_readvariableop_resource;
7batch_normalization_5_batchnorm_readvariableop_resource?
;batch_normalization_5_batchnorm_mul_readvariableop_resource=
9batch_normalization_5_batchnorm_readvariableop_1_resource=
9batch_normalization_5_batchnorm_readvariableop_2_resource+
'dense_15_matmul_readvariableop_resource,
(dense_15_biasadd_readvariableop_resource
identity??.batch_normalization_3/batchnorm/ReadVariableOp?0batch_normalization_3/batchnorm/ReadVariableOp_1?0batch_normalization_3/batchnorm/ReadVariableOp_2?2batch_normalization_3/batchnorm/mul/ReadVariableOp?.batch_normalization_4/batchnorm/ReadVariableOp?0batch_normalization_4/batchnorm/ReadVariableOp_1?0batch_normalization_4/batchnorm/ReadVariableOp_2?2batch_normalization_4/batchnorm/mul/ReadVariableOp?.batch_normalization_5/batchnorm/ReadVariableOp?0batch_normalization_5/batchnorm/ReadVariableOp_1?0batch_normalization_5/batchnorm/ReadVariableOp_2?2batch_normalization_5/batchnorm/mul/ReadVariableOp?dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?dense_13/BiasAdd/ReadVariableOp?dense_13/MatMul/ReadVariableOp?dense_14/BiasAdd/ReadVariableOp?dense_14/MatMul/ReadVariableOp?dense_15/BiasAdd/ReadVariableOp?dense_15/MatMul/ReadVariableOp?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMulinputs&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_12/MatMul?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_12/BiasAdd/ReadVariableOp?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_12/BiasAdd?
leaky_re_lu_9/LeakyRelu	LeakyReludense_12/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_9/LeakyRelu?
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_3/batchnorm/ReadVariableOp?
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_3/batchnorm/add/y?
#batch_normalization_3/batchnorm/addAddV26batch_normalization_3/batchnorm/ReadVariableOp:value:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_3/batchnorm/add?
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_3/batchnorm/Rsqrt?
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_3/batchnorm/mul/ReadVariableOp?
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_3/batchnorm/mul?
%batch_normalization_3/batchnorm/mul_1Mul%leaky_re_lu_9/LeakyRelu:activations:0'batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_3/batchnorm/mul_1?
0batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_3/batchnorm/ReadVariableOp_1?
%batch_normalization_3/batchnorm/mul_2Mul8batch_normalization_3/batchnorm/ReadVariableOp_1:value:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_3/batchnorm/mul_2?
0batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_3/batchnorm/ReadVariableOp_2?
#batch_normalization_3/batchnorm/subSub8batch_normalization_3/batchnorm/ReadVariableOp_2:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_3/batchnorm/sub?
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_3/batchnorm/add_1?
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_13/MatMul/ReadVariableOp?
dense_13/MatMulMatMul)batch_normalization_3/batchnorm/add_1:z:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_13/MatMul?
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_13/BiasAdd/ReadVariableOp?
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_13/BiasAdd?
leaky_re_lu_10/LeakyRelu	LeakyReludense_13/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_10/LeakyRelu?
.batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_4/batchnorm/ReadVariableOp?
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_4/batchnorm/add/y?
#batch_normalization_4/batchnorm/addAddV26batch_normalization_4/batchnorm/ReadVariableOp:value:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/add?
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_4/batchnorm/Rsqrt?
2batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_4/batchnorm/mul/ReadVariableOp?
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0:batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/mul?
%batch_normalization_4/batchnorm/mul_1Mul&leaky_re_lu_10/LeakyRelu:activations:0'batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_4/batchnorm/mul_1?
0batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_4/batchnorm/ReadVariableOp_1?
%batch_normalization_4/batchnorm/mul_2Mul8batch_normalization_4/batchnorm/ReadVariableOp_1:value:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_4/batchnorm/mul_2?
0batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_4/batchnorm/ReadVariableOp_2?
#batch_normalization_4/batchnorm/subSub8batch_normalization_4/batchnorm/ReadVariableOp_2:value:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/sub?
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_4/batchnorm/add_1?
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_14/MatMul/ReadVariableOp?
dense_14/MatMulMatMul)batch_normalization_4/batchnorm/add_1:z:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_14/MatMul?
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_14/BiasAdd/ReadVariableOp?
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_14/BiasAdd?
leaky_re_lu_11/LeakyRelu	LeakyReludense_14/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_11/LeakyRelu?
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_5/batchnorm/ReadVariableOp?
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_5/batchnorm/add/y?
#batch_normalization_5/batchnorm/addAddV26batch_normalization_5/batchnorm/ReadVariableOp:value:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/add?
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_5/batchnorm/Rsqrt?
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_5/batchnorm/mul/ReadVariableOp?
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/mul?
%batch_normalization_5/batchnorm/mul_1Mul&leaky_re_lu_11/LeakyRelu:activations:0'batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_5/batchnorm/mul_1?
0batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_5/batchnorm/ReadVariableOp_1?
%batch_normalization_5/batchnorm/mul_2Mul8batch_normalization_5/batchnorm/ReadVariableOp_1:value:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_5/batchnorm/mul_2?
0batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_5/batchnorm/ReadVariableOp_2?
#batch_normalization_5/batchnorm/subSub8batch_normalization_5/batchnorm/ReadVariableOp_2:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/sub?
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_5/batchnorm/add_1?
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02 
dense_15/MatMul/ReadVariableOp?
dense_15/MatMulMatMul)batch_normalization_5/batchnorm/add_1:z:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_15/MatMul?
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02!
dense_15/BiasAdd/ReadVariableOp?
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_15/BiasAddu
dense_15/TanhTanhdense_15/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
dense_15/Tanhc
reshape_1/ShapeShapedense_15/Tanh:y:0*
T0*
_output_shapes
:2
reshape_1/Shape?
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_1/strided_slice/stack?
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_1?
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_2?
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_1/strided_slicey
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_1/Reshape/shape/1y
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_1/Reshape/shape/2x
reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/3?
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_1/Reshape/shape?
reshape_1/ReshapeReshapedense_15/Tanh:y:0 reshape_1/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2
reshape_1/Reshape?
IdentityIdentityreshape_1/Reshape:output:0/^batch_normalization_3/batchnorm/ReadVariableOp1^batch_normalization_3/batchnorm/ReadVariableOp_11^batch_normalization_3/batchnorm/ReadVariableOp_23^batch_normalization_3/batchnorm/mul/ReadVariableOp/^batch_normalization_4/batchnorm/ReadVariableOp1^batch_normalization_4/batchnorm/ReadVariableOp_11^batch_normalization_4/batchnorm/ReadVariableOp_23^batch_normalization_4/batchnorm/mul/ReadVariableOp/^batch_normalization_5/batchnorm/ReadVariableOp1^batch_normalization_5/batchnorm/ReadVariableOp_11^batch_normalization_5/batchnorm/ReadVariableOp_23^batch_normalization_5/batchnorm/mul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2d
0batch_normalization_3/batchnorm/ReadVariableOp_10batch_normalization_3/batchnorm/ReadVariableOp_12d
0batch_normalization_3/batchnorm/ReadVariableOp_20batch_normalization_3/batchnorm/ReadVariableOp_22h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2`
.batch_normalization_4/batchnorm/ReadVariableOp.batch_normalization_4/batchnorm/ReadVariableOp2d
0batch_normalization_4/batchnorm/ReadVariableOp_10batch_normalization_4/batchnorm/ReadVariableOp_12d
0batch_normalization_4/batchnorm/ReadVariableOp_20batch_normalization_4/batchnorm/ReadVariableOp_22h
2batch_normalization_4/batchnorm/mul/ReadVariableOp2batch_normalization_4/batchnorm/mul/ReadVariableOp2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2d
0batch_normalization_5/batchnorm/ReadVariableOp_10batch_normalization_5/batchnorm/ReadVariableOp_12d
0batch_normalization_5/batchnorm/ReadVariableOp_20batch_normalization_5/batchnorm/ReadVariableOp_22h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_5_layer_call_fn_2460674

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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_24585922
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
D__inference_model_4_layer_call_and_return_conditional_losses_2459560

inputs
inputs_1
embedding_3_2459513
sequential_3_2459518
sequential_3_2459520
sequential_3_2459522
sequential_3_2459524
sequential_3_2459526
sequential_3_2459528
sequential_3_2459530
sequential_3_2459532
sequential_3_2459534
sequential_3_2459536
sequential_3_2459538
sequential_3_2459540
sequential_3_2459542
sequential_3_2459544
sequential_3_2459546
sequential_3_2459548
sequential_3_2459550
sequential_3_2459552
sequential_3_2459554
sequential_3_2459556
identity??#embedding_3/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_3_2459513*
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
H__inference_embedding_3_layer_call_and_return_conditional_losses_24591822%
#embedding_3/StatefulPartitionedCall?
flatten_5/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_24592002
flatten_5/PartitionedCall?
multiply_3/PartitionedCallPartitionedCallinputs"flatten_5/PartitionedCall:output:0*
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
G__inference_multiply_3_layer_call_and_return_conditional_losses_24592142
multiply_3/PartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall#multiply_3/PartitionedCall:output:0sequential_3_2459518sequential_3_2459520sequential_3_2459522sequential_3_2459524sequential_3_2459526sequential_3_2459528sequential_3_2459530sequential_3_2459532sequential_3_2459534sequential_3_2459536sequential_3_2459538sequential_3_2459540sequential_3_2459542sequential_3_2459544sequential_3_2459546sequential_3_2459548sequential_3_2459550sequential_3_2459552sequential_3_2459554sequential_3_2459556* 
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_24591252&
$sequential_3/StatefulPartitionedCall?
IdentityIdentity-sequential_3/StatefulPartitionedCall:output:0$^embedding_3/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_3_layer_call_fn_2459068
dense_12_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_24590252
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
_user_specified_namedense_12_input
?
f
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_2458671

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
́
?
I__inference_sequential_3_layer_call_and_return_conditional_losses_2460174

inputs+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource1
-batch_normalization_3_assignmovingavg_24600543
/batch_normalization_3_assignmovingavg_1_2460060?
;batch_normalization_3_batchnorm_mul_readvariableop_resource;
7batch_normalization_3_batchnorm_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource1
-batch_normalization_4_assignmovingavg_24600933
/batch_normalization_4_assignmovingavg_1_2460099?
;batch_normalization_4_batchnorm_mul_readvariableop_resource;
7batch_normalization_4_batchnorm_readvariableop_resource+
'dense_14_matmul_readvariableop_resource,
(dense_14_biasadd_readvariableop_resource1
-batch_normalization_5_assignmovingavg_24601323
/batch_normalization_5_assignmovingavg_1_2460138?
;batch_normalization_5_batchnorm_mul_readvariableop_resource;
7batch_normalization_5_batchnorm_readvariableop_resource+
'dense_15_matmul_readvariableop_resource,
(dense_15_biasadd_readvariableop_resource
identity??9batch_normalization_3/AssignMovingAvg/AssignSubVariableOp?4batch_normalization_3/AssignMovingAvg/ReadVariableOp?;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp?6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_3/batchnorm/ReadVariableOp?2batch_normalization_3/batchnorm/mul/ReadVariableOp?9batch_normalization_4/AssignMovingAvg/AssignSubVariableOp?4batch_normalization_4/AssignMovingAvg/ReadVariableOp?;batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOp?6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_4/batchnorm/ReadVariableOp?2batch_normalization_4/batchnorm/mul/ReadVariableOp?9batch_normalization_5/AssignMovingAvg/AssignSubVariableOp?4batch_normalization_5/AssignMovingAvg/ReadVariableOp?;batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp?6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_5/batchnorm/ReadVariableOp?2batch_normalization_5/batchnorm/mul/ReadVariableOp?dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?dense_13/BiasAdd/ReadVariableOp?dense_13/MatMul/ReadVariableOp?dense_14/BiasAdd/ReadVariableOp?dense_14/MatMul/ReadVariableOp?dense_15/BiasAdd/ReadVariableOp?dense_15/MatMul/ReadVariableOp?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMulinputs&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_12/MatMul?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_12/BiasAdd/ReadVariableOp?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_12/BiasAdd?
leaky_re_lu_9/LeakyRelu	LeakyReludense_12/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_9/LeakyRelu?
4batch_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_3/moments/mean/reduction_indices?
"batch_normalization_3/moments/meanMean%leaky_re_lu_9/LeakyRelu:activations:0=batch_normalization_3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_3/moments/mean?
*batch_normalization_3/moments/StopGradientStopGradient+batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_3/moments/StopGradient?
/batch_normalization_3/moments/SquaredDifferenceSquaredDifference%leaky_re_lu_9/LeakyRelu:activations:03batch_normalization_3/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_3/moments/SquaredDifference?
8batch_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_3/moments/variance/reduction_indices?
&batch_normalization_3/moments/varianceMean3batch_normalization_3/moments/SquaredDifference:z:0Abatch_normalization_3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_3/moments/variance?
%batch_normalization_3/moments/SqueezeSqueeze+batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_3/moments/Squeeze?
'batch_normalization_3/moments/Squeeze_1Squeeze/batch_normalization_3/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_3/moments/Squeeze_1?
+batch_normalization_3/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg/2460054*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+batch_normalization_3/AssignMovingAvg/decay?
4batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_3_assignmovingavg_2460054*
_output_shapes	
:?*
dtype026
4batch_normalization_3/AssignMovingAvg/ReadVariableOp?
)batch_normalization_3/AssignMovingAvg/subSub<batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_3/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg/2460054*
_output_shapes	
:?2+
)batch_normalization_3/AssignMovingAvg/sub?
)batch_normalization_3/AssignMovingAvg/mulMul-batch_normalization_3/AssignMovingAvg/sub:z:04batch_normalization_3/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg/2460054*
_output_shapes	
:?2+
)batch_normalization_3/AssignMovingAvg/mul?
9batch_normalization_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_3_assignmovingavg_2460054-batch_normalization_3/AssignMovingAvg/mul:z:05^batch_normalization_3/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg/2460054*
_output_shapes
 *
dtype02;
9batch_normalization_3/AssignMovingAvg/AssignSubVariableOp?
-batch_normalization_3/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_3/AssignMovingAvg_1/2460060*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-batch_normalization_3/AssignMovingAvg_1/decay?
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_3_assignmovingavg_1_2460060*
_output_shapes	
:?*
dtype028
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_3/AssignMovingAvg_1/subSub>batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_3/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_3/AssignMovingAvg_1/2460060*
_output_shapes	
:?2-
+batch_normalization_3/AssignMovingAvg_1/sub?
+batch_normalization_3/AssignMovingAvg_1/mulMul/batch_normalization_3/AssignMovingAvg_1/sub:z:06batch_normalization_3/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_3/AssignMovingAvg_1/2460060*
_output_shapes	
:?2-
+batch_normalization_3/AssignMovingAvg_1/mul?
;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_3_assignmovingavg_1_2460060/batch_normalization_3/AssignMovingAvg_1/mul:z:07^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_3/AssignMovingAvg_1/2460060*
_output_shapes
 *
dtype02=
;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp?
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_3/batchnorm/add/y?
#batch_normalization_3/batchnorm/addAddV20batch_normalization_3/moments/Squeeze_1:output:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_3/batchnorm/add?
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_3/batchnorm/Rsqrt?
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_3/batchnorm/mul/ReadVariableOp?
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_3/batchnorm/mul?
%batch_normalization_3/batchnorm/mul_1Mul%leaky_re_lu_9/LeakyRelu:activations:0'batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_3/batchnorm/mul_1?
%batch_normalization_3/batchnorm/mul_2Mul.batch_normalization_3/moments/Squeeze:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_3/batchnorm/mul_2?
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_3/batchnorm/ReadVariableOp?
#batch_normalization_3/batchnorm/subSub6batch_normalization_3/batchnorm/ReadVariableOp:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_3/batchnorm/sub?
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_3/batchnorm/add_1?
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_13/MatMul/ReadVariableOp?
dense_13/MatMulMatMul)batch_normalization_3/batchnorm/add_1:z:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_13/MatMul?
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_13/BiasAdd/ReadVariableOp?
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_13/BiasAdd?
leaky_re_lu_10/LeakyRelu	LeakyReludense_13/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_10/LeakyRelu?
4batch_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_4/moments/mean/reduction_indices?
"batch_normalization_4/moments/meanMean&leaky_re_lu_10/LeakyRelu:activations:0=batch_normalization_4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_4/moments/mean?
*batch_normalization_4/moments/StopGradientStopGradient+batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_4/moments/StopGradient?
/batch_normalization_4/moments/SquaredDifferenceSquaredDifference&leaky_re_lu_10/LeakyRelu:activations:03batch_normalization_4/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_4/moments/SquaredDifference?
8batch_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_4/moments/variance/reduction_indices?
&batch_normalization_4/moments/varianceMean3batch_normalization_4/moments/SquaredDifference:z:0Abatch_normalization_4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_4/moments/variance?
%batch_normalization_4/moments/SqueezeSqueeze+batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_4/moments/Squeeze?
'batch_normalization_4/moments/Squeeze_1Squeeze/batch_normalization_4/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_4/moments/Squeeze_1?
+batch_normalization_4/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_4/AssignMovingAvg/2460093*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+batch_normalization_4/AssignMovingAvg/decay?
4batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_4_assignmovingavg_2460093*
_output_shapes	
:?*
dtype026
4batch_normalization_4/AssignMovingAvg/ReadVariableOp?
)batch_normalization_4/AssignMovingAvg/subSub<batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_4/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_4/AssignMovingAvg/2460093*
_output_shapes	
:?2+
)batch_normalization_4/AssignMovingAvg/sub?
)batch_normalization_4/AssignMovingAvg/mulMul-batch_normalization_4/AssignMovingAvg/sub:z:04batch_normalization_4/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_4/AssignMovingAvg/2460093*
_output_shapes	
:?2+
)batch_normalization_4/AssignMovingAvg/mul?
9batch_normalization_4/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_4_assignmovingavg_2460093-batch_normalization_4/AssignMovingAvg/mul:z:05^batch_normalization_4/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_4/AssignMovingAvg/2460093*
_output_shapes
 *
dtype02;
9batch_normalization_4/AssignMovingAvg/AssignSubVariableOp?
-batch_normalization_4/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_4/AssignMovingAvg_1/2460099*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-batch_normalization_4/AssignMovingAvg_1/decay?
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_4_assignmovingavg_1_2460099*
_output_shapes	
:?*
dtype028
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_4/AssignMovingAvg_1/subSub>batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_4/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_4/AssignMovingAvg_1/2460099*
_output_shapes	
:?2-
+batch_normalization_4/AssignMovingAvg_1/sub?
+batch_normalization_4/AssignMovingAvg_1/mulMul/batch_normalization_4/AssignMovingAvg_1/sub:z:06batch_normalization_4/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_4/AssignMovingAvg_1/2460099*
_output_shapes	
:?2-
+batch_normalization_4/AssignMovingAvg_1/mul?
;batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_4_assignmovingavg_1_2460099/batch_normalization_4/AssignMovingAvg_1/mul:z:07^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_4/AssignMovingAvg_1/2460099*
_output_shapes
 *
dtype02=
;batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOp?
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_4/batchnorm/add/y?
#batch_normalization_4/batchnorm/addAddV20batch_normalization_4/moments/Squeeze_1:output:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/add?
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_4/batchnorm/Rsqrt?
2batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_4/batchnorm/mul/ReadVariableOp?
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0:batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/mul?
%batch_normalization_4/batchnorm/mul_1Mul&leaky_re_lu_10/LeakyRelu:activations:0'batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_4/batchnorm/mul_1?
%batch_normalization_4/batchnorm/mul_2Mul.batch_normalization_4/moments/Squeeze:output:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_4/batchnorm/mul_2?
.batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_4/batchnorm/ReadVariableOp?
#batch_normalization_4/batchnorm/subSub6batch_normalization_4/batchnorm/ReadVariableOp:value:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/sub?
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_4/batchnorm/add_1?
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_14/MatMul/ReadVariableOp?
dense_14/MatMulMatMul)batch_normalization_4/batchnorm/add_1:z:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_14/MatMul?
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_14/BiasAdd/ReadVariableOp?
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_14/BiasAdd?
leaky_re_lu_11/LeakyRelu	LeakyReludense_14/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_11/LeakyRelu?
4batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_5/moments/mean/reduction_indices?
"batch_normalization_5/moments/meanMean&leaky_re_lu_11/LeakyRelu:activations:0=batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_5/moments/mean?
*batch_normalization_5/moments/StopGradientStopGradient+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_5/moments/StopGradient?
/batch_normalization_5/moments/SquaredDifferenceSquaredDifference&leaky_re_lu_11/LeakyRelu:activations:03batch_normalization_5/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_5/moments/SquaredDifference?
8batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_5/moments/variance/reduction_indices?
&batch_normalization_5/moments/varianceMean3batch_normalization_5/moments/SquaredDifference:z:0Abatch_normalization_5/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_5/moments/variance?
%batch_normalization_5/moments/SqueezeSqueeze+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_5/moments/Squeeze?
'batch_normalization_5/moments/Squeeze_1Squeeze/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_5/moments/Squeeze_1?
+batch_normalization_5/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_5/AssignMovingAvg/2460132*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+batch_normalization_5/AssignMovingAvg/decay?
4batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_5_assignmovingavg_2460132*
_output_shapes	
:?*
dtype026
4batch_normalization_5/AssignMovingAvg/ReadVariableOp?
)batch_normalization_5/AssignMovingAvg/subSub<batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_5/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_5/AssignMovingAvg/2460132*
_output_shapes	
:?2+
)batch_normalization_5/AssignMovingAvg/sub?
)batch_normalization_5/AssignMovingAvg/mulMul-batch_normalization_5/AssignMovingAvg/sub:z:04batch_normalization_5/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_5/AssignMovingAvg/2460132*
_output_shapes	
:?2+
)batch_normalization_5/AssignMovingAvg/mul?
9batch_normalization_5/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_5_assignmovingavg_2460132-batch_normalization_5/AssignMovingAvg/mul:z:05^batch_normalization_5/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_5/AssignMovingAvg/2460132*
_output_shapes
 *
dtype02;
9batch_normalization_5/AssignMovingAvg/AssignSubVariableOp?
-batch_normalization_5/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_5/AssignMovingAvg_1/2460138*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-batch_normalization_5/AssignMovingAvg_1/decay?
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_5_assignmovingavg_1_2460138*
_output_shapes	
:?*
dtype028
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_5/AssignMovingAvg_1/subSub>batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_5/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_5/AssignMovingAvg_1/2460138*
_output_shapes	
:?2-
+batch_normalization_5/AssignMovingAvg_1/sub?
+batch_normalization_5/AssignMovingAvg_1/mulMul/batch_normalization_5/AssignMovingAvg_1/sub:z:06batch_normalization_5/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_5/AssignMovingAvg_1/2460138*
_output_shapes	
:?2-
+batch_normalization_5/AssignMovingAvg_1/mul?
;batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_5_assignmovingavg_1_2460138/batch_normalization_5/AssignMovingAvg_1/mul:z:07^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_5/AssignMovingAvg_1/2460138*
_output_shapes
 *
dtype02=
;batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp?
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_5/batchnorm/add/y?
#batch_normalization_5/batchnorm/addAddV20batch_normalization_5/moments/Squeeze_1:output:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/add?
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_5/batchnorm/Rsqrt?
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_5/batchnorm/mul/ReadVariableOp?
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/mul?
%batch_normalization_5/batchnorm/mul_1Mul&leaky_re_lu_11/LeakyRelu:activations:0'batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_5/batchnorm/mul_1?
%batch_normalization_5/batchnorm/mul_2Mul.batch_normalization_5/moments/Squeeze:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_5/batchnorm/mul_2?
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_5/batchnorm/ReadVariableOp?
#batch_normalization_5/batchnorm/subSub6batch_normalization_5/batchnorm/ReadVariableOp:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/sub?
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_5/batchnorm/add_1?
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02 
dense_15/MatMul/ReadVariableOp?
dense_15/MatMulMatMul)batch_normalization_5/batchnorm/add_1:z:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_15/MatMul?
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02!
dense_15/BiasAdd/ReadVariableOp?
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_15/BiasAddu
dense_15/TanhTanhdense_15/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
dense_15/Tanhc
reshape_1/ShapeShapedense_15/Tanh:y:0*
T0*
_output_shapes
:2
reshape_1/Shape?
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_1/strided_slice/stack?
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_1?
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_2?
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_1/strided_slicey
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_1/Reshape/shape/1y
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_1/Reshape/shape/2x
reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/3?
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_1/Reshape/shape?
reshape_1/ReshapeReshapedense_15/Tanh:y:0 reshape_1/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2
reshape_1/Reshape?

IdentityIdentityreshape_1/Reshape:output:0:^batch_normalization_3/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_3/AssignMovingAvg/ReadVariableOp<^batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_3/batchnorm/ReadVariableOp3^batch_normalization_3/batchnorm/mul/ReadVariableOp:^batch_normalization_4/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_4/AssignMovingAvg/ReadVariableOp<^batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_4/batchnorm/ReadVariableOp3^batch_normalization_4/batchnorm/mul/ReadVariableOp:^batch_normalization_5/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_5/AssignMovingAvg/ReadVariableOp<^batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_5/batchnorm/ReadVariableOp3^batch_normalization_5/batchnorm/mul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2v
9batch_normalization_3/AssignMovingAvg/AssignSubVariableOp9batch_normalization_3/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_3/AssignMovingAvg/ReadVariableOp4batch_normalization_3/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2v
9batch_normalization_4/AssignMovingAvg/AssignSubVariableOp9batch_normalization_4/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_4/AssignMovingAvg/ReadVariableOp4batch_normalization_4/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_4/batchnorm/ReadVariableOp.batch_normalization_4/batchnorm/ReadVariableOp2h
2batch_normalization_4/batchnorm/mul/ReadVariableOp2batch_normalization_4/batchnorm/mul/ReadVariableOp2v
9batch_normalization_5/AssignMovingAvg/AssignSubVariableOp9batch_normalization_5/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_5/AssignMovingAvg/ReadVariableOp4batch_normalization_5/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_2459655
input_10
input_9
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
StatefulPartitionedCallStatefulPartitionedCallinput_9input_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_24582162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????:?????????d:::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_10:PL
'
_output_shapes
:?????????d
!
_user_specified_name	input_9
?
?
)__inference_model_4_layer_call_fn_2459605
input_9
input_10
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
StatefulPartitionedCallStatefulPartitionedCallinput_9input_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_24595602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_9:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_10
?
b
F__inference_reshape_1_layer_call_and_return_conditional_losses_2460721

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
?4
?

 __inference__traced_save_2460813
file_prefix5
1savev2_embedding_3_embeddings_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop:
6savev2_batch_normalization_4_gamma_read_readvariableop9
5savev2_batch_normalization_4_beta_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop:
6savev2_batch_normalization_5_gamma_read_readvariableop9
5savev2_batch_normalization_5_beta_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop@
<savev2_batch_normalization_4_moving_mean_read_readvariableopD
@savev2_batch_normalization_4_moving_variance_read_readvariableop@
<savev2_batch_normalization_5_moving_mean_read_readvariableopD
@savev2_batch_normalization_5_moving_variance_read_readvariableop
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

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_3_embeddings_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop6savev2_batch_normalization_4_gamma_read_readvariableop5savev2_batch_normalization_4_beta_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop6savev2_batch_normalization_5_gamma_read_readvariableop5savev2_batch_normalization_5_beta_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop<savev2_batch_normalization_4_moving_mean_read_readvariableop@savev2_batch_normalization_4_moving_variance_read_readvariableop<savev2_batch_normalization_5_moving_mean_read_readvariableop@savev2_batch_normalization_5_moving_variance_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :	?d:	d?:?:?:?:
??:?:?:?:
??:?:?:?:???:??:?:?:?:?:?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?d:%!

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
?0
?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2460641

inputs
assignmovingavg_2460616
assignmovingavg_1_2460622)
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
loc:@AssignMovingAvg/2460616*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_2460616*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/2460616*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/2460616*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2460616AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/2460616*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/2460622*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_2460622*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2460622*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2460622*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_2460622AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/2460622*
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
?
g
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_2460489

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
?
)__inference_model_4_layer_call_fn_2459949
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
GPU2*0J 8? *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_24594612
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
?	
?
E__inference_dense_13_layer_call_and_return_conditional_losses_2460475

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
??
?
D__inference_model_4_layer_call_and_return_conditional_losses_2459802
inputs_0
inputs_1(
$embedding_3_embedding_lookup_24596598
4sequential_3_dense_12_matmul_readvariableop_resource9
5sequential_3_dense_12_biasadd_readvariableop_resource>
:sequential_3_batch_normalization_3_assignmovingavg_2459682@
<sequential_3_batch_normalization_3_assignmovingavg_1_2459688L
Hsequential_3_batch_normalization_3_batchnorm_mul_readvariableop_resourceH
Dsequential_3_batch_normalization_3_batchnorm_readvariableop_resource8
4sequential_3_dense_13_matmul_readvariableop_resource9
5sequential_3_dense_13_biasadd_readvariableop_resource>
:sequential_3_batch_normalization_4_assignmovingavg_2459721@
<sequential_3_batch_normalization_4_assignmovingavg_1_2459727L
Hsequential_3_batch_normalization_4_batchnorm_mul_readvariableop_resourceH
Dsequential_3_batch_normalization_4_batchnorm_readvariableop_resource8
4sequential_3_dense_14_matmul_readvariableop_resource9
5sequential_3_dense_14_biasadd_readvariableop_resource>
:sequential_3_batch_normalization_5_assignmovingavg_2459760@
<sequential_3_batch_normalization_5_assignmovingavg_1_2459766L
Hsequential_3_batch_normalization_5_batchnorm_mul_readvariableop_resourceH
Dsequential_3_batch_normalization_5_batchnorm_readvariableop_resource8
4sequential_3_dense_15_matmul_readvariableop_resource9
5sequential_3_dense_15_biasadd_readvariableop_resource
identity??embedding_3/embedding_lookup?Fsequential_3/batch_normalization_3/AssignMovingAvg/AssignSubVariableOp?Asequential_3/batch_normalization_3/AssignMovingAvg/ReadVariableOp?Hsequential_3/batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp?Csequential_3/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp?;sequential_3/batch_normalization_3/batchnorm/ReadVariableOp??sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp?Fsequential_3/batch_normalization_4/AssignMovingAvg/AssignSubVariableOp?Asequential_3/batch_normalization_4/AssignMovingAvg/ReadVariableOp?Hsequential_3/batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOp?Csequential_3/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?;sequential_3/batch_normalization_4/batchnorm/ReadVariableOp??sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp?Fsequential_3/batch_normalization_5/AssignMovingAvg/AssignSubVariableOp?Asequential_3/batch_normalization_5/AssignMovingAvg/ReadVariableOp?Hsequential_3/batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp?Csequential_3/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp?;sequential_3/batch_normalization_5/batchnorm/ReadVariableOp??sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp?,sequential_3/dense_12/BiasAdd/ReadVariableOp?+sequential_3/dense_12/MatMul/ReadVariableOp?,sequential_3/dense_13/BiasAdd/ReadVariableOp?+sequential_3/dense_13/MatMul/ReadVariableOp?,sequential_3/dense_14/BiasAdd/ReadVariableOp?+sequential_3/dense_14/MatMul/ReadVariableOp?,sequential_3/dense_15/BiasAdd/ReadVariableOp?+sequential_3/dense_15/MatMul/ReadVariableOp?
embedding_3/embedding_lookupResourceGather$embedding_3_embedding_lookup_2459659inputs_1",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_3/embedding_lookup/2459659*+
_output_shapes
:?????????d*
dtype02
embedding_3/embedding_lookup?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_3/embedding_lookup/2459659*+
_output_shapes
:?????????d2'
%embedding_3/embedding_lookup/Identity?
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2)
'embedding_3/embedding_lookup/Identity_1s
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"????d   2
flatten_5/Const?
flatten_5/ReshapeReshape0embedding_3/embedding_lookup/Identity_1:output:0flatten_5/Const:output:0*
T0*'
_output_shapes
:?????????d2
flatten_5/Reshape
multiply_3/mulMulinputs_0flatten_5/Reshape:output:0*
T0*'
_output_shapes
:?????????d2
multiply_3/mul?
+sequential_3/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_12_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02-
+sequential_3/dense_12/MatMul/ReadVariableOp?
sequential_3/dense_12/MatMulMatMulmultiply_3/mul:z:03sequential_3/dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_3/dense_12/MatMul?
,sequential_3/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_3/dense_12/BiasAdd/ReadVariableOp?
sequential_3/dense_12/BiasAddBiasAdd&sequential_3/dense_12/MatMul:product:04sequential_3/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_3/dense_12/BiasAdd?
$sequential_3/leaky_re_lu_9/LeakyRelu	LeakyRelu&sequential_3/dense_12/BiasAdd:output:0*(
_output_shapes
:??????????2&
$sequential_3/leaky_re_lu_9/LeakyRelu?
Asequential_3/batch_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2C
Asequential_3/batch_normalization_3/moments/mean/reduction_indices?
/sequential_3/batch_normalization_3/moments/meanMean2sequential_3/leaky_re_lu_9/LeakyRelu:activations:0Jsequential_3/batch_normalization_3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(21
/sequential_3/batch_normalization_3/moments/mean?
7sequential_3/batch_normalization_3/moments/StopGradientStopGradient8sequential_3/batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes
:	?29
7sequential_3/batch_normalization_3/moments/StopGradient?
<sequential_3/batch_normalization_3/moments/SquaredDifferenceSquaredDifference2sequential_3/leaky_re_lu_9/LeakyRelu:activations:0@sequential_3/batch_normalization_3/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2>
<sequential_3/batch_normalization_3/moments/SquaredDifference?
Esequential_3/batch_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2G
Esequential_3/batch_normalization_3/moments/variance/reduction_indices?
3sequential_3/batch_normalization_3/moments/varianceMean@sequential_3/batch_normalization_3/moments/SquaredDifference:z:0Nsequential_3/batch_normalization_3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(25
3sequential_3/batch_normalization_3/moments/variance?
2sequential_3/batch_normalization_3/moments/SqueezeSqueeze8sequential_3/batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 24
2sequential_3/batch_normalization_3/moments/Squeeze?
4sequential_3/batch_normalization_3/moments/Squeeze_1Squeeze<sequential_3/batch_normalization_3/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 26
4sequential_3/batch_normalization_3/moments/Squeeze_1?
8sequential_3/batch_normalization_3/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_3/batch_normalization_3/AssignMovingAvg/2459682*
_output_shapes
: *
dtype0*
valueB
 *??L>2:
8sequential_3/batch_normalization_3/AssignMovingAvg/decay?
Asequential_3/batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOp:sequential_3_batch_normalization_3_assignmovingavg_2459682*
_output_shapes	
:?*
dtype02C
Asequential_3/batch_normalization_3/AssignMovingAvg/ReadVariableOp?
6sequential_3/batch_normalization_3/AssignMovingAvg/subSubIsequential_3/batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:0;sequential_3/batch_normalization_3/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_3/batch_normalization_3/AssignMovingAvg/2459682*
_output_shapes	
:?28
6sequential_3/batch_normalization_3/AssignMovingAvg/sub?
6sequential_3/batch_normalization_3/AssignMovingAvg/mulMul:sequential_3/batch_normalization_3/AssignMovingAvg/sub:z:0Asequential_3/batch_normalization_3/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_3/batch_normalization_3/AssignMovingAvg/2459682*
_output_shapes	
:?28
6sequential_3/batch_normalization_3/AssignMovingAvg/mul?
Fsequential_3/batch_normalization_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp:sequential_3_batch_normalization_3_assignmovingavg_2459682:sequential_3/batch_normalization_3/AssignMovingAvg/mul:z:0B^sequential_3/batch_normalization_3/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_3/batch_normalization_3/AssignMovingAvg/2459682*
_output_shapes
 *
dtype02H
Fsequential_3/batch_normalization_3/AssignMovingAvg/AssignSubVariableOp?
:sequential_3/batch_normalization_3/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_3/batch_normalization_3/AssignMovingAvg_1/2459688*
_output_shapes
: *
dtype0*
valueB
 *??L>2<
:sequential_3/batch_normalization_3/AssignMovingAvg_1/decay?
Csequential_3/batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp<sequential_3_batch_normalization_3_assignmovingavg_1_2459688*
_output_shapes	
:?*
dtype02E
Csequential_3/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp?
8sequential_3/batch_normalization_3/AssignMovingAvg_1/subSubKsequential_3/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:0=sequential_3/batch_normalization_3/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_3/batch_normalization_3/AssignMovingAvg_1/2459688*
_output_shapes	
:?2:
8sequential_3/batch_normalization_3/AssignMovingAvg_1/sub?
8sequential_3/batch_normalization_3/AssignMovingAvg_1/mulMul<sequential_3/batch_normalization_3/AssignMovingAvg_1/sub:z:0Csequential_3/batch_normalization_3/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_3/batch_normalization_3/AssignMovingAvg_1/2459688*
_output_shapes	
:?2:
8sequential_3/batch_normalization_3/AssignMovingAvg_1/mul?
Hsequential_3/batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp<sequential_3_batch_normalization_3_assignmovingavg_1_2459688<sequential_3/batch_normalization_3/AssignMovingAvg_1/mul:z:0D^sequential_3/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_3/batch_normalization_3/AssignMovingAvg_1/2459688*
_output_shapes
 *
dtype02J
Hsequential_3/batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp?
2sequential_3/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_3/batch_normalization_3/batchnorm/add/y?
0sequential_3/batch_normalization_3/batchnorm/addAddV2=sequential_3/batch_normalization_3/moments/Squeeze_1:output:0;sequential_3/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_3/batchnorm/add?
2sequential_3/batch_normalization_3/batchnorm/RsqrtRsqrt4sequential_3/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_3/batch_normalization_3/batchnorm/Rsqrt?
?sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_3_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp?
0sequential_3/batch_normalization_3/batchnorm/mulMul6sequential_3/batch_normalization_3/batchnorm/Rsqrt:y:0Gsequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_3/batchnorm/mul?
2sequential_3/batch_normalization_3/batchnorm/mul_1Mul2sequential_3/leaky_re_lu_9/LeakyRelu:activations:04sequential_3/batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_3/batch_normalization_3/batchnorm/mul_1?
2sequential_3/batch_normalization_3/batchnorm/mul_2Mul;sequential_3/batch_normalization_3/moments/Squeeze:output:04sequential_3/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_3/batch_normalization_3/batchnorm/mul_2?
;sequential_3/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpDsequential_3_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_3/batch_normalization_3/batchnorm/ReadVariableOp?
0sequential_3/batch_normalization_3/batchnorm/subSubCsequential_3/batch_normalization_3/batchnorm/ReadVariableOp:value:06sequential_3/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_3/batchnorm/sub?
2sequential_3/batch_normalization_3/batchnorm/add_1AddV26sequential_3/batch_normalization_3/batchnorm/mul_1:z:04sequential_3/batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_3/batch_normalization_3/batchnorm/add_1?
+sequential_3/dense_13/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_13_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_3/dense_13/MatMul/ReadVariableOp?
sequential_3/dense_13/MatMulMatMul6sequential_3/batch_normalization_3/batchnorm/add_1:z:03sequential_3/dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_3/dense_13/MatMul?
,sequential_3/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_3/dense_13/BiasAdd/ReadVariableOp?
sequential_3/dense_13/BiasAddBiasAdd&sequential_3/dense_13/MatMul:product:04sequential_3/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_3/dense_13/BiasAdd?
%sequential_3/leaky_re_lu_10/LeakyRelu	LeakyRelu&sequential_3/dense_13/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_3/leaky_re_lu_10/LeakyRelu?
Asequential_3/batch_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2C
Asequential_3/batch_normalization_4/moments/mean/reduction_indices?
/sequential_3/batch_normalization_4/moments/meanMean3sequential_3/leaky_re_lu_10/LeakyRelu:activations:0Jsequential_3/batch_normalization_4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(21
/sequential_3/batch_normalization_4/moments/mean?
7sequential_3/batch_normalization_4/moments/StopGradientStopGradient8sequential_3/batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes
:	?29
7sequential_3/batch_normalization_4/moments/StopGradient?
<sequential_3/batch_normalization_4/moments/SquaredDifferenceSquaredDifference3sequential_3/leaky_re_lu_10/LeakyRelu:activations:0@sequential_3/batch_normalization_4/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2>
<sequential_3/batch_normalization_4/moments/SquaredDifference?
Esequential_3/batch_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2G
Esequential_3/batch_normalization_4/moments/variance/reduction_indices?
3sequential_3/batch_normalization_4/moments/varianceMean@sequential_3/batch_normalization_4/moments/SquaredDifference:z:0Nsequential_3/batch_normalization_4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(25
3sequential_3/batch_normalization_4/moments/variance?
2sequential_3/batch_normalization_4/moments/SqueezeSqueeze8sequential_3/batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 24
2sequential_3/batch_normalization_4/moments/Squeeze?
4sequential_3/batch_normalization_4/moments/Squeeze_1Squeeze<sequential_3/batch_normalization_4/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 26
4sequential_3/batch_normalization_4/moments/Squeeze_1?
8sequential_3/batch_normalization_4/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_3/batch_normalization_4/AssignMovingAvg/2459721*
_output_shapes
: *
dtype0*
valueB
 *??L>2:
8sequential_3/batch_normalization_4/AssignMovingAvg/decay?
Asequential_3/batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOp:sequential_3_batch_normalization_4_assignmovingavg_2459721*
_output_shapes	
:?*
dtype02C
Asequential_3/batch_normalization_4/AssignMovingAvg/ReadVariableOp?
6sequential_3/batch_normalization_4/AssignMovingAvg/subSubIsequential_3/batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0;sequential_3/batch_normalization_4/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_3/batch_normalization_4/AssignMovingAvg/2459721*
_output_shapes	
:?28
6sequential_3/batch_normalization_4/AssignMovingAvg/sub?
6sequential_3/batch_normalization_4/AssignMovingAvg/mulMul:sequential_3/batch_normalization_4/AssignMovingAvg/sub:z:0Asequential_3/batch_normalization_4/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_3/batch_normalization_4/AssignMovingAvg/2459721*
_output_shapes	
:?28
6sequential_3/batch_normalization_4/AssignMovingAvg/mul?
Fsequential_3/batch_normalization_4/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp:sequential_3_batch_normalization_4_assignmovingavg_2459721:sequential_3/batch_normalization_4/AssignMovingAvg/mul:z:0B^sequential_3/batch_normalization_4/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_3/batch_normalization_4/AssignMovingAvg/2459721*
_output_shapes
 *
dtype02H
Fsequential_3/batch_normalization_4/AssignMovingAvg/AssignSubVariableOp?
:sequential_3/batch_normalization_4/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_3/batch_normalization_4/AssignMovingAvg_1/2459727*
_output_shapes
: *
dtype0*
valueB
 *??L>2<
:sequential_3/batch_normalization_4/AssignMovingAvg_1/decay?
Csequential_3/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOp<sequential_3_batch_normalization_4_assignmovingavg_1_2459727*
_output_shapes	
:?*
dtype02E
Csequential_3/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?
8sequential_3/batch_normalization_4/AssignMovingAvg_1/subSubKsequential_3/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:0=sequential_3/batch_normalization_4/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_3/batch_normalization_4/AssignMovingAvg_1/2459727*
_output_shapes	
:?2:
8sequential_3/batch_normalization_4/AssignMovingAvg_1/sub?
8sequential_3/batch_normalization_4/AssignMovingAvg_1/mulMul<sequential_3/batch_normalization_4/AssignMovingAvg_1/sub:z:0Csequential_3/batch_normalization_4/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_3/batch_normalization_4/AssignMovingAvg_1/2459727*
_output_shapes	
:?2:
8sequential_3/batch_normalization_4/AssignMovingAvg_1/mul?
Hsequential_3/batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp<sequential_3_batch_normalization_4_assignmovingavg_1_2459727<sequential_3/batch_normalization_4/AssignMovingAvg_1/mul:z:0D^sequential_3/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_3/batch_normalization_4/AssignMovingAvg_1/2459727*
_output_shapes
 *
dtype02J
Hsequential_3/batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOp?
2sequential_3/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_3/batch_normalization_4/batchnorm/add/y?
0sequential_3/batch_normalization_4/batchnorm/addAddV2=sequential_3/batch_normalization_4/moments/Squeeze_1:output:0;sequential_3/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_4/batchnorm/add?
2sequential_3/batch_normalization_4/batchnorm/RsqrtRsqrt4sequential_3/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_3/batch_normalization_4/batchnorm/Rsqrt?
?sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_3_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp?
0sequential_3/batch_normalization_4/batchnorm/mulMul6sequential_3/batch_normalization_4/batchnorm/Rsqrt:y:0Gsequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_4/batchnorm/mul?
2sequential_3/batch_normalization_4/batchnorm/mul_1Mul3sequential_3/leaky_re_lu_10/LeakyRelu:activations:04sequential_3/batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_3/batch_normalization_4/batchnorm/mul_1?
2sequential_3/batch_normalization_4/batchnorm/mul_2Mul;sequential_3/batch_normalization_4/moments/Squeeze:output:04sequential_3/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_3/batch_normalization_4/batchnorm/mul_2?
;sequential_3/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpDsequential_3_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_3/batch_normalization_4/batchnorm/ReadVariableOp?
0sequential_3/batch_normalization_4/batchnorm/subSubCsequential_3/batch_normalization_4/batchnorm/ReadVariableOp:value:06sequential_3/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_4/batchnorm/sub?
2sequential_3/batch_normalization_4/batchnorm/add_1AddV26sequential_3/batch_normalization_4/batchnorm/mul_1:z:04sequential_3/batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_3/batch_normalization_4/batchnorm/add_1?
+sequential_3/dense_14/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_14_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_3/dense_14/MatMul/ReadVariableOp?
sequential_3/dense_14/MatMulMatMul6sequential_3/batch_normalization_4/batchnorm/add_1:z:03sequential_3/dense_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_3/dense_14/MatMul?
,sequential_3/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_3/dense_14/BiasAdd/ReadVariableOp?
sequential_3/dense_14/BiasAddBiasAdd&sequential_3/dense_14/MatMul:product:04sequential_3/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_3/dense_14/BiasAdd?
%sequential_3/leaky_re_lu_11/LeakyRelu	LeakyRelu&sequential_3/dense_14/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_3/leaky_re_lu_11/LeakyRelu?
Asequential_3/batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2C
Asequential_3/batch_normalization_5/moments/mean/reduction_indices?
/sequential_3/batch_normalization_5/moments/meanMean3sequential_3/leaky_re_lu_11/LeakyRelu:activations:0Jsequential_3/batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(21
/sequential_3/batch_normalization_5/moments/mean?
7sequential_3/batch_normalization_5/moments/StopGradientStopGradient8sequential_3/batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:	?29
7sequential_3/batch_normalization_5/moments/StopGradient?
<sequential_3/batch_normalization_5/moments/SquaredDifferenceSquaredDifference3sequential_3/leaky_re_lu_11/LeakyRelu:activations:0@sequential_3/batch_normalization_5/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2>
<sequential_3/batch_normalization_5/moments/SquaredDifference?
Esequential_3/batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2G
Esequential_3/batch_normalization_5/moments/variance/reduction_indices?
3sequential_3/batch_normalization_5/moments/varianceMean@sequential_3/batch_normalization_5/moments/SquaredDifference:z:0Nsequential_3/batch_normalization_5/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(25
3sequential_3/batch_normalization_5/moments/variance?
2sequential_3/batch_normalization_5/moments/SqueezeSqueeze8sequential_3/batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 24
2sequential_3/batch_normalization_5/moments/Squeeze?
4sequential_3/batch_normalization_5/moments/Squeeze_1Squeeze<sequential_3/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 26
4sequential_3/batch_normalization_5/moments/Squeeze_1?
8sequential_3/batch_normalization_5/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_3/batch_normalization_5/AssignMovingAvg/2459760*
_output_shapes
: *
dtype0*
valueB
 *??L>2:
8sequential_3/batch_normalization_5/AssignMovingAvg/decay?
Asequential_3/batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp:sequential_3_batch_normalization_5_assignmovingavg_2459760*
_output_shapes	
:?*
dtype02C
Asequential_3/batch_normalization_5/AssignMovingAvg/ReadVariableOp?
6sequential_3/batch_normalization_5/AssignMovingAvg/subSubIsequential_3/batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0;sequential_3/batch_normalization_5/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_3/batch_normalization_5/AssignMovingAvg/2459760*
_output_shapes	
:?28
6sequential_3/batch_normalization_5/AssignMovingAvg/sub?
6sequential_3/batch_normalization_5/AssignMovingAvg/mulMul:sequential_3/batch_normalization_5/AssignMovingAvg/sub:z:0Asequential_3/batch_normalization_5/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_3/batch_normalization_5/AssignMovingAvg/2459760*
_output_shapes	
:?28
6sequential_3/batch_normalization_5/AssignMovingAvg/mul?
Fsequential_3/batch_normalization_5/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp:sequential_3_batch_normalization_5_assignmovingavg_2459760:sequential_3/batch_normalization_5/AssignMovingAvg/mul:z:0B^sequential_3/batch_normalization_5/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_3/batch_normalization_5/AssignMovingAvg/2459760*
_output_shapes
 *
dtype02H
Fsequential_3/batch_normalization_5/AssignMovingAvg/AssignSubVariableOp?
:sequential_3/batch_normalization_5/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_3/batch_normalization_5/AssignMovingAvg_1/2459766*
_output_shapes
: *
dtype0*
valueB
 *??L>2<
:sequential_3/batch_normalization_5/AssignMovingAvg_1/decay?
Csequential_3/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp<sequential_3_batch_normalization_5_assignmovingavg_1_2459766*
_output_shapes	
:?*
dtype02E
Csequential_3/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp?
8sequential_3/batch_normalization_5/AssignMovingAvg_1/subSubKsequential_3/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:0=sequential_3/batch_normalization_5/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_3/batch_normalization_5/AssignMovingAvg_1/2459766*
_output_shapes	
:?2:
8sequential_3/batch_normalization_5/AssignMovingAvg_1/sub?
8sequential_3/batch_normalization_5/AssignMovingAvg_1/mulMul<sequential_3/batch_normalization_5/AssignMovingAvg_1/sub:z:0Csequential_3/batch_normalization_5/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_3/batch_normalization_5/AssignMovingAvg_1/2459766*
_output_shapes	
:?2:
8sequential_3/batch_normalization_5/AssignMovingAvg_1/mul?
Hsequential_3/batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp<sequential_3_batch_normalization_5_assignmovingavg_1_2459766<sequential_3/batch_normalization_5/AssignMovingAvg_1/mul:z:0D^sequential_3/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_3/batch_normalization_5/AssignMovingAvg_1/2459766*
_output_shapes
 *
dtype02J
Hsequential_3/batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp?
2sequential_3/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_3/batch_normalization_5/batchnorm/add/y?
0sequential_3/batch_normalization_5/batchnorm/addAddV2=sequential_3/batch_normalization_5/moments/Squeeze_1:output:0;sequential_3/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_5/batchnorm/add?
2sequential_3/batch_normalization_5/batchnorm/RsqrtRsqrt4sequential_3/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_3/batch_normalization_5/batchnorm/Rsqrt?
?sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_3_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp?
0sequential_3/batch_normalization_5/batchnorm/mulMul6sequential_3/batch_normalization_5/batchnorm/Rsqrt:y:0Gsequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_5/batchnorm/mul?
2sequential_3/batch_normalization_5/batchnorm/mul_1Mul3sequential_3/leaky_re_lu_11/LeakyRelu:activations:04sequential_3/batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_3/batch_normalization_5/batchnorm/mul_1?
2sequential_3/batch_normalization_5/batchnorm/mul_2Mul;sequential_3/batch_normalization_5/moments/Squeeze:output:04sequential_3/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_3/batch_normalization_5/batchnorm/mul_2?
;sequential_3/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpDsequential_3_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_3/batch_normalization_5/batchnorm/ReadVariableOp?
0sequential_3/batch_normalization_5/batchnorm/subSubCsequential_3/batch_normalization_5/batchnorm/ReadVariableOp:value:06sequential_3/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_3/batch_normalization_5/batchnorm/sub?
2sequential_3/batch_normalization_5/batchnorm/add_1AddV26sequential_3/batch_normalization_5/batchnorm/mul_1:z:04sequential_3/batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_3/batch_normalization_5/batchnorm/add_1?
+sequential_3/dense_15/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_15_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02-
+sequential_3/dense_15/MatMul/ReadVariableOp?
sequential_3/dense_15/MatMulMatMul6sequential_3/batch_normalization_5/batchnorm/add_1:z:03sequential_3/dense_15/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_3/dense_15/MatMul?
,sequential_3/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_15_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02.
,sequential_3/dense_15/BiasAdd/ReadVariableOp?
sequential_3/dense_15/BiasAddBiasAdd&sequential_3/dense_15/MatMul:product:04sequential_3/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_3/dense_15/BiasAdd?
sequential_3/dense_15/TanhTanh&sequential_3/dense_15/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
sequential_3/dense_15/Tanh?
sequential_3/reshape_1/ShapeShapesequential_3/dense_15/Tanh:y:0*
T0*
_output_shapes
:2
sequential_3/reshape_1/Shape?
*sequential_3/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_3/reshape_1/strided_slice/stack?
,sequential_3/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/reshape_1/strided_slice/stack_1?
,sequential_3/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/reshape_1/strided_slice/stack_2?
$sequential_3/reshape_1/strided_sliceStridedSlice%sequential_3/reshape_1/Shape:output:03sequential_3/reshape_1/strided_slice/stack:output:05sequential_3/reshape_1/strided_slice/stack_1:output:05sequential_3/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_3/reshape_1/strided_slice?
&sequential_3/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_3/reshape_1/Reshape/shape/1?
&sequential_3/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_3/reshape_1/Reshape/shape/2?
&sequential_3/reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_3/reshape_1/Reshape/shape/3?
$sequential_3/reshape_1/Reshape/shapePack-sequential_3/reshape_1/strided_slice:output:0/sequential_3/reshape_1/Reshape/shape/1:output:0/sequential_3/reshape_1/Reshape/shape/2:output:0/sequential_3/reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$sequential_3/reshape_1/Reshape/shape?
sequential_3/reshape_1/ReshapeReshapesequential_3/dense_15/Tanh:y:0-sequential_3/reshape_1/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2 
sequential_3/reshape_1/Reshape?
IdentityIdentity'sequential_3/reshape_1/Reshape:output:0^embedding_3/embedding_lookupG^sequential_3/batch_normalization_3/AssignMovingAvg/AssignSubVariableOpB^sequential_3/batch_normalization_3/AssignMovingAvg/ReadVariableOpI^sequential_3/batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOpD^sequential_3/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp<^sequential_3/batch_normalization_3/batchnorm/ReadVariableOp@^sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOpG^sequential_3/batch_normalization_4/AssignMovingAvg/AssignSubVariableOpB^sequential_3/batch_normalization_4/AssignMovingAvg/ReadVariableOpI^sequential_3/batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOpD^sequential_3/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp<^sequential_3/batch_normalization_4/batchnorm/ReadVariableOp@^sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOpG^sequential_3/batch_normalization_5/AssignMovingAvg/AssignSubVariableOpB^sequential_3/batch_normalization_5/AssignMovingAvg/ReadVariableOpI^sequential_3/batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOpD^sequential_3/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp<^sequential_3/batch_normalization_5/batchnorm/ReadVariableOp@^sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp-^sequential_3/dense_12/BiasAdd/ReadVariableOp,^sequential_3/dense_12/MatMul/ReadVariableOp-^sequential_3/dense_13/BiasAdd/ReadVariableOp,^sequential_3/dense_13/MatMul/ReadVariableOp-^sequential_3/dense_14/BiasAdd/ReadVariableOp,^sequential_3/dense_14/MatMul/ReadVariableOp-^sequential_3/dense_15/BiasAdd/ReadVariableOp,^sequential_3/dense_15/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2?
Fsequential_3/batch_normalization_3/AssignMovingAvg/AssignSubVariableOpFsequential_3/batch_normalization_3/AssignMovingAvg/AssignSubVariableOp2?
Asequential_3/batch_normalization_3/AssignMovingAvg/ReadVariableOpAsequential_3/batch_normalization_3/AssignMovingAvg/ReadVariableOp2?
Hsequential_3/batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOpHsequential_3/batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp2?
Csequential_3/batch_normalization_3/AssignMovingAvg_1/ReadVariableOpCsequential_3/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp2z
;sequential_3/batch_normalization_3/batchnorm/ReadVariableOp;sequential_3/batch_normalization_3/batchnorm/ReadVariableOp2?
?sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp?sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp2?
Fsequential_3/batch_normalization_4/AssignMovingAvg/AssignSubVariableOpFsequential_3/batch_normalization_4/AssignMovingAvg/AssignSubVariableOp2?
Asequential_3/batch_normalization_4/AssignMovingAvg/ReadVariableOpAsequential_3/batch_normalization_4/AssignMovingAvg/ReadVariableOp2?
Hsequential_3/batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOpHsequential_3/batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOp2?
Csequential_3/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpCsequential_3/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp2z
;sequential_3/batch_normalization_4/batchnorm/ReadVariableOp;sequential_3/batch_normalization_4/batchnorm/ReadVariableOp2?
?sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp?sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp2?
Fsequential_3/batch_normalization_5/AssignMovingAvg/AssignSubVariableOpFsequential_3/batch_normalization_5/AssignMovingAvg/AssignSubVariableOp2?
Asequential_3/batch_normalization_5/AssignMovingAvg/ReadVariableOpAsequential_3/batch_normalization_5/AssignMovingAvg/ReadVariableOp2?
Hsequential_3/batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOpHsequential_3/batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp2?
Csequential_3/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpCsequential_3/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2z
;sequential_3/batch_normalization_5/batchnorm/ReadVariableOp;sequential_3/batch_normalization_5/batchnorm/ReadVariableOp2?
?sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp?sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp2\
,sequential_3/dense_12/BiasAdd/ReadVariableOp,sequential_3/dense_12/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_12/MatMul/ReadVariableOp+sequential_3/dense_12/MatMul/ReadVariableOp2\
,sequential_3/dense_13/BiasAdd/ReadVariableOp,sequential_3/dense_13/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_13/MatMul/ReadVariableOp+sequential_3/dense_13/MatMul/ReadVariableOp2\
,sequential_3/dense_14/BiasAdd/ReadVariableOp,sequential_3/dense_14/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_14/MatMul/ReadVariableOp+sequential_3/dense_14/MatMul/ReadVariableOp2\
,sequential_3/dense_15/BiasAdd/ReadVariableOp,sequential_3/dense_15/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_15/MatMul/ReadVariableOp+sequential_3/dense_15/MatMul/ReadVariableOp:Q M
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
?	
?
E__inference_dense_13_layer_call_and_return_conditional_losses_2458724

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
?9
?
I__inference_sequential_3_layer_call_and_return_conditional_losses_2459025

inputs
dense_12_2458973
dense_12_2458975!
batch_normalization_3_2458979!
batch_normalization_3_2458981!
batch_normalization_3_2458983!
batch_normalization_3_2458985
dense_13_2458988
dense_13_2458990!
batch_normalization_4_2458994!
batch_normalization_4_2458996!
batch_normalization_4_2458998!
batch_normalization_4_2459000
dense_14_2459003
dense_14_2459005!
batch_normalization_5_2459009!
batch_normalization_5_2459011!
batch_normalization_5_2459013!
batch_normalization_5_2459015
dense_15_2459018
dense_15_2459020
identity??-batch_normalization_3/StatefulPartitionedCall?-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCallinputsdense_12_2458973dense_12_2458975*
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
E__inference_dense_12_layer_call_and_return_conditional_losses_24586502"
 dense_12/StatefulPartitionedCall?
leaky_re_lu_9/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_24586712
leaky_re_lu_9/PartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0batch_normalization_3_2458979batch_normalization_3_2458981batch_normalization_3_2458983batch_normalization_3_2458985*
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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_24583122/
-batch_normalization_3/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0dense_13_2458988dense_13_2458990*
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
E__inference_dense_13_layer_call_and_return_conditional_losses_24587242"
 dense_13/StatefulPartitionedCall?
leaky_re_lu_10/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_24587452 
leaky_re_lu_10/PartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0batch_normalization_4_2458994batch_normalization_4_2458996batch_normalization_4_2458998batch_normalization_4_2459000*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_24584522/
-batch_normalization_4/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_14_2459003dense_14_2459005*
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
E__inference_dense_14_layer_call_and_return_conditional_losses_24587982"
 dense_14/StatefulPartitionedCall?
leaky_re_lu_11/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_24588192 
leaky_re_lu_11/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0batch_normalization_5_2459009batch_normalization_5_2459011batch_normalization_5_2459013batch_normalization_5_2459015*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_24585922/
-batch_normalization_5/StatefulPartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_15_2459018dense_15_2459020*
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
E__inference_dense_15_layer_call_and_return_conditional_losses_24588732"
 dense_15/StatefulPartitionedCall?
reshape_1/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
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
F__inference_reshape_1_layer_call_and_return_conditional_losses_24589032
reshape_1/PartitionedCall?
IdentityIdentity"reshape_1/PartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?0
?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2458312

inputs
assignmovingavg_2458287
assignmovingavg_1_2458293)
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
loc:@AssignMovingAvg/2458287*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_2458287*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/2458287*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/2458287*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2458287AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/2458287*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/2458293*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_2458293*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2458293*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2458293*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_2458293AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/2458293*
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
?
?
D__inference_model_4_layer_call_and_return_conditional_losses_2459406
input_9
input_10
embedding_3_2459359
sequential_3_2459364
sequential_3_2459366
sequential_3_2459368
sequential_3_2459370
sequential_3_2459372
sequential_3_2459374
sequential_3_2459376
sequential_3_2459378
sequential_3_2459380
sequential_3_2459382
sequential_3_2459384
sequential_3_2459386
sequential_3_2459388
sequential_3_2459390
sequential_3_2459392
sequential_3_2459394
sequential_3_2459396
sequential_3_2459398
sequential_3_2459400
sequential_3_2459402
identity??#embedding_3/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinput_10embedding_3_2459359*
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
H__inference_embedding_3_layer_call_and_return_conditional_losses_24591822%
#embedding_3/StatefulPartitionedCall?
flatten_5/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_24592002
flatten_5/PartitionedCall?
multiply_3/PartitionedCallPartitionedCallinput_9"flatten_5/PartitionedCall:output:0*
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
G__inference_multiply_3_layer_call_and_return_conditional_losses_24592142
multiply_3/PartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall#multiply_3/PartitionedCall:output:0sequential_3_2459364sequential_3_2459366sequential_3_2459368sequential_3_2459370sequential_3_2459372sequential_3_2459374sequential_3_2459376sequential_3_2459378sequential_3_2459380sequential_3_2459382sequential_3_2459384sequential_3_2459386sequential_3_2459388sequential_3_2459390sequential_3_2459392sequential_3_2459394sequential_3_2459396sequential_3_2459398sequential_3_2459400sequential_3_2459402* 
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_24591252&
$sequential_3/StatefulPartitionedCall?
IdentityIdentity-sequential_3/StatefulPartitionedCall:output:0$^embedding_3/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_9:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_10
?	
?
E__inference_dense_12_layer_call_and_return_conditional_losses_2458650

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
?
G
+__inference_flatten_5_layer_call_fn_2460024

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
GPU2*0J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_24592002
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
?

*__inference_dense_14_layer_call_fn_2460595

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
E__inference_dense_14_layer_call_and_return_conditional_losses_24587982
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
?
?
7__inference_batch_normalization_3_layer_call_fn_2460465

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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_24583452
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
?
f
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_2460378

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
?
?
)__inference_model_4_layer_call_fn_2459997
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
GPU2*0J 8? *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_24595602
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
?
g
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_2460600

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
?
?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2460661

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
?	
?
E__inference_dense_15_layer_call_and_return_conditional_losses_2458873

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
?

*__inference_dense_12_layer_call_fn_2460373

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
E__inference_dense_12_layer_call_and_return_conditional_losses_24586502
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
?
?
.__inference_sequential_3_layer_call_fn_2460354

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
I__inference_sequential_3_layer_call_and_return_conditional_losses_24591252
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
?
?
7__inference_batch_normalization_5_layer_call_fn_2460687

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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_24586252
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
?0
?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2458592

inputs
assignmovingavg_2458567
assignmovingavg_1_2458573)
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
loc:@AssignMovingAvg/2458567*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_2458567*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/2458567*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/2458567*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2458567AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/2458567*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/2458573*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_2458573*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2458573*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2458573*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_2458573AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/2458573*
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
?
E__inference_dense_15_layer_call_and_return_conditional_losses_2460698

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
D__inference_model_4_layer_call_and_return_conditional_losses_2459461

inputs
inputs_1
embedding_3_2459414
sequential_3_2459419
sequential_3_2459421
sequential_3_2459423
sequential_3_2459425
sequential_3_2459427
sequential_3_2459429
sequential_3_2459431
sequential_3_2459433
sequential_3_2459435
sequential_3_2459437
sequential_3_2459439
sequential_3_2459441
sequential_3_2459443
sequential_3_2459445
sequential_3_2459447
sequential_3_2459449
sequential_3_2459451
sequential_3_2459453
sequential_3_2459455
sequential_3_2459457
identity??#embedding_3/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_3_2459414*
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
H__inference_embedding_3_layer_call_and_return_conditional_losses_24591822%
#embedding_3/StatefulPartitionedCall?
flatten_5/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_24592002
flatten_5/PartitionedCall?
multiply_3/PartitionedCallPartitionedCallinputs"flatten_5/PartitionedCall:output:0*
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
G__inference_multiply_3_layer_call_and_return_conditional_losses_24592142
multiply_3/PartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall#multiply_3/PartitionedCall:output:0sequential_3_2459419sequential_3_2459421sequential_3_2459423sequential_3_2459425sequential_3_2459427sequential_3_2459429sequential_3_2459431sequential_3_2459433sequential_3_2459435sequential_3_2459437sequential_3_2459439sequential_3_2459441sequential_3_2459443sequential_3_2459445sequential_3_2459447sequential_3_2459449sequential_3_2459451sequential_3_2459453sequential_3_2459455sequential_3_2459457* 
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_24590252&
$sequential_3/StatefulPartitionedCall?
IdentityIdentity-sequential_3/StatefulPartitionedCall:output:0$^embedding_3/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall:O K
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
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_2458819

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
?
b
F__inference_reshape_1_layer_call_and_return_conditional_losses_2458903

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
?
X
,__inference_multiply_3_layer_call_fn_2460036
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
G__inference_multiply_3_layer_call_and_return_conditional_losses_24592142
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
?
L
0__inference_leaky_re_lu_10_layer_call_fn_2460494

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
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_24587452
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
??
?
"__inference__wrapped_model_2458216
input_9
input_100
,model_4_embedding_3_embedding_lookup_2458121@
<model_4_sequential_3_dense_12_matmul_readvariableop_resourceA
=model_4_sequential_3_dense_12_biasadd_readvariableop_resourceP
Lmodel_4_sequential_3_batch_normalization_3_batchnorm_readvariableop_resourceT
Pmodel_4_sequential_3_batch_normalization_3_batchnorm_mul_readvariableop_resourceR
Nmodel_4_sequential_3_batch_normalization_3_batchnorm_readvariableop_1_resourceR
Nmodel_4_sequential_3_batch_normalization_3_batchnorm_readvariableop_2_resource@
<model_4_sequential_3_dense_13_matmul_readvariableop_resourceA
=model_4_sequential_3_dense_13_biasadd_readvariableop_resourceP
Lmodel_4_sequential_3_batch_normalization_4_batchnorm_readvariableop_resourceT
Pmodel_4_sequential_3_batch_normalization_4_batchnorm_mul_readvariableop_resourceR
Nmodel_4_sequential_3_batch_normalization_4_batchnorm_readvariableop_1_resourceR
Nmodel_4_sequential_3_batch_normalization_4_batchnorm_readvariableop_2_resource@
<model_4_sequential_3_dense_14_matmul_readvariableop_resourceA
=model_4_sequential_3_dense_14_biasadd_readvariableop_resourceP
Lmodel_4_sequential_3_batch_normalization_5_batchnorm_readvariableop_resourceT
Pmodel_4_sequential_3_batch_normalization_5_batchnorm_mul_readvariableop_resourceR
Nmodel_4_sequential_3_batch_normalization_5_batchnorm_readvariableop_1_resourceR
Nmodel_4_sequential_3_batch_normalization_5_batchnorm_readvariableop_2_resource@
<model_4_sequential_3_dense_15_matmul_readvariableop_resourceA
=model_4_sequential_3_dense_15_biasadd_readvariableop_resource
identity??$model_4/embedding_3/embedding_lookup?Cmodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp?Emodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_1?Emodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_2?Gmodel_4/sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp?Cmodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp?Emodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_1?Emodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_2?Gmodel_4/sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp?Cmodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp?Emodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_1?Emodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_2?Gmodel_4/sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp?4model_4/sequential_3/dense_12/BiasAdd/ReadVariableOp?3model_4/sequential_3/dense_12/MatMul/ReadVariableOp?4model_4/sequential_3/dense_13/BiasAdd/ReadVariableOp?3model_4/sequential_3/dense_13/MatMul/ReadVariableOp?4model_4/sequential_3/dense_14/BiasAdd/ReadVariableOp?3model_4/sequential_3/dense_14/MatMul/ReadVariableOp?4model_4/sequential_3/dense_15/BiasAdd/ReadVariableOp?3model_4/sequential_3/dense_15/MatMul/ReadVariableOp?
$model_4/embedding_3/embedding_lookupResourceGather,model_4_embedding_3_embedding_lookup_2458121input_10",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*?
_class5
31loc:@model_4/embedding_3/embedding_lookup/2458121*+
_output_shapes
:?????????d*
dtype02&
$model_4/embedding_3/embedding_lookup?
-model_4/embedding_3/embedding_lookup/IdentityIdentity-model_4/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*?
_class5
31loc:@model_4/embedding_3/embedding_lookup/2458121*+
_output_shapes
:?????????d2/
-model_4/embedding_3/embedding_lookup/Identity?
/model_4/embedding_3/embedding_lookup/Identity_1Identity6model_4/embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d21
/model_4/embedding_3/embedding_lookup/Identity_1?
model_4/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"????d   2
model_4/flatten_5/Const?
model_4/flatten_5/ReshapeReshape8model_4/embedding_3/embedding_lookup/Identity_1:output:0 model_4/flatten_5/Const:output:0*
T0*'
_output_shapes
:?????????d2
model_4/flatten_5/Reshape?
model_4/multiply_3/mulMulinput_9"model_4/flatten_5/Reshape:output:0*
T0*'
_output_shapes
:?????????d2
model_4/multiply_3/mul?
3model_4/sequential_3/dense_12/MatMul/ReadVariableOpReadVariableOp<model_4_sequential_3_dense_12_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype025
3model_4/sequential_3/dense_12/MatMul/ReadVariableOp?
$model_4/sequential_3/dense_12/MatMulMatMulmodel_4/multiply_3/mul:z:0;model_4/sequential_3/dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$model_4/sequential_3/dense_12/MatMul?
4model_4/sequential_3/dense_12/BiasAdd/ReadVariableOpReadVariableOp=model_4_sequential_3_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4model_4/sequential_3/dense_12/BiasAdd/ReadVariableOp?
%model_4/sequential_3/dense_12/BiasAddBiasAdd.model_4/sequential_3/dense_12/MatMul:product:0<model_4/sequential_3/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%model_4/sequential_3/dense_12/BiasAdd?
,model_4/sequential_3/leaky_re_lu_9/LeakyRelu	LeakyRelu.model_4/sequential_3/dense_12/BiasAdd:output:0*(
_output_shapes
:??????????2.
,model_4/sequential_3/leaky_re_lu_9/LeakyRelu?
Cmodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpLmodel_4_sequential_3_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Cmodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp?
:model_4/sequential_3/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2<
:model_4/sequential_3/batch_normalization_3/batchnorm/add/y?
8model_4/sequential_3/batch_normalization_3/batchnorm/addAddV2Kmodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp:value:0Cmodel_4/sequential_3/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2:
8model_4/sequential_3/batch_normalization_3/batchnorm/add?
:model_4/sequential_3/batch_normalization_3/batchnorm/RsqrtRsqrt<model_4/sequential_3/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:?2<
:model_4/sequential_3/batch_normalization_3/batchnorm/Rsqrt?
Gmodel_4/sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpPmodel_4_sequential_3_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodel_4/sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp?
8model_4/sequential_3/batch_normalization_3/batchnorm/mulMul>model_4/sequential_3/batch_normalization_3/batchnorm/Rsqrt:y:0Omodel_4/sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2:
8model_4/sequential_3/batch_normalization_3/batchnorm/mul?
:model_4/sequential_3/batch_normalization_3/batchnorm/mul_1Mul:model_4/sequential_3/leaky_re_lu_9/LeakyRelu:activations:0<model_4/sequential_3/batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2<
:model_4/sequential_3/batch_normalization_3/batchnorm/mul_1?
Emodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpNmodel_4_sequential_3_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Emodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_1?
:model_4/sequential_3/batch_normalization_3/batchnorm/mul_2MulMmodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_1:value:0<model_4/sequential_3/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2<
:model_4/sequential_3/batch_normalization_3/batchnorm/mul_2?
Emodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpNmodel_4_sequential_3_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02G
Emodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_2?
8model_4/sequential_3/batch_normalization_3/batchnorm/subSubMmodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_2:value:0>model_4/sequential_3/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2:
8model_4/sequential_3/batch_normalization_3/batchnorm/sub?
:model_4/sequential_3/batch_normalization_3/batchnorm/add_1AddV2>model_4/sequential_3/batch_normalization_3/batchnorm/mul_1:z:0<model_4/sequential_3/batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2<
:model_4/sequential_3/batch_normalization_3/batchnorm/add_1?
3model_4/sequential_3/dense_13/MatMul/ReadVariableOpReadVariableOp<model_4_sequential_3_dense_13_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype025
3model_4/sequential_3/dense_13/MatMul/ReadVariableOp?
$model_4/sequential_3/dense_13/MatMulMatMul>model_4/sequential_3/batch_normalization_3/batchnorm/add_1:z:0;model_4/sequential_3/dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$model_4/sequential_3/dense_13/MatMul?
4model_4/sequential_3/dense_13/BiasAdd/ReadVariableOpReadVariableOp=model_4_sequential_3_dense_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4model_4/sequential_3/dense_13/BiasAdd/ReadVariableOp?
%model_4/sequential_3/dense_13/BiasAddBiasAdd.model_4/sequential_3/dense_13/MatMul:product:0<model_4/sequential_3/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%model_4/sequential_3/dense_13/BiasAdd?
-model_4/sequential_3/leaky_re_lu_10/LeakyRelu	LeakyRelu.model_4/sequential_3/dense_13/BiasAdd:output:0*(
_output_shapes
:??????????2/
-model_4/sequential_3/leaky_re_lu_10/LeakyRelu?
Cmodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpLmodel_4_sequential_3_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Cmodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp?
:model_4/sequential_3/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2<
:model_4/sequential_3/batch_normalization_4/batchnorm/add/y?
8model_4/sequential_3/batch_normalization_4/batchnorm/addAddV2Kmodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp:value:0Cmodel_4/sequential_3/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2:
8model_4/sequential_3/batch_normalization_4/batchnorm/add?
:model_4/sequential_3/batch_normalization_4/batchnorm/RsqrtRsqrt<model_4/sequential_3/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?2<
:model_4/sequential_3/batch_normalization_4/batchnorm/Rsqrt?
Gmodel_4/sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpPmodel_4_sequential_3_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodel_4/sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp?
8model_4/sequential_3/batch_normalization_4/batchnorm/mulMul>model_4/sequential_3/batch_normalization_4/batchnorm/Rsqrt:y:0Omodel_4/sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2:
8model_4/sequential_3/batch_normalization_4/batchnorm/mul?
:model_4/sequential_3/batch_normalization_4/batchnorm/mul_1Mul;model_4/sequential_3/leaky_re_lu_10/LeakyRelu:activations:0<model_4/sequential_3/batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2<
:model_4/sequential_3/batch_normalization_4/batchnorm/mul_1?
Emodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOpNmodel_4_sequential_3_batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Emodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_1?
:model_4/sequential_3/batch_normalization_4/batchnorm/mul_2MulMmodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_1:value:0<model_4/sequential_3/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2<
:model_4/sequential_3/batch_normalization_4/batchnorm/mul_2?
Emodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOpNmodel_4_sequential_3_batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02G
Emodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_2?
8model_4/sequential_3/batch_normalization_4/batchnorm/subSubMmodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_2:value:0>model_4/sequential_3/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2:
8model_4/sequential_3/batch_normalization_4/batchnorm/sub?
:model_4/sequential_3/batch_normalization_4/batchnorm/add_1AddV2>model_4/sequential_3/batch_normalization_4/batchnorm/mul_1:z:0<model_4/sequential_3/batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2<
:model_4/sequential_3/batch_normalization_4/batchnorm/add_1?
3model_4/sequential_3/dense_14/MatMul/ReadVariableOpReadVariableOp<model_4_sequential_3_dense_14_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype025
3model_4/sequential_3/dense_14/MatMul/ReadVariableOp?
$model_4/sequential_3/dense_14/MatMulMatMul>model_4/sequential_3/batch_normalization_4/batchnorm/add_1:z:0;model_4/sequential_3/dense_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$model_4/sequential_3/dense_14/MatMul?
4model_4/sequential_3/dense_14/BiasAdd/ReadVariableOpReadVariableOp=model_4_sequential_3_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4model_4/sequential_3/dense_14/BiasAdd/ReadVariableOp?
%model_4/sequential_3/dense_14/BiasAddBiasAdd.model_4/sequential_3/dense_14/MatMul:product:0<model_4/sequential_3/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%model_4/sequential_3/dense_14/BiasAdd?
-model_4/sequential_3/leaky_re_lu_11/LeakyRelu	LeakyRelu.model_4/sequential_3/dense_14/BiasAdd:output:0*(
_output_shapes
:??????????2/
-model_4/sequential_3/leaky_re_lu_11/LeakyRelu?
Cmodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpLmodel_4_sequential_3_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Cmodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp?
:model_4/sequential_3/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2<
:model_4/sequential_3/batch_normalization_5/batchnorm/add/y?
8model_4/sequential_3/batch_normalization_5/batchnorm/addAddV2Kmodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp:value:0Cmodel_4/sequential_3/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2:
8model_4/sequential_3/batch_normalization_5/batchnorm/add?
:model_4/sequential_3/batch_normalization_5/batchnorm/RsqrtRsqrt<model_4/sequential_3/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:?2<
:model_4/sequential_3/batch_normalization_5/batchnorm/Rsqrt?
Gmodel_4/sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpPmodel_4_sequential_3_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodel_4/sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp?
8model_4/sequential_3/batch_normalization_5/batchnorm/mulMul>model_4/sequential_3/batch_normalization_5/batchnorm/Rsqrt:y:0Omodel_4/sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2:
8model_4/sequential_3/batch_normalization_5/batchnorm/mul?
:model_4/sequential_3/batch_normalization_5/batchnorm/mul_1Mul;model_4/sequential_3/leaky_re_lu_11/LeakyRelu:activations:0<model_4/sequential_3/batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2<
:model_4/sequential_3/batch_normalization_5/batchnorm/mul_1?
Emodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpNmodel_4_sequential_3_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Emodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_1?
:model_4/sequential_3/batch_normalization_5/batchnorm/mul_2MulMmodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_1:value:0<model_4/sequential_3/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2<
:model_4/sequential_3/batch_normalization_5/batchnorm/mul_2?
Emodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpNmodel_4_sequential_3_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02G
Emodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_2?
8model_4/sequential_3/batch_normalization_5/batchnorm/subSubMmodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_2:value:0>model_4/sequential_3/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2:
8model_4/sequential_3/batch_normalization_5/batchnorm/sub?
:model_4/sequential_3/batch_normalization_5/batchnorm/add_1AddV2>model_4/sequential_3/batch_normalization_5/batchnorm/mul_1:z:0<model_4/sequential_3/batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2<
:model_4/sequential_3/batch_normalization_5/batchnorm/add_1?
3model_4/sequential_3/dense_15/MatMul/ReadVariableOpReadVariableOp<model_4_sequential_3_dense_15_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype025
3model_4/sequential_3/dense_15/MatMul/ReadVariableOp?
$model_4/sequential_3/dense_15/MatMulMatMul>model_4/sequential_3/batch_normalization_5/batchnorm/add_1:z:0;model_4/sequential_3/dense_15/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2&
$model_4/sequential_3/dense_15/MatMul?
4model_4/sequential_3/dense_15/BiasAdd/ReadVariableOpReadVariableOp=model_4_sequential_3_dense_15_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype026
4model_4/sequential_3/dense_15/BiasAdd/ReadVariableOp?
%model_4/sequential_3/dense_15/BiasAddBiasAdd.model_4/sequential_3/dense_15/MatMul:product:0<model_4/sequential_3/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2'
%model_4/sequential_3/dense_15/BiasAdd?
"model_4/sequential_3/dense_15/TanhTanh.model_4/sequential_3/dense_15/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2$
"model_4/sequential_3/dense_15/Tanh?
$model_4/sequential_3/reshape_1/ShapeShape&model_4/sequential_3/dense_15/Tanh:y:0*
T0*
_output_shapes
:2&
$model_4/sequential_3/reshape_1/Shape?
2model_4/sequential_3/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2model_4/sequential_3/reshape_1/strided_slice/stack?
4model_4/sequential_3/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4model_4/sequential_3/reshape_1/strided_slice/stack_1?
4model_4/sequential_3/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4model_4/sequential_3/reshape_1/strided_slice/stack_2?
,model_4/sequential_3/reshape_1/strided_sliceStridedSlice-model_4/sequential_3/reshape_1/Shape:output:0;model_4/sequential_3/reshape_1/strided_slice/stack:output:0=model_4/sequential_3/reshape_1/strided_slice/stack_1:output:0=model_4/sequential_3/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,model_4/sequential_3/reshape_1/strided_slice?
.model_4/sequential_3/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?20
.model_4/sequential_3/reshape_1/Reshape/shape/1?
.model_4/sequential_3/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?20
.model_4/sequential_3/reshape_1/Reshape/shape/2?
.model_4/sequential_3/reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :20
.model_4/sequential_3/reshape_1/Reshape/shape/3?
,model_4/sequential_3/reshape_1/Reshape/shapePack5model_4/sequential_3/reshape_1/strided_slice:output:07model_4/sequential_3/reshape_1/Reshape/shape/1:output:07model_4/sequential_3/reshape_1/Reshape/shape/2:output:07model_4/sequential_3/reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2.
,model_4/sequential_3/reshape_1/Reshape/shape?
&model_4/sequential_3/reshape_1/ReshapeReshape&model_4/sequential_3/dense_15/Tanh:y:05model_4/sequential_3/reshape_1/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2(
&model_4/sequential_3/reshape_1/Reshape?
IdentityIdentity/model_4/sequential_3/reshape_1/Reshape:output:0%^model_4/embedding_3/embedding_lookupD^model_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOpF^model_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_1F^model_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_2H^model_4/sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOpD^model_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOpF^model_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_1F^model_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_2H^model_4/sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOpD^model_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOpF^model_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_1F^model_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_2H^model_4/sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp5^model_4/sequential_3/dense_12/BiasAdd/ReadVariableOp4^model_4/sequential_3/dense_12/MatMul/ReadVariableOp5^model_4/sequential_3/dense_13/BiasAdd/ReadVariableOp4^model_4/sequential_3/dense_13/MatMul/ReadVariableOp5^model_4/sequential_3/dense_14/BiasAdd/ReadVariableOp4^model_4/sequential_3/dense_14/MatMul/ReadVariableOp5^model_4/sequential_3/dense_15/BiasAdd/ReadVariableOp4^model_4/sequential_3/dense_15/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2L
$model_4/embedding_3/embedding_lookup$model_4/embedding_3/embedding_lookup2?
Cmodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOpCmodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp2?
Emodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_1Emodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_12?
Emodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_2Emodel_4/sequential_3/batch_normalization_3/batchnorm/ReadVariableOp_22?
Gmodel_4/sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOpGmodel_4/sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp2?
Cmodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOpCmodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp2?
Emodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_1Emodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_12?
Emodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_2Emodel_4/sequential_3/batch_normalization_4/batchnorm/ReadVariableOp_22?
Gmodel_4/sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOpGmodel_4/sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp2?
Cmodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOpCmodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp2?
Emodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_1Emodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_12?
Emodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_2Emodel_4/sequential_3/batch_normalization_5/batchnorm/ReadVariableOp_22?
Gmodel_4/sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOpGmodel_4/sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp2l
4model_4/sequential_3/dense_12/BiasAdd/ReadVariableOp4model_4/sequential_3/dense_12/BiasAdd/ReadVariableOp2j
3model_4/sequential_3/dense_12/MatMul/ReadVariableOp3model_4/sequential_3/dense_12/MatMul/ReadVariableOp2l
4model_4/sequential_3/dense_13/BiasAdd/ReadVariableOp4model_4/sequential_3/dense_13/BiasAdd/ReadVariableOp2j
3model_4/sequential_3/dense_13/MatMul/ReadVariableOp3model_4/sequential_3/dense_13/MatMul/ReadVariableOp2l
4model_4/sequential_3/dense_14/BiasAdd/ReadVariableOp4model_4/sequential_3/dense_14/BiasAdd/ReadVariableOp2j
3model_4/sequential_3/dense_14/MatMul/ReadVariableOp3model_4/sequential_3/dense_14/MatMul/ReadVariableOp2l
4model_4/sequential_3/dense_15/BiasAdd/ReadVariableOp4model_4/sequential_3/dense_15/BiasAdd/ReadVariableOp2j
3model_4/sequential_3/dense_15/MatMul/ReadVariableOp3model_4/sequential_3/dense_15/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_9:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_10
?0
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2458452

inputs
assignmovingavg_2458427
assignmovingavg_1_2458433)
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
loc:@AssignMovingAvg/2458427*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_2458427*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/2458427*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/2458427*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2458427AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/2458427*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/2458433*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_2458433*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2458433*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2458433*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_2458433AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/2458433*
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
?
?
D__inference_model_4_layer_call_and_return_conditional_losses_2459355
input_9
input_10
embedding_3_2459191
sequential_3_2459313
sequential_3_2459315
sequential_3_2459317
sequential_3_2459319
sequential_3_2459321
sequential_3_2459323
sequential_3_2459325
sequential_3_2459327
sequential_3_2459329
sequential_3_2459331
sequential_3_2459333
sequential_3_2459335
sequential_3_2459337
sequential_3_2459339
sequential_3_2459341
sequential_3_2459343
sequential_3_2459345
sequential_3_2459347
sequential_3_2459349
sequential_3_2459351
identity??#embedding_3/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinput_10embedding_3_2459191*
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
H__inference_embedding_3_layer_call_and_return_conditional_losses_24591822%
#embedding_3/StatefulPartitionedCall?
flatten_5/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_24592002
flatten_5/PartitionedCall?
multiply_3/PartitionedCallPartitionedCallinput_9"flatten_5/PartitionedCall:output:0*
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
G__inference_multiply_3_layer_call_and_return_conditional_losses_24592142
multiply_3/PartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall#multiply_3/PartitionedCall:output:0sequential_3_2459313sequential_3_2459315sequential_3_2459317sequential_3_2459319sequential_3_2459321sequential_3_2459323sequential_3_2459325sequential_3_2459327sequential_3_2459329sequential_3_2459331sequential_3_2459333sequential_3_2459335sequential_3_2459337sequential_3_2459339sequential_3_2459341sequential_3_2459343sequential_3_2459345sequential_3_2459347sequential_3_2459349sequential_3_2459351* 
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_24590252&
$sequential_3/StatefulPartitionedCall?
IdentityIdentity-sequential_3/StatefulPartitionedCall:output:0$^embedding_3/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_9:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_10
?	
?
H__inference_embedding_3_layer_call_and_return_conditional_losses_2460006

inputs
embedding_lookup_2460000
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_2460000inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/2460000*+
_output_shapes
:?????????d*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/2460000*+
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
?
K
/__inference_leaky_re_lu_9_layer_call_fn_2460383

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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_24586712
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
?Z
?
#__inference__traced_restore_2460886
file_prefix+
'assignvariableop_embedding_3_embeddings&
"assignvariableop_1_dense_12_kernel$
 assignvariableop_2_dense_12_bias2
.assignvariableop_3_batch_normalization_3_gamma1
-assignvariableop_4_batch_normalization_3_beta&
"assignvariableop_5_dense_13_kernel$
 assignvariableop_6_dense_13_bias2
.assignvariableop_7_batch_normalization_4_gamma1
-assignvariableop_8_batch_normalization_4_beta&
"assignvariableop_9_dense_14_kernel%
!assignvariableop_10_dense_14_bias3
/assignvariableop_11_batch_normalization_5_gamma2
.assignvariableop_12_batch_normalization_5_beta'
#assignvariableop_13_dense_15_kernel%
!assignvariableop_14_dense_15_bias9
5assignvariableop_15_batch_normalization_3_moving_mean=
9assignvariableop_16_batch_normalization_3_moving_variance9
5assignvariableop_17_batch_normalization_4_moving_mean=
9assignvariableop_18_batch_normalization_4_moving_variance9
5assignvariableop_19_batch_normalization_5_moving_mean=
9assignvariableop_20_batch_normalization_5_moving_variance
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
AssignVariableOpAssignVariableOp'assignvariableop_embedding_3_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_12_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp assignvariableop_2_dense_12_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_3_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp-assignvariableop_4_batch_normalization_3_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_13_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_13_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_batch_normalization_4_gammaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp-assignvariableop_8_batch_normalization_4_betaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_14_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp!assignvariableop_10_dense_14_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batch_normalization_5_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp.assignvariableop_12_batch_normalization_5_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_dense_15_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp!assignvariableop_14_dense_15_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp5assignvariableop_15_batch_normalization_3_moving_meanIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp9assignvariableop_16_batch_normalization_3_moving_varianceIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp5assignvariableop_17_batch_normalization_4_moving_meanIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp9assignvariableop_18_batch_normalization_4_moving_varianceIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp5assignvariableop_19_batch_normalization_5_moving_meanIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp9assignvariableop_20_batch_normalization_5_moving_varianceIdentity_20:output:0"/device:CPU:0*
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
?	
?
E__inference_dense_14_layer_call_and_return_conditional_losses_2460586

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
7__inference_batch_normalization_4_layer_call_fn_2460576

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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_24584852
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
?
?
7__inference_batch_normalization_3_layer_call_fn_2460452

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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_24583122
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
input_101
serving_default_input_10:0?????????
;
input_90
serving_default_input_9:0?????????dJ
sequential_3:
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
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?b
_tf_keras_network?b{"class_name": "Functional", "name": "model_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_10"}, "name": "input_10", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 171, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_3", "inbound_nodes": [[["input_10", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_9"}, "name": "input_9", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_5", "inbound_nodes": [[["embedding_3", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "multiply_3", "trainable": true, "dtype": "float32"}, "name": "multiply_3", "inbound_nodes": [[["input_9", 0, 0, {}], ["flatten_5", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_12_input"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_1", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}]}, "name": "sequential_3", "inbound_nodes": [[["multiply_3", 0, 0, {}]]]}], "input_layers": [["input_9", 0, 0], ["input_10", 0, 0]], "output_layers": [["sequential_3", 1, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 100]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 100]}, {"class_name": "TensorShape", "items": [null, 1]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_10"}, "name": "input_10", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 171, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_3", "inbound_nodes": [[["input_10", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_9"}, "name": "input_9", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_5", "inbound_nodes": [[["embedding_3", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "multiply_3", "trainable": true, "dtype": "float32"}, "name": "multiply_3", "inbound_nodes": [[["input_9", 0, 0, {}], ["flatten_5", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_12_input"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_1", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}]}, "name": "sequential_3", "inbound_nodes": [[["multiply_3", 0, 0, {}]]]}], "input_layers": [["input_9", 0, 0], ["input_10", 0, 0]], "output_layers": [["sequential_3", 1, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_10", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_10"}}
?

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 171, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_9", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_9"}}
?
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Multiply", "name": "multiply_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "multiply_3", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 100]}, {"class_name": "TensorShape", "items": [null, 100]}]}
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
?__call__
+?&call_and_return_all_conditional_losses"?G
_tf_keras_sequential?F{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_12_input"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_1", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_12_input"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_1", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}]}}}
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
	variables
>non_trainable_variables

?layers
@layer_regularization_losses
	regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
):'	?d2embedding_3/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
Ametrics
Blayer_metrics
	variables
Cnon_trainable_variables

Dlayers
Elayer_regularization_losses
regularization_losses
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
trainable_variables
Fmetrics
Glayer_metrics
	variables
Hnon_trainable_variables

Ilayers
Jlayer_regularization_losses
regularization_losses
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
trainable_variables
Kmetrics
Llayer_metrics
	variables
Mnon_trainable_variables

Nlayers
Olayer_regularization_losses
regularization_losses
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
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?
Ttrainable_variables
U	variables
Vregularization_losses
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}
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
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

,kernel
-bias
]trainable_variables
^	variables
_regularization_losses
`	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
atrainable_variables
b	variables
cregularization_losses
d	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}
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
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?

0kernel
1bias
jtrainable_variables
k	variables
lregularization_losses
m	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?
ntrainable_variables
o	variables
pregularization_losses
q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}
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
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?

4kernel
5bias
wtrainable_variables
x	variables
yregularization_losses
z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
{trainable_variables
|	variables
}regularization_losses
~	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Reshape", "name": "reshape_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_1", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}
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
%	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
&regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	d?2dense_12/kernel
:?2dense_12/bias
*:(?2batch_normalization_3/gamma
):'?2batch_normalization_3/beta
#:!
??2dense_13/kernel
:?2dense_13/bias
*:(?2batch_normalization_4/gamma
):'?2batch_normalization_4/beta
#:!
??2dense_14/kernel
:?2dense_14/bias
*:(?2batch_normalization_5/gamma
):'?2batch_normalization_5/beta
$:"???2dense_15/kernel
:??2dense_15/bias
2:0? (2!batch_normalization_3/moving_mean
6:4? (2%batch_normalization_3/moving_variance
2:0? (2!batch_normalization_4/moving_mean
6:4? (2%batch_normalization_4/moving_variance
2:0? (2!batch_normalization_5/moving_mean
6:4? (2%batch_normalization_5/moving_variance
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
Ptrainable_variables
?metrics
?layer_metrics
Q	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
Rregularization_losses
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
Ttrainable_variables
?metrics
?layer_metrics
U	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
Vregularization_losses
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
Ytrainable_variables
?metrics
?layer_metrics
Z	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
[regularization_losses
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
]trainable_variables
?metrics
?layer_metrics
^	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
_regularization_losses
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
atrainable_variables
?metrics
?layer_metrics
b	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
cregularization_losses
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
ftrainable_variables
?metrics
?layer_metrics
g	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
hregularization_losses
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
jtrainable_variables
?metrics
?layer_metrics
k	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
lregularization_losses
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
ntrainable_variables
?metrics
?layer_metrics
o	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
pregularization_losses
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
strainable_variables
?metrics
?layer_metrics
t	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
uregularization_losses
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
wtrainable_variables
?metrics
?layer_metrics
x	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
yregularization_losses
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
{trainable_variables
?metrics
?layer_metrics
|	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
}regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
60
71"
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
.
80
91"
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
.
:0
;1"
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
?2?
)__inference_model_4_layer_call_fn_2459506
)__inference_model_4_layer_call_fn_2459949
)__inference_model_4_layer_call_fn_2459605
)__inference_model_4_layer_call_fn_2459997?
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
"__inference__wrapped_model_2458216?
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
annotations? *O?L
J?G
!?
input_9?????????d
"?
input_10?????????
?2?
D__inference_model_4_layer_call_and_return_conditional_losses_2459406
D__inference_model_4_layer_call_and_return_conditional_losses_2459901
D__inference_model_4_layer_call_and_return_conditional_losses_2459802
D__inference_model_4_layer_call_and_return_conditional_losses_2459355?
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
?2?
-__inference_embedding_3_layer_call_fn_2460013?
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
H__inference_embedding_3_layer_call_and_return_conditional_losses_2460006?
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
+__inference_flatten_5_layer_call_fn_2460024?
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
F__inference_flatten_5_layer_call_and_return_conditional_losses_2460019?
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
,__inference_multiply_3_layer_call_fn_2460036?
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
G__inference_multiply_3_layer_call_and_return_conditional_losses_2460030?
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
.__inference_sequential_3_layer_call_fn_2459168
.__inference_sequential_3_layer_call_fn_2460309
.__inference_sequential_3_layer_call_fn_2459068
.__inference_sequential_3_layer_call_fn_2460354?
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_2460264
I__inference_sequential_3_layer_call_and_return_conditional_losses_2458912
I__inference_sequential_3_layer_call_and_return_conditional_losses_2460174
I__inference_sequential_3_layer_call_and_return_conditional_losses_2458967?
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
%__inference_signature_wrapper_2459655input_10input_9"?
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
*__inference_dense_12_layer_call_fn_2460373?
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
E__inference_dense_12_layer_call_and_return_conditional_losses_2460364?
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
/__inference_leaky_re_lu_9_layer_call_fn_2460383?
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
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_2460378?
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
7__inference_batch_normalization_3_layer_call_fn_2460465
7__inference_batch_normalization_3_layer_call_fn_2460452?
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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2460419
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2460439?
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
*__inference_dense_13_layer_call_fn_2460484?
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
E__inference_dense_13_layer_call_and_return_conditional_losses_2460475?
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
0__inference_leaky_re_lu_10_layer_call_fn_2460494?
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
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_2460489?
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
7__inference_batch_normalization_4_layer_call_fn_2460563
7__inference_batch_normalization_4_layer_call_fn_2460576?
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
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2460550
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2460530?
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
*__inference_dense_14_layer_call_fn_2460595?
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
E__inference_dense_14_layer_call_and_return_conditional_losses_2460586?
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
0__inference_leaky_re_lu_11_layer_call_fn_2460605?
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
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_2460600?
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
7__inference_batch_normalization_5_layer_call_fn_2460687
7__inference_batch_normalization_5_layer_call_fn_2460674?
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
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2460641
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2460661?
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
*__inference_dense_15_layer_call_fn_2460707?
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
E__inference_dense_15_layer_call_and_return_conditional_losses_2460698?
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
+__inference_reshape_1_layer_call_fn_2460726?
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
F__inference_reshape_1_layer_call_and_return_conditional_losses_2460721?
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
"__inference__wrapped_model_2458216?()7*6+,-9.8/01;2:345Y?V
O?L
J?G
!?
input_9?????????d
"?
input_10?????????
? "E?B
@
sequential_30?-
sequential_3????????????
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2460419d67*+4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2460439d7*6+4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_3_layer_call_fn_2460452W67*+4?1
*?'
!?
inputs??????????
p
? "????????????
7__inference_batch_normalization_3_layer_call_fn_2460465W7*6+4?1
*?'
!?
inputs??????????
p 
? "????????????
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2460530d89./4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2460550d9.8/4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_4_layer_call_fn_2460563W89./4?1
*?'
!?
inputs??????????
p
? "????????????
7__inference_batch_normalization_4_layer_call_fn_2460576W9.8/4?1
*?'
!?
inputs??????????
p 
? "????????????
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2460641d:;234?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2460661d;2:34?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_5_layer_call_fn_2460674W:;234?1
*?'
!?
inputs??????????
p
? "????????????
7__inference_batch_normalization_5_layer_call_fn_2460687W;2:34?1
*?'
!?
inputs??????????
p 
? "????????????
E__inference_dense_12_layer_call_and_return_conditional_losses_2460364]()/?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????
? ~
*__inference_dense_12_layer_call_fn_2460373P()/?,
%?"
 ?
inputs?????????d
? "????????????
E__inference_dense_13_layer_call_and_return_conditional_losses_2460475^,-0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_13_layer_call_fn_2460484Q,-0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_14_layer_call_and_return_conditional_losses_2460586^010?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_14_layer_call_fn_2460595Q010?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_15_layer_call_and_return_conditional_losses_2460698_450?-
&?#
!?
inputs??????????
? "'?$
?
0???????????
? ?
*__inference_dense_15_layer_call_fn_2460707R450?-
&?#
!?
inputs??????????
? "?????????????
H__inference_embedding_3_layer_call_and_return_conditional_losses_2460006_/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????d
? ?
-__inference_embedding_3_layer_call_fn_2460013R/?,
%?"
 ?
inputs?????????
? "??????????d?
F__inference_flatten_5_layer_call_and_return_conditional_losses_2460019\3?0
)?&
$?!
inputs?????????d
? "%?"
?
0?????????d
? ~
+__inference_flatten_5_layer_call_fn_2460024O3?0
)?&
$?!
inputs?????????d
? "??????????d?
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_2460489Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_leaky_re_lu_10_layer_call_fn_2460494M0?-
&?#
!?
inputs??????????
? "????????????
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_2460600Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_leaky_re_lu_11_layer_call_fn_2460605M0?-
&?#
!?
inputs??????????
? "????????????
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_2460378Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_leaky_re_lu_9_layer_call_fn_2460383M0?-
&?#
!?
inputs??????????
? "????????????
D__inference_model_4_layer_call_and_return_conditional_losses_2459355?()67*+,-89./01:;2345a?^
W?T
J?G
!?
input_9?????????d
"?
input_10?????????
p

 
? "/?,
%?"
0???????????
? ?
D__inference_model_4_layer_call_and_return_conditional_losses_2459406?()7*6+,-9.8/01;2:345a?^
W?T
J?G
!?
input_9?????????d
"?
input_10?????????
p 

 
? "/?,
%?"
0???????????
? ?
D__inference_model_4_layer_call_and_return_conditional_losses_2459802?()67*+,-89./01:;2345b?_
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
D__inference_model_4_layer_call_and_return_conditional_losses_2459901?()7*6+,-9.8/01;2:345b?_
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
)__inference_model_4_layer_call_fn_2459506?()67*+,-89./01:;2345a?^
W?T
J?G
!?
input_9?????????d
"?
input_10?????????
p

 
? ""?????????????
)__inference_model_4_layer_call_fn_2459605?()7*6+,-9.8/01;2:345a?^
W?T
J?G
!?
input_9?????????d
"?
input_10?????????
p 

 
? ""?????????????
)__inference_model_4_layer_call_fn_2459949?()67*+,-89./01:;2345b?_
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
)__inference_model_4_layer_call_fn_2459997?()7*6+,-9.8/01;2:345b?_
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
G__inference_multiply_3_layer_call_and_return_conditional_losses_2460030?Z?W
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
,__inference_multiply_3_layer_call_fn_2460036vZ?W
P?M
K?H
"?
inputs/0?????????d
"?
inputs/1?????????d
? "??????????d?
F__inference_reshape_1_layer_call_and_return_conditional_losses_2460721d1?.
'?$
"?
inputs???????????
? "/?,
%?"
0???????????
? ?
+__inference_reshape_1_layer_call_fn_2460726W1?.
'?$
"?
inputs???????????
? ""?????????????
I__inference_sequential_3_layer_call_and_return_conditional_losses_2458912?()67*+,-89./01:;2345??<
5?2
(?%
dense_12_input?????????d
p

 
? "/?,
%?"
0???????????
? ?
I__inference_sequential_3_layer_call_and_return_conditional_losses_2458967?()7*6+,-9.8/01;2:345??<
5?2
(?%
dense_12_input?????????d
p 

 
? "/?,
%?"
0???????????
? ?
I__inference_sequential_3_layer_call_and_return_conditional_losses_2460174?()67*+,-89./01:;23457?4
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_2460264?()7*6+,-9.8/01;2:3457?4
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
.__inference_sequential_3_layer_call_fn_2459068{()67*+,-89./01:;2345??<
5?2
(?%
dense_12_input?????????d
p

 
? ""?????????????
.__inference_sequential_3_layer_call_fn_2459168{()7*6+,-9.8/01;2:345??<
5?2
(?%
dense_12_input?????????d
p 

 
? ""?????????????
.__inference_sequential_3_layer_call_fn_2460309s()67*+,-89./01:;23457?4
-?*
 ?
inputs?????????d
p

 
? ""?????????????
.__inference_sequential_3_layer_call_fn_2460354s()7*6+,-9.8/01;2:3457?4
-?*
 ?
inputs?????????d
p 

 
? ""?????????????
%__inference_signature_wrapper_2459655?()7*6+,-9.8/01;2:345k?h
? 
a?^
.
input_10"?
input_10?????????
,
input_9!?
input_9?????????d"E?B
@
sequential_30?-
sequential_3???????????