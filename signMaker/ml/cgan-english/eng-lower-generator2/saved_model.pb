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
dtype0*
shape
:d*'
shared_nameembedding_3/embeddings
?
*embedding_3/embeddings/Read/ReadVariableOpReadVariableOpembedding_3/embeddings*
_output_shapes

:d*
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

NoOpNoOp
?@
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
 
b

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
 
R
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
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
$	variables
%regularization_losses
&trainable_variables
'	keras_api
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
514
615
716
817
918
:19
;20
 
n
0
(1
)2
*3
+4
.5
/6
07
18
49
510
611
712
:13
;14
?
	variables
<metrics
=non_trainable_variables
>layer_regularization_losses
?layer_metrics
regularization_losses
	trainable_variables

@layers
 
fd
VARIABLE_VALUEembedding_3/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
?
	variables
Ametrics
Bnon_trainable_variables
Clayer_metrics
Dlayer_regularization_losses
regularization_losses
trainable_variables

Elayers
 
 
 
?
	variables
Fmetrics
Gnon_trainable_variables
Hlayer_metrics
Ilayer_regularization_losses
regularization_losses
trainable_variables

Jlayers
 
 
 
?
	variables
Kmetrics
Lnon_trainable_variables
Mlayer_metrics
Nlayer_regularization_losses
regularization_losses
trainable_variables

Olayers
h

(kernel
)bias
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
R
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
?
Xaxis
	*gamma
+beta
,moving_mean
-moving_variance
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
h

.kernel
/bias
]	variables
^regularization_losses
_trainable_variables
`	keras_api
R
a	variables
bregularization_losses
ctrainable_variables
d	keras_api
?
eaxis
	0gamma
1beta
2moving_mean
3moving_variance
f	variables
gregularization_losses
htrainable_variables
i	keras_api
h

4kernel
5bias
j	variables
kregularization_losses
ltrainable_variables
m	keras_api
R
n	variables
oregularization_losses
ptrainable_variables
q	keras_api
?
raxis
	6gamma
7beta
8moving_mean
9moving_variance
s	variables
tregularization_losses
utrainable_variables
v	keras_api
h

:kernel
;bias
w	variables
xregularization_losses
ytrainable_variables
z	keras_api
R
{	variables
|regularization_losses
}trainable_variables
~	keras_api
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
513
614
715
816
917
:18
;19
 
f
(0
)1
*2
+3
.4
/5
06
17
48
59
610
711
:12
;13
?
$	variables
metrics
?non_trainable_variables
 ?layer_regularization_losses
?layer_metrics
%regularization_losses
&trainable_variables
?layers
KI
VARIABLE_VALUEdense_12/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_12/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_3/gamma&variables/3/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEbatch_normalization_3/beta&variables/4/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!batch_normalization_3/moving_mean&variables/5/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%batch_normalization_3/moving_variance&variables/6/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_13/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_13/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_4/gamma&variables/9/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_4/beta'variables/10/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_4/moving_mean'variables/11/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_4/moving_variance'variables/12/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdense_14/kernel'variables/13/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_14/bias'variables/14/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEbatch_normalization_5/gamma'variables/15/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_5/beta'variables/16/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_5/moving_mean'variables/17/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_5/moving_variance'variables/18/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdense_15/kernel'variables/19/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_15/bias'variables/20/.ATTRIBUTES/VARIABLE_VALUE
 
*
,0
-1
22
33
84
95
 
 
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
 

(0
)1
?
P	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
Qregularization_losses
Rtrainable_variables
?layers
 
 
 
?
T	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
Uregularization_losses
Vtrainable_variables
?layers
 

*0
+1
,2
-3
 

*0
+1
?
Y	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
Zregularization_losses
[trainable_variables
?layers

.0
/1
 

.0
/1
?
]	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
^regularization_losses
_trainable_variables
?layers
 
 
 
?
a	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
bregularization_losses
ctrainable_variables
?layers
 

00
11
22
33
 

00
11
?
f	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
gregularization_losses
htrainable_variables
?layers

40
51
 

40
51
?
j	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
kregularization_losses
ltrainable_variables
?layers
 
 
 
?
n	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
oregularization_losses
ptrainable_variables
?layers
 

60
71
82
93
 

60
71
?
s	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
tregularization_losses
utrainable_variables
?layers

:0
;1
 

:0
;1
?
w	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
xregularization_losses
ytrainable_variables
?layers
 
 
 
?
{	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
|regularization_losses
}trainable_variables
?layers
 
*
,0
-1
22
33
84
95
 
 
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

,0
-1
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
20
31
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
%__inference_signature_wrapper_1351731
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_3/embeddings/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp/batch_normalization_4/gamma/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOpConst*"
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
 __inference__traced_save_1352889
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_3/embeddingsdense_12/kerneldense_12/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancedense_13/kerneldense_13/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancedense_14/kerneldense_14/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancedense_15/kerneldense_15/bias*!
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
#__inference__traced_restore_1352962??
?
?
D__inference_model_4_layer_call_and_return_conditional_losses_1351636

inputs
inputs_1
embedding_3_1351589
sequential_3_1351594
sequential_3_1351596
sequential_3_1351598
sequential_3_1351600
sequential_3_1351602
sequential_3_1351604
sequential_3_1351606
sequential_3_1351608
sequential_3_1351610
sequential_3_1351612
sequential_3_1351614
sequential_3_1351616
sequential_3_1351618
sequential_3_1351620
sequential_3_1351622
sequential_3_1351624
sequential_3_1351626
sequential_3_1351628
sequential_3_1351630
sequential_3_1351632
identity??#embedding_3/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_3_1351589*
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
H__inference_embedding_3_layer_call_and_return_conditional_losses_13512582%
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
F__inference_flatten_5_layer_call_and_return_conditional_losses_13512762
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
G__inference_multiply_3_layer_call_and_return_conditional_losses_13512902
multiply_3/PartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall#multiply_3/PartitionedCall:output:0sequential_3_1351594sequential_3_1351596sequential_3_1351598sequential_3_1351600sequential_3_1351602sequential_3_1351604sequential_3_1351606sequential_3_1351608sequential_3_1351610sequential_3_1351612sequential_3_1351614sequential_3_1351616sequential_3_1351618sequential_3_1351620sequential_3_1351622sequential_3_1351624sequential_3_1351626sequential_3_1351628sequential_3_1351630sequential_3_1351632* 
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_13512012&
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
?3
?

 __inference__traced_save_1352889
file_prefix5
1savev2_embedding_3_embeddings_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop:
6savev2_batch_normalization_4_gamma_read_readvariableop9
5savev2_batch_normalization_4_beta_read_readvariableop@
<savev2_batch_normalization_4_moving_mean_read_readvariableopD
@savev2_batch_normalization_4_moving_variance_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop:
6savev2_batch_normalization_5_gamma_read_readvariableop9
5savev2_batch_normalization_5_beta_read_readvariableop@
<savev2_batch_normalization_5_moving_mean_read_readvariableopD
@savev2_batch_normalization_5_moving_variance_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_3_embeddings_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop6savev2_batch_normalization_4_gamma_read_readvariableop5savev2_batch_normalization_4_beta_read_readvariableop<savev2_batch_normalization_4_moving_mean_read_readvariableop@savev2_batch_normalization_4_moving_variance_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop6savev2_batch_normalization_5_gamma_read_readvariableop5savev2_batch_normalization_5_beta_read_readvariableop<savev2_batch_normalization_5_moving_mean_read_readvariableop@savev2_batch_normalization_5_moving_variance_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :d:	d?:?:?:?:?:?:
??:?:?:?:?:?:
??:?:?:?:?:?:???:??: 2(
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
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!	

_output_shapes	
:?:!


_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:'#
!
_output_shapes
:???:"

_output_shapes

:??:

_output_shapes
: 
?	
?
E__inference_dense_14_layer_call_and_return_conditional_losses_1350874

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
?
H__inference_embedding_3_layer_call_and_return_conditional_losses_1351258

inputs
embedding_lookup_1351252
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_1351252inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/1351252*+
_output_shapes
:?????????d*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/1351252*+
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
?
?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1352737

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
?9
?
I__inference_sequential_3_layer_call_and_return_conditional_losses_1350988
dense_12_input
dense_12_1350737
dense_12_1350739!
batch_normalization_3_1350781!
batch_normalization_3_1350783!
batch_normalization_3_1350785!
batch_normalization_3_1350787
dense_13_1350811
dense_13_1350813!
batch_normalization_4_1350855!
batch_normalization_4_1350857!
batch_normalization_4_1350859!
batch_normalization_4_1350861
dense_14_1350885
dense_14_1350887!
batch_normalization_5_1350929!
batch_normalization_5_1350931!
batch_normalization_5_1350933!
batch_normalization_5_1350935
dense_15_1350960
dense_15_1350962
identity??-batch_normalization_3/StatefulPartitionedCall?-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCalldense_12_inputdense_12_1350737dense_12_1350739*
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
E__inference_dense_12_layer_call_and_return_conditional_losses_13507262"
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
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_13507472
leaky_re_lu_9/PartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0batch_normalization_3_1350781batch_normalization_3_1350783batch_normalization_3_1350785batch_normalization_3_1350787*
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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_13503882/
-batch_normalization_3/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0dense_13_1350811dense_13_1350813*
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
E__inference_dense_13_layer_call_and_return_conditional_losses_13508002"
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
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_13508212 
leaky_re_lu_10/PartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0batch_normalization_4_1350855batch_normalization_4_1350857batch_normalization_4_1350859batch_normalization_4_1350861*
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
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13505282/
-batch_normalization_4/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_14_1350885dense_14_1350887*
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
E__inference_dense_14_layer_call_and_return_conditional_losses_13508742"
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
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_13508952 
leaky_re_lu_11/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0batch_normalization_5_1350929batch_normalization_5_1350931batch_normalization_5_1350933batch_normalization_5_1350935*
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
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13506682/
-batch_normalization_5/StatefulPartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_15_1350960dense_15_1350962*
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
E__inference_dense_15_layer_call_and_return_conditional_losses_13509492"
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
F__inference_reshape_1_layer_call_and_return_conditional_losses_13509792
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
?9
?
I__inference_sequential_3_layer_call_and_return_conditional_losses_1351201

inputs
dense_12_1351149
dense_12_1351151!
batch_normalization_3_1351155!
batch_normalization_3_1351157!
batch_normalization_3_1351159!
batch_normalization_3_1351161
dense_13_1351164
dense_13_1351166!
batch_normalization_4_1351170!
batch_normalization_4_1351172!
batch_normalization_4_1351174!
batch_normalization_4_1351176
dense_14_1351179
dense_14_1351181!
batch_normalization_5_1351185!
batch_normalization_5_1351187!
batch_normalization_5_1351189!
batch_normalization_5_1351191
dense_15_1351194
dense_15_1351196
identity??-batch_normalization_3/StatefulPartitionedCall?-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCallinputsdense_12_1351149dense_12_1351151*
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
E__inference_dense_12_layer_call_and_return_conditional_losses_13507262"
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
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_13507472
leaky_re_lu_9/PartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0batch_normalization_3_1351155batch_normalization_3_1351157batch_normalization_3_1351159batch_normalization_3_1351161*
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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_13504212/
-batch_normalization_3/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0dense_13_1351164dense_13_1351166*
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
E__inference_dense_13_layer_call_and_return_conditional_losses_13508002"
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
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_13508212 
leaky_re_lu_10/PartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0batch_normalization_4_1351170batch_normalization_4_1351172batch_normalization_4_1351174batch_normalization_4_1351176*
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
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13505612/
-batch_normalization_4/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_14_1351179dense_14_1351181*
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
E__inference_dense_14_layer_call_and_return_conditional_losses_13508742"
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
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_13508952 
leaky_re_lu_11/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0batch_normalization_5_1351185batch_normalization_5_1351187batch_normalization_5_1351189batch_normalization_5_1351191*
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
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13507012/
-batch_normalization_5/StatefulPartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_15_1351194dense_15_1351196*
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
E__inference_dense_15_layer_call_and_return_conditional_losses_13509492"
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
F__inference_reshape_1_layer_call_and_return_conditional_losses_13509792
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
?
X
,__inference_multiply_3_layer_call_fn_1352112
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
G__inference_multiply_3_layer_call_and_return_conditional_losses_13512902
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
?
?
7__inference_batch_normalization_4_layer_call_fn_1352652

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
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13505612
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
?
L
0__inference_leaky_re_lu_11_layer_call_fn_1352681

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
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_13508952
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
?
?
.__inference_sequential_3_layer_call_fn_1351144
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_13511012
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
?
?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1350421

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
?
f
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_1350747

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
?
H__inference_embedding_3_layer_call_and_return_conditional_losses_1352082

inputs
embedding_lookup_1352076
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_1352076inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/1352076*+
_output_shapes
:?????????d*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/1352076*+
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
?0
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1350528

inputs
assignmovingavg_1350503
assignmovingavg_1_1350509)
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
loc:@AssignMovingAvg/1350503*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_1350503*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/1350503*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/1350503*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1350503AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/1350503*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/1350509*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_1350509*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/1350509*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/1350509*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_1350509AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/1350509*
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
?	
?
E__inference_dense_12_layer_call_and_return_conditional_losses_1352440

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
?	
?
E__inference_dense_13_layer_call_and_return_conditional_losses_1352551

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
?
?
7__inference_batch_normalization_3_layer_call_fn_1352528

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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_13503882
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
?
?
7__inference_batch_normalization_5_layer_call_fn_1352763

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
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13507012
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
?
?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1352515

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
E__inference_dense_14_layer_call_and_return_conditional_losses_1352662

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
?9
?
I__inference_sequential_3_layer_call_and_return_conditional_losses_1351101

inputs
dense_12_1351049
dense_12_1351051!
batch_normalization_3_1351055!
batch_normalization_3_1351057!
batch_normalization_3_1351059!
batch_normalization_3_1351061
dense_13_1351064
dense_13_1351066!
batch_normalization_4_1351070!
batch_normalization_4_1351072!
batch_normalization_4_1351074!
batch_normalization_4_1351076
dense_14_1351079
dense_14_1351081!
batch_normalization_5_1351085!
batch_normalization_5_1351087!
batch_normalization_5_1351089!
batch_normalization_5_1351091
dense_15_1351094
dense_15_1351096
identity??-batch_normalization_3/StatefulPartitionedCall?-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCallinputsdense_12_1351049dense_12_1351051*
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
E__inference_dense_12_layer_call_and_return_conditional_losses_13507262"
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
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_13507472
leaky_re_lu_9/PartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0batch_normalization_3_1351055batch_normalization_3_1351057batch_normalization_3_1351059batch_normalization_3_1351061*
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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_13503882/
-batch_normalization_3/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0dense_13_1351064dense_13_1351066*
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
E__inference_dense_13_layer_call_and_return_conditional_losses_13508002"
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
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_13508212 
leaky_re_lu_10/PartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0batch_normalization_4_1351070batch_normalization_4_1351072batch_normalization_4_1351074batch_normalization_4_1351076*
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
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13505282/
-batch_normalization_4/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_14_1351079dense_14_1351081*
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
E__inference_dense_14_layer_call_and_return_conditional_losses_13508742"
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
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_13508952 
leaky_re_lu_11/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0batch_normalization_5_1351085batch_normalization_5_1351087batch_normalization_5_1351089batch_normalization_5_1351091*
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
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13506682/
-batch_normalization_5/StatefulPartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_15_1351094dense_15_1351096*
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
E__inference_dense_15_layer_call_and_return_conditional_losses_13509492"
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
F__inference_reshape_1_layer_call_and_return_conditional_losses_13509792
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
?9
?
I__inference_sequential_3_layer_call_and_return_conditional_losses_1351043
dense_12_input
dense_12_1350991
dense_12_1350993!
batch_normalization_3_1350997!
batch_normalization_3_1350999!
batch_normalization_3_1351001!
batch_normalization_3_1351003
dense_13_1351006
dense_13_1351008!
batch_normalization_4_1351012!
batch_normalization_4_1351014!
batch_normalization_4_1351016!
batch_normalization_4_1351018
dense_14_1351021
dense_14_1351023!
batch_normalization_5_1351027!
batch_normalization_5_1351029!
batch_normalization_5_1351031!
batch_normalization_5_1351033
dense_15_1351036
dense_15_1351038
identity??-batch_normalization_3/StatefulPartitionedCall?-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCalldense_12_inputdense_12_1350991dense_12_1350993*
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
E__inference_dense_12_layer_call_and_return_conditional_losses_13507262"
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
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_13507472
leaky_re_lu_9/PartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0batch_normalization_3_1350997batch_normalization_3_1350999batch_normalization_3_1351001batch_normalization_3_1351003*
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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_13504212/
-batch_normalization_3/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0dense_13_1351006dense_13_1351008*
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
E__inference_dense_13_layer_call_and_return_conditional_losses_13508002"
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
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_13508212 
leaky_re_lu_10/PartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0batch_normalization_4_1351012batch_normalization_4_1351014batch_normalization_4_1351016batch_normalization_4_1351018*
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
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13505612/
-batch_normalization_4/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_14_1351021dense_14_1351023*
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
E__inference_dense_14_layer_call_and_return_conditional_losses_13508742"
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
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_13508952 
leaky_re_lu_11/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0batch_normalization_5_1351027batch_normalization_5_1351029batch_normalization_5_1351031batch_normalization_5_1351033*
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
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13507012/
-batch_normalization_5/StatefulPartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_15_1351036dense_15_1351038*
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
E__inference_dense_15_layer_call_and_return_conditional_losses_13509492"
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
F__inference_reshape_1_layer_call_and_return_conditional_losses_13509792
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
?
)__inference_model_4_layer_call_fn_1351582
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
D__inference_model_4_layer_call_and_return_conditional_losses_13515372
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
?
?
7__inference_batch_normalization_5_layer_call_fn_1352750

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
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13506682
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
?	
?
E__inference_dense_13_layer_call_and_return_conditional_losses_1350800

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
?
g
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_1350895

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
F__inference_reshape_1_layer_call_and_return_conditional_losses_1352797

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

*__inference_dense_13_layer_call_fn_1352560

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
E__inference_dense_13_layer_call_and_return_conditional_losses_13508002
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
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_1350821

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
)__inference_model_4_layer_call_fn_1352025
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
D__inference_model_4_layer_call_and_return_conditional_losses_13515372
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
?
s
-__inference_embedding_3_layer_call_fn_1352089

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
H__inference_embedding_3_layer_call_and_return_conditional_losses_13512582
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
?Y
?
#__inference__traced_restore_1352962
file_prefix+
'assignvariableop_embedding_3_embeddings&
"assignvariableop_1_dense_12_kernel$
 assignvariableop_2_dense_12_bias2
.assignvariableop_3_batch_normalization_3_gamma1
-assignvariableop_4_batch_normalization_3_beta8
4assignvariableop_5_batch_normalization_3_moving_mean<
8assignvariableop_6_batch_normalization_3_moving_variance&
"assignvariableop_7_dense_13_kernel$
 assignvariableop_8_dense_13_bias2
.assignvariableop_9_batch_normalization_4_gamma2
.assignvariableop_10_batch_normalization_4_beta9
5assignvariableop_11_batch_normalization_4_moving_mean=
9assignvariableop_12_batch_normalization_4_moving_variance'
#assignvariableop_13_dense_14_kernel%
!assignvariableop_14_dense_14_bias3
/assignvariableop_15_batch_normalization_5_gamma2
.assignvariableop_16_batch_normalization_5_beta9
5assignvariableop_17_batch_normalization_5_moving_mean=
9assignvariableop_18_batch_normalization_5_moving_variance'
#assignvariableop_19_dense_15_kernel%
!assignvariableop_20_dense_15_bias
identity_22??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
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
AssignVariableOp_5AssignVariableOp4assignvariableop_5_batch_normalization_3_moving_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp8assignvariableop_6_batch_normalization_3_moving_varianceIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_13_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_13_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_4_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp.assignvariableop_10_batch_normalization_4_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp5assignvariableop_11_batch_normalization_4_moving_meanIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp9assignvariableop_12_batch_normalization_4_moving_varianceIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_dense_14_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp!assignvariableop_14_dense_14_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_5_gammaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp.assignvariableop_16_batch_normalization_5_betaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp5assignvariableop_17_batch_normalization_5_moving_meanIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp9assignvariableop_18_batch_normalization_5_moving_varianceIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_dense_15_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp!assignvariableop_20_dense_15_biasIdentity_20:output:0"/device:CPU:0*
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
?0
?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1352495

inputs
assignmovingavg_1352470
assignmovingavg_1_1352476)
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
loc:@AssignMovingAvg/1352470*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_1352470*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/1352470*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/1352470*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1352470AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/1352470*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/1352476*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_1352476*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/1352476*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/1352476*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_1352476AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/1352476*
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
?
?
%__inference_signature_wrapper_1351731
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
"__inference__wrapped_model_13502922
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
)__inference_model_4_layer_call_fn_1351681
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
D__inference_model_4_layer_call_and_return_conditional_losses_13516362
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
?

*__inference_dense_14_layer_call_fn_1352671

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
E__inference_dense_14_layer_call_and_return_conditional_losses_13508742
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
?

*__inference_dense_15_layer_call_fn_1352783

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
E__inference_dense_15_layer_call_and_return_conditional_losses_13509492
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
?
?
.__inference_sequential_3_layer_call_fn_1352430

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
I__inference_sequential_3_layer_call_and_return_conditional_losses_13512012
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
?
b
F__inference_flatten_5_layer_call_and_return_conditional_losses_1351276

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
??
?
"__inference__wrapped_model_1350292
input_9
input_100
,model_4_embedding_3_embedding_lookup_1350197@
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
$model_4/embedding_3/embedding_lookupResourceGather,model_4_embedding_3_embedding_lookup_1350197input_10",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*?
_class5
31loc:@model_4/embedding_3/embedding_lookup/1350197*+
_output_shapes
:?????????d*
dtype02&
$model_4/embedding_3/embedding_lookup?
-model_4/embedding_3/embedding_lookup/IdentityIdentity-model_4/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*?
_class5
31loc:@model_4/embedding_3/embedding_lookup/1350197*+
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
?
?
)__inference_model_4_layer_call_fn_1352073
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
D__inference_model_4_layer_call_and_return_conditional_losses_13516362
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
K
/__inference_leaky_re_lu_9_layer_call_fn_1352459

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
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_13507472
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
?	
?
E__inference_dense_12_layer_call_and_return_conditional_losses_1350726

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
́
?
I__inference_sequential_3_layer_call_and_return_conditional_losses_1352250

inputs+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource1
-batch_normalization_3_assignmovingavg_13521303
/batch_normalization_3_assignmovingavg_1_1352136?
;batch_normalization_3_batchnorm_mul_readvariableop_resource;
7batch_normalization_3_batchnorm_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource1
-batch_normalization_4_assignmovingavg_13521693
/batch_normalization_4_assignmovingavg_1_1352175?
;batch_normalization_4_batchnorm_mul_readvariableop_resource;
7batch_normalization_4_batchnorm_readvariableop_resource+
'dense_14_matmul_readvariableop_resource,
(dense_14_biasadd_readvariableop_resource1
-batch_normalization_5_assignmovingavg_13522083
/batch_normalization_5_assignmovingavg_1_1352214?
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
42loc:@batch_normalization_3/AssignMovingAvg/1352130*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+batch_normalization_3/AssignMovingAvg/decay?
4batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_3_assignmovingavg_1352130*
_output_shapes	
:?*
dtype026
4batch_normalization_3/AssignMovingAvg/ReadVariableOp?
)batch_normalization_3/AssignMovingAvg/subSub<batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_3/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg/1352130*
_output_shapes	
:?2+
)batch_normalization_3/AssignMovingAvg/sub?
)batch_normalization_3/AssignMovingAvg/mulMul-batch_normalization_3/AssignMovingAvg/sub:z:04batch_normalization_3/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg/1352130*
_output_shapes	
:?2+
)batch_normalization_3/AssignMovingAvg/mul?
9batch_normalization_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_3_assignmovingavg_1352130-batch_normalization_3/AssignMovingAvg/mul:z:05^batch_normalization_3/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg/1352130*
_output_shapes
 *
dtype02;
9batch_normalization_3/AssignMovingAvg/AssignSubVariableOp?
-batch_normalization_3/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_3/AssignMovingAvg_1/1352136*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-batch_normalization_3/AssignMovingAvg_1/decay?
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_3_assignmovingavg_1_1352136*
_output_shapes	
:?*
dtype028
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_3/AssignMovingAvg_1/subSub>batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_3/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_3/AssignMovingAvg_1/1352136*
_output_shapes	
:?2-
+batch_normalization_3/AssignMovingAvg_1/sub?
+batch_normalization_3/AssignMovingAvg_1/mulMul/batch_normalization_3/AssignMovingAvg_1/sub:z:06batch_normalization_3/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_3/AssignMovingAvg_1/1352136*
_output_shapes	
:?2-
+batch_normalization_3/AssignMovingAvg_1/mul?
;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_3_assignmovingavg_1_1352136/batch_normalization_3/AssignMovingAvg_1/mul:z:07^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_3/AssignMovingAvg_1/1352136*
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
42loc:@batch_normalization_4/AssignMovingAvg/1352169*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+batch_normalization_4/AssignMovingAvg/decay?
4batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_4_assignmovingavg_1352169*
_output_shapes	
:?*
dtype026
4batch_normalization_4/AssignMovingAvg/ReadVariableOp?
)batch_normalization_4/AssignMovingAvg/subSub<batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_4/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_4/AssignMovingAvg/1352169*
_output_shapes	
:?2+
)batch_normalization_4/AssignMovingAvg/sub?
)batch_normalization_4/AssignMovingAvg/mulMul-batch_normalization_4/AssignMovingAvg/sub:z:04batch_normalization_4/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_4/AssignMovingAvg/1352169*
_output_shapes	
:?2+
)batch_normalization_4/AssignMovingAvg/mul?
9batch_normalization_4/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_4_assignmovingavg_1352169-batch_normalization_4/AssignMovingAvg/mul:z:05^batch_normalization_4/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_4/AssignMovingAvg/1352169*
_output_shapes
 *
dtype02;
9batch_normalization_4/AssignMovingAvg/AssignSubVariableOp?
-batch_normalization_4/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_4/AssignMovingAvg_1/1352175*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-batch_normalization_4/AssignMovingAvg_1/decay?
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_4_assignmovingavg_1_1352175*
_output_shapes	
:?*
dtype028
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_4/AssignMovingAvg_1/subSub>batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_4/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_4/AssignMovingAvg_1/1352175*
_output_shapes	
:?2-
+batch_normalization_4/AssignMovingAvg_1/sub?
+batch_normalization_4/AssignMovingAvg_1/mulMul/batch_normalization_4/AssignMovingAvg_1/sub:z:06batch_normalization_4/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_4/AssignMovingAvg_1/1352175*
_output_shapes	
:?2-
+batch_normalization_4/AssignMovingAvg_1/mul?
;batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_4_assignmovingavg_1_1352175/batch_normalization_4/AssignMovingAvg_1/mul:z:07^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_4/AssignMovingAvg_1/1352175*
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
42loc:@batch_normalization_5/AssignMovingAvg/1352208*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+batch_normalization_5/AssignMovingAvg/decay?
4batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_5_assignmovingavg_1352208*
_output_shapes	
:?*
dtype026
4batch_normalization_5/AssignMovingAvg/ReadVariableOp?
)batch_normalization_5/AssignMovingAvg/subSub<batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_5/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_5/AssignMovingAvg/1352208*
_output_shapes	
:?2+
)batch_normalization_5/AssignMovingAvg/sub?
)batch_normalization_5/AssignMovingAvg/mulMul-batch_normalization_5/AssignMovingAvg/sub:z:04batch_normalization_5/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_5/AssignMovingAvg/1352208*
_output_shapes	
:?2+
)batch_normalization_5/AssignMovingAvg/mul?
9batch_normalization_5/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_5_assignmovingavg_1352208-batch_normalization_5/AssignMovingAvg/mul:z:05^batch_normalization_5/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_5/AssignMovingAvg/1352208*
_output_shapes
 *
dtype02;
9batch_normalization_5/AssignMovingAvg/AssignSubVariableOp?
-batch_normalization_5/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_5/AssignMovingAvg_1/1352214*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-batch_normalization_5/AssignMovingAvg_1/decay?
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_5_assignmovingavg_1_1352214*
_output_shapes	
:?*
dtype028
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_5/AssignMovingAvg_1/subSub>batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_5/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_5/AssignMovingAvg_1/1352214*
_output_shapes	
:?2-
+batch_normalization_5/AssignMovingAvg_1/sub?
+batch_normalization_5/AssignMovingAvg_1/mulMul/batch_normalization_5/AssignMovingAvg_1/sub:z:06batch_normalization_5/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_5/AssignMovingAvg_1/1352214*
_output_shapes	
:?2-
+batch_normalization_5/AssignMovingAvg_1/mul?
;batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_5_assignmovingavg_1_1352214/batch_normalization_5/AssignMovingAvg_1/mul:z:07^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_5/AssignMovingAvg_1/1352214*
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
?
E__inference_dense_15_layer_call_and_return_conditional_losses_1352774

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
D__inference_model_4_layer_call_and_return_conditional_losses_1351482
input_9
input_10
embedding_3_1351435
sequential_3_1351440
sequential_3_1351442
sequential_3_1351444
sequential_3_1351446
sequential_3_1351448
sequential_3_1351450
sequential_3_1351452
sequential_3_1351454
sequential_3_1351456
sequential_3_1351458
sequential_3_1351460
sequential_3_1351462
sequential_3_1351464
sequential_3_1351466
sequential_3_1351468
sequential_3_1351470
sequential_3_1351472
sequential_3_1351474
sequential_3_1351476
sequential_3_1351478
identity??#embedding_3/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinput_10embedding_3_1351435*
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
H__inference_embedding_3_layer_call_and_return_conditional_losses_13512582%
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
F__inference_flatten_5_layer_call_and_return_conditional_losses_13512762
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
G__inference_multiply_3_layer_call_and_return_conditional_losses_13512902
multiply_3/PartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall#multiply_3/PartitionedCall:output:0sequential_3_1351440sequential_3_1351442sequential_3_1351444sequential_3_1351446sequential_3_1351448sequential_3_1351450sequential_3_1351452sequential_3_1351454sequential_3_1351456sequential_3_1351458sequential_3_1351460sequential_3_1351462sequential_3_1351464sequential_3_1351466sequential_3_1351468sequential_3_1351470sequential_3_1351472sequential_3_1351474sequential_3_1351476sequential_3_1351478* 
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_13512012&
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
?
.__inference_sequential_3_layer_call_fn_1351244
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_13512012
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
??
?
D__inference_model_4_layer_call_and_return_conditional_losses_1351977
inputs_0
inputs_1(
$embedding_3_embedding_lookup_13518828
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
embedding_3/embedding_lookupResourceGather$embedding_3_embedding_lookup_1351882inputs_1",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_3/embedding_lookup/1351882*+
_output_shapes
:?????????d*
dtype02
embedding_3/embedding_lookup?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_3/embedding_lookup/1351882*+
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
?0
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1352606

inputs
assignmovingavg_1352581
assignmovingavg_1_1352587)
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
loc:@AssignMovingAvg/1352581*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_1352581*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/1352581*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/1352581*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1352581AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/1352581*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/1352587*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_1352587*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/1352587*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/1352587*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_1352587AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/1352587*
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
?
G
+__inference_reshape_1_layer_call_fn_1352802

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
F__inference_reshape_1_layer_call_and_return_conditional_losses_13509792
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
?
?
D__inference_model_4_layer_call_and_return_conditional_losses_1351431
input_9
input_10
embedding_3_1351267
sequential_3_1351389
sequential_3_1351391
sequential_3_1351393
sequential_3_1351395
sequential_3_1351397
sequential_3_1351399
sequential_3_1351401
sequential_3_1351403
sequential_3_1351405
sequential_3_1351407
sequential_3_1351409
sequential_3_1351411
sequential_3_1351413
sequential_3_1351415
sequential_3_1351417
sequential_3_1351419
sequential_3_1351421
sequential_3_1351423
sequential_3_1351425
sequential_3_1351427
identity??#embedding_3/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinput_10embedding_3_1351267*
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
H__inference_embedding_3_layer_call_and_return_conditional_losses_13512582%
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
F__inference_flatten_5_layer_call_and_return_conditional_losses_13512762
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
G__inference_multiply_3_layer_call_and_return_conditional_losses_13512902
multiply_3/PartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall#multiply_3/PartitionedCall:output:0sequential_3_1351389sequential_3_1351391sequential_3_1351393sequential_3_1351395sequential_3_1351397sequential_3_1351399sequential_3_1351401sequential_3_1351403sequential_3_1351405sequential_3_1351407sequential_3_1351409sequential_3_1351411sequential_3_1351413sequential_3_1351415sequential_3_1351417sequential_3_1351419sequential_3_1351421sequential_3_1351423sequential_3_1351425sequential_3_1351427* 
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_13511012&
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
?0
?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1350388

inputs
assignmovingavg_1350363
assignmovingavg_1_1350369)
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
loc:@AssignMovingAvg/1350363*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_1350363*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/1350363*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/1350363*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1350363AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/1350363*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/1350369*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_1350369*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/1350369*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/1350369*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_1350369AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/1350369*
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
?

*__inference_dense_12_layer_call_fn_1352449

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
E__inference_dense_12_layer_call_and_return_conditional_losses_13507262
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
?
g
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_1352565

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
?
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1352626

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
f
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_1352454

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
q
G__inference_multiply_3_layer_call_and_return_conditional_losses_1351290

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
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1350668

inputs
assignmovingavg_1350643
assignmovingavg_1_1350649)
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
loc:@AssignMovingAvg/1350643*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_1350643*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/1350643*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/1350643*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1350643AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/1350643*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/1350649*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_1350649*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/1350649*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/1350649*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_1350649AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/1350649*
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
??
?
D__inference_model_4_layer_call_and_return_conditional_losses_1351878
inputs_0
inputs_1(
$embedding_3_embedding_lookup_13517358
4sequential_3_dense_12_matmul_readvariableop_resource9
5sequential_3_dense_12_biasadd_readvariableop_resource>
:sequential_3_batch_normalization_3_assignmovingavg_1351758@
<sequential_3_batch_normalization_3_assignmovingavg_1_1351764L
Hsequential_3_batch_normalization_3_batchnorm_mul_readvariableop_resourceH
Dsequential_3_batch_normalization_3_batchnorm_readvariableop_resource8
4sequential_3_dense_13_matmul_readvariableop_resource9
5sequential_3_dense_13_biasadd_readvariableop_resource>
:sequential_3_batch_normalization_4_assignmovingavg_1351797@
<sequential_3_batch_normalization_4_assignmovingavg_1_1351803L
Hsequential_3_batch_normalization_4_batchnorm_mul_readvariableop_resourceH
Dsequential_3_batch_normalization_4_batchnorm_readvariableop_resource8
4sequential_3_dense_14_matmul_readvariableop_resource9
5sequential_3_dense_14_biasadd_readvariableop_resource>
:sequential_3_batch_normalization_5_assignmovingavg_1351836@
<sequential_3_batch_normalization_5_assignmovingavg_1_1351842L
Hsequential_3_batch_normalization_5_batchnorm_mul_readvariableop_resourceH
Dsequential_3_batch_normalization_5_batchnorm_readvariableop_resource8
4sequential_3_dense_15_matmul_readvariableop_resource9
5sequential_3_dense_15_biasadd_readvariableop_resource
identity??embedding_3/embedding_lookup?Fsequential_3/batch_normalization_3/AssignMovingAvg/AssignSubVariableOp?Asequential_3/batch_normalization_3/AssignMovingAvg/ReadVariableOp?Hsequential_3/batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp?Csequential_3/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp?;sequential_3/batch_normalization_3/batchnorm/ReadVariableOp??sequential_3/batch_normalization_3/batchnorm/mul/ReadVariableOp?Fsequential_3/batch_normalization_4/AssignMovingAvg/AssignSubVariableOp?Asequential_3/batch_normalization_4/AssignMovingAvg/ReadVariableOp?Hsequential_3/batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOp?Csequential_3/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?;sequential_3/batch_normalization_4/batchnorm/ReadVariableOp??sequential_3/batch_normalization_4/batchnorm/mul/ReadVariableOp?Fsequential_3/batch_normalization_5/AssignMovingAvg/AssignSubVariableOp?Asequential_3/batch_normalization_5/AssignMovingAvg/ReadVariableOp?Hsequential_3/batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp?Csequential_3/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp?;sequential_3/batch_normalization_5/batchnorm/ReadVariableOp??sequential_3/batch_normalization_5/batchnorm/mul/ReadVariableOp?,sequential_3/dense_12/BiasAdd/ReadVariableOp?+sequential_3/dense_12/MatMul/ReadVariableOp?,sequential_3/dense_13/BiasAdd/ReadVariableOp?+sequential_3/dense_13/MatMul/ReadVariableOp?,sequential_3/dense_14/BiasAdd/ReadVariableOp?+sequential_3/dense_14/MatMul/ReadVariableOp?,sequential_3/dense_15/BiasAdd/ReadVariableOp?+sequential_3/dense_15/MatMul/ReadVariableOp?
embedding_3/embedding_lookupResourceGather$embedding_3_embedding_lookup_1351735inputs_1",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_3/embedding_lookup/1351735*+
_output_shapes
:?????????d*
dtype02
embedding_3/embedding_lookup?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_3/embedding_lookup/1351735*+
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
A?loc:@sequential_3/batch_normalization_3/AssignMovingAvg/1351758*
_output_shapes
: *
dtype0*
valueB
 *??L>2:
8sequential_3/batch_normalization_3/AssignMovingAvg/decay?
Asequential_3/batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOp:sequential_3_batch_normalization_3_assignmovingavg_1351758*
_output_shapes	
:?*
dtype02C
Asequential_3/batch_normalization_3/AssignMovingAvg/ReadVariableOp?
6sequential_3/batch_normalization_3/AssignMovingAvg/subSubIsequential_3/batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:0;sequential_3/batch_normalization_3/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_3/batch_normalization_3/AssignMovingAvg/1351758*
_output_shapes	
:?28
6sequential_3/batch_normalization_3/AssignMovingAvg/sub?
6sequential_3/batch_normalization_3/AssignMovingAvg/mulMul:sequential_3/batch_normalization_3/AssignMovingAvg/sub:z:0Asequential_3/batch_normalization_3/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_3/batch_normalization_3/AssignMovingAvg/1351758*
_output_shapes	
:?28
6sequential_3/batch_normalization_3/AssignMovingAvg/mul?
Fsequential_3/batch_normalization_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp:sequential_3_batch_normalization_3_assignmovingavg_1351758:sequential_3/batch_normalization_3/AssignMovingAvg/mul:z:0B^sequential_3/batch_normalization_3/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_3/batch_normalization_3/AssignMovingAvg/1351758*
_output_shapes
 *
dtype02H
Fsequential_3/batch_normalization_3/AssignMovingAvg/AssignSubVariableOp?
:sequential_3/batch_normalization_3/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_3/batch_normalization_3/AssignMovingAvg_1/1351764*
_output_shapes
: *
dtype0*
valueB
 *??L>2<
:sequential_3/batch_normalization_3/AssignMovingAvg_1/decay?
Csequential_3/batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp<sequential_3_batch_normalization_3_assignmovingavg_1_1351764*
_output_shapes	
:?*
dtype02E
Csequential_3/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp?
8sequential_3/batch_normalization_3/AssignMovingAvg_1/subSubKsequential_3/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:0=sequential_3/batch_normalization_3/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_3/batch_normalization_3/AssignMovingAvg_1/1351764*
_output_shapes	
:?2:
8sequential_3/batch_normalization_3/AssignMovingAvg_1/sub?
8sequential_3/batch_normalization_3/AssignMovingAvg_1/mulMul<sequential_3/batch_normalization_3/AssignMovingAvg_1/sub:z:0Csequential_3/batch_normalization_3/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_3/batch_normalization_3/AssignMovingAvg_1/1351764*
_output_shapes	
:?2:
8sequential_3/batch_normalization_3/AssignMovingAvg_1/mul?
Hsequential_3/batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp<sequential_3_batch_normalization_3_assignmovingavg_1_1351764<sequential_3/batch_normalization_3/AssignMovingAvg_1/mul:z:0D^sequential_3/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_3/batch_normalization_3/AssignMovingAvg_1/1351764*
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
A?loc:@sequential_3/batch_normalization_4/AssignMovingAvg/1351797*
_output_shapes
: *
dtype0*
valueB
 *??L>2:
8sequential_3/batch_normalization_4/AssignMovingAvg/decay?
Asequential_3/batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOp:sequential_3_batch_normalization_4_assignmovingavg_1351797*
_output_shapes	
:?*
dtype02C
Asequential_3/batch_normalization_4/AssignMovingAvg/ReadVariableOp?
6sequential_3/batch_normalization_4/AssignMovingAvg/subSubIsequential_3/batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0;sequential_3/batch_normalization_4/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_3/batch_normalization_4/AssignMovingAvg/1351797*
_output_shapes	
:?28
6sequential_3/batch_normalization_4/AssignMovingAvg/sub?
6sequential_3/batch_normalization_4/AssignMovingAvg/mulMul:sequential_3/batch_normalization_4/AssignMovingAvg/sub:z:0Asequential_3/batch_normalization_4/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_3/batch_normalization_4/AssignMovingAvg/1351797*
_output_shapes	
:?28
6sequential_3/batch_normalization_4/AssignMovingAvg/mul?
Fsequential_3/batch_normalization_4/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp:sequential_3_batch_normalization_4_assignmovingavg_1351797:sequential_3/batch_normalization_4/AssignMovingAvg/mul:z:0B^sequential_3/batch_normalization_4/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_3/batch_normalization_4/AssignMovingAvg/1351797*
_output_shapes
 *
dtype02H
Fsequential_3/batch_normalization_4/AssignMovingAvg/AssignSubVariableOp?
:sequential_3/batch_normalization_4/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_3/batch_normalization_4/AssignMovingAvg_1/1351803*
_output_shapes
: *
dtype0*
valueB
 *??L>2<
:sequential_3/batch_normalization_4/AssignMovingAvg_1/decay?
Csequential_3/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOp<sequential_3_batch_normalization_4_assignmovingavg_1_1351803*
_output_shapes	
:?*
dtype02E
Csequential_3/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?
8sequential_3/batch_normalization_4/AssignMovingAvg_1/subSubKsequential_3/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:0=sequential_3/batch_normalization_4/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_3/batch_normalization_4/AssignMovingAvg_1/1351803*
_output_shapes	
:?2:
8sequential_3/batch_normalization_4/AssignMovingAvg_1/sub?
8sequential_3/batch_normalization_4/AssignMovingAvg_1/mulMul<sequential_3/batch_normalization_4/AssignMovingAvg_1/sub:z:0Csequential_3/batch_normalization_4/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_3/batch_normalization_4/AssignMovingAvg_1/1351803*
_output_shapes	
:?2:
8sequential_3/batch_normalization_4/AssignMovingAvg_1/mul?
Hsequential_3/batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp<sequential_3_batch_normalization_4_assignmovingavg_1_1351803<sequential_3/batch_normalization_4/AssignMovingAvg_1/mul:z:0D^sequential_3/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_3/batch_normalization_4/AssignMovingAvg_1/1351803*
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
A?loc:@sequential_3/batch_normalization_5/AssignMovingAvg/1351836*
_output_shapes
: *
dtype0*
valueB
 *??L>2:
8sequential_3/batch_normalization_5/AssignMovingAvg/decay?
Asequential_3/batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp:sequential_3_batch_normalization_5_assignmovingavg_1351836*
_output_shapes	
:?*
dtype02C
Asequential_3/batch_normalization_5/AssignMovingAvg/ReadVariableOp?
6sequential_3/batch_normalization_5/AssignMovingAvg/subSubIsequential_3/batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0;sequential_3/batch_normalization_5/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_3/batch_normalization_5/AssignMovingAvg/1351836*
_output_shapes	
:?28
6sequential_3/batch_normalization_5/AssignMovingAvg/sub?
6sequential_3/batch_normalization_5/AssignMovingAvg/mulMul:sequential_3/batch_normalization_5/AssignMovingAvg/sub:z:0Asequential_3/batch_normalization_5/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_3/batch_normalization_5/AssignMovingAvg/1351836*
_output_shapes	
:?28
6sequential_3/batch_normalization_5/AssignMovingAvg/mul?
Fsequential_3/batch_normalization_5/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp:sequential_3_batch_normalization_5_assignmovingavg_1351836:sequential_3/batch_normalization_5/AssignMovingAvg/mul:z:0B^sequential_3/batch_normalization_5/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_3/batch_normalization_5/AssignMovingAvg/1351836*
_output_shapes
 *
dtype02H
Fsequential_3/batch_normalization_5/AssignMovingAvg/AssignSubVariableOp?
:sequential_3/batch_normalization_5/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_3/batch_normalization_5/AssignMovingAvg_1/1351842*
_output_shapes
: *
dtype0*
valueB
 *??L>2<
:sequential_3/batch_normalization_5/AssignMovingAvg_1/decay?
Csequential_3/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp<sequential_3_batch_normalization_5_assignmovingavg_1_1351842*
_output_shapes	
:?*
dtype02E
Csequential_3/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp?
8sequential_3/batch_normalization_5/AssignMovingAvg_1/subSubKsequential_3/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:0=sequential_3/batch_normalization_5/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_3/batch_normalization_5/AssignMovingAvg_1/1351842*
_output_shapes	
:?2:
8sequential_3/batch_normalization_5/AssignMovingAvg_1/sub?
8sequential_3/batch_normalization_5/AssignMovingAvg_1/mulMul<sequential_3/batch_normalization_5/AssignMovingAvg_1/sub:z:0Csequential_3/batch_normalization_5/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_3/batch_normalization_5/AssignMovingAvg_1/1351842*
_output_shapes	
:?2:
8sequential_3/batch_normalization_5/AssignMovingAvg_1/mul?
Hsequential_3/batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp<sequential_3_batch_normalization_5_assignmovingavg_1_1351842<sequential_3/batch_normalization_5/AssignMovingAvg_1/mul:z:0D^sequential_3/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_3/batch_normalization_5/AssignMovingAvg_1/1351842*
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
E__inference_dense_15_layer_call_and_return_conditional_losses_1350949

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
?
b
F__inference_reshape_1_layer_call_and_return_conditional_losses_1350979

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
7__inference_batch_normalization_3_layer_call_fn_1352541

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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_13504212
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
?
s
G__inference_multiply_3_layer_call_and_return_conditional_losses_1352106
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
?
?
D__inference_model_4_layer_call_and_return_conditional_losses_1351537

inputs
inputs_1
embedding_3_1351490
sequential_3_1351495
sequential_3_1351497
sequential_3_1351499
sequential_3_1351501
sequential_3_1351503
sequential_3_1351505
sequential_3_1351507
sequential_3_1351509
sequential_3_1351511
sequential_3_1351513
sequential_3_1351515
sequential_3_1351517
sequential_3_1351519
sequential_3_1351521
sequential_3_1351523
sequential_3_1351525
sequential_3_1351527
sequential_3_1351529
sequential_3_1351531
sequential_3_1351533
identity??#embedding_3/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_3_1351490*
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
H__inference_embedding_3_layer_call_and_return_conditional_losses_13512582%
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
F__inference_flatten_5_layer_call_and_return_conditional_losses_13512762
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
G__inference_multiply_3_layer_call_and_return_conditional_losses_13512902
multiply_3/PartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall#multiply_3/PartitionedCall:output:0sequential_3_1351495sequential_3_1351497sequential_3_1351499sequential_3_1351501sequential_3_1351503sequential_3_1351505sequential_3_1351507sequential_3_1351509sequential_3_1351511sequential_3_1351513sequential_3_1351515sequential_3_1351517sequential_3_1351519sequential_3_1351521sequential_3_1351523sequential_3_1351525sequential_3_1351527sequential_3_1351529sequential_3_1351531sequential_3_1351533* 
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_13511012&
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
?
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1350561

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
?
.__inference_sequential_3_layer_call_fn_1352385

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
I__inference_sequential_3_layer_call_and_return_conditional_losses_13511012
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
݉
?
I__inference_sequential_3_layer_call_and_return_conditional_losses_1352340

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
?
?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1350701

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
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_1352676

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
0__inference_leaky_re_lu_10_layer_call_fn_1352570

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
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_13508212
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
?
b
F__inference_flatten_5_layer_call_and_return_conditional_losses_1352095

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
?
?
7__inference_batch_normalization_4_layer_call_fn_1352639

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
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13505282
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
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1352717

inputs
assignmovingavg_1352692
assignmovingavg_1_1352698)
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
loc:@AssignMovingAvg/1352692*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_1352692*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/1352692*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/1352692*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1352692AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/1352692*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/1352698*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_1352698*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/1352698*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/1352698*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_1352698AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/1352698*
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
?
G
+__inference_flatten_5_layer_call_fn_1352100

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
F__inference_flatten_5_layer_call_and_return_conditional_losses_13512762
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
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"?b
_tf_keras_network?b{"class_name": "Functional", "name": "model_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_10"}, "name": "input_10", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 26, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_3", "inbound_nodes": [[["input_10", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_9"}, "name": "input_9", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_5", "inbound_nodes": [[["embedding_3", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "multiply_3", "trainable": true, "dtype": "float32"}, "name": "multiply_3", "inbound_nodes": [[["input_9", 0, 0, {}], ["flatten_5", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_12_input"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_1", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}]}, "name": "sequential_3", "inbound_nodes": [[["multiply_3", 0, 0, {}]]]}], "input_layers": [["input_9", 0, 0], ["input_10", 0, 0]], "output_layers": [["sequential_3", 1, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 100]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 100]}, {"class_name": "TensorShape", "items": [null, 1]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_10"}, "name": "input_10", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 26, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_3", "inbound_nodes": [[["input_10", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_9"}, "name": "input_9", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_5", "inbound_nodes": [[["embedding_3", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "multiply_3", "trainable": true, "dtype": "float32"}, "name": "multiply_3", "inbound_nodes": [[["input_9", 0, 0, {}], ["flatten_5", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_12_input"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_1", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}]}, "name": "sequential_3", "inbound_nodes": [[["multiply_3", 0, 0, {}]]]}], "input_layers": [["input_9", 0, 0], ["input_10", 0, 0]], "output_layers": [["sequential_3", 1, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_10", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_10"}}
?

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 26, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_9", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_9"}}
?
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?
	variables
regularization_losses
trainable_variables
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
$	variables
%regularization_losses
&trainable_variables
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
514
615
716
817
918
:19
;20"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
(1
)2
*3
+4
.5
/6
07
18
49
510
611
712
:13
;14"
trackable_list_wrapper
?
	variables
<metrics
=non_trainable_variables
>layer_regularization_losses
?layer_metrics
regularization_losses
	trainable_variables

@layers
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
(:&d2embedding_3/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
	variables
Ametrics
Bnon_trainable_variables
Clayer_metrics
Dlayer_regularization_losses
regularization_losses
trainable_variables

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
	variables
Fmetrics
Gnon_trainable_variables
Hlayer_metrics
Ilayer_regularization_losses
regularization_losses
trainable_variables

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
	variables
Kmetrics
Lnon_trainable_variables
Mlayer_metrics
Nlayer_regularization_losses
regularization_losses
trainable_variables

Olayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

(kernel
)bias
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}
?	
Xaxis
	*gamma
+beta
,moving_mean
-moving_variance
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

.kernel
/bias
]	variables
^regularization_losses
_trainable_variables
`	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
a	variables
bregularization_losses
ctrainable_variables
d	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}
?	
eaxis
	0gamma
1beta
2moving_mean
3moving_variance
f	variables
gregularization_losses
htrainable_variables
i	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?

4kernel
5bias
j	variables
kregularization_losses
ltrainable_variables
m	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?
n	variables
oregularization_losses
ptrainable_variables
q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}
?	
raxis
	6gamma
7beta
8moving_mean
9moving_variance
s	variables
tregularization_losses
utrainable_variables
v	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?

:kernel
;bias
w	variables
xregularization_losses
ytrainable_variables
z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
{	variables
|regularization_losses
}trainable_variables
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
513
614
715
816
917
:18
;19"
trackable_list_wrapper
 "
trackable_list_wrapper
?
(0
)1
*2
+3
.4
/5
06
17
48
59
610
711
:12
;13"
trackable_list_wrapper
?
$	variables
metrics
?non_trainable_variables
 ?layer_regularization_losses
?layer_metrics
%regularization_losses
&trainable_variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	d?2dense_12/kernel
:?2dense_12/bias
*:(?2batch_normalization_3/gamma
):'?2batch_normalization_3/beta
2:0? (2!batch_normalization_3/moving_mean
6:4? (2%batch_normalization_3/moving_variance
#:!
??2dense_13/kernel
:?2dense_13/bias
*:(?2batch_normalization_4/gamma
):'?2batch_normalization_4/beta
2:0? (2!batch_normalization_4/moving_mean
6:4? (2%batch_normalization_4/moving_variance
#:!
??2dense_14/kernel
:?2dense_14/bias
*:(?2batch_normalization_5/gamma
):'?2batch_normalization_5/beta
2:0? (2!batch_normalization_5/moving_mean
6:4? (2%batch_normalization_5/moving_variance
$:"???2dense_15/kernel
:??2dense_15/bias
 "
trackable_list_wrapper
J
,0
-1
22
33
84
95"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
?
P	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
Qregularization_losses
Rtrainable_variables
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
T	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
Uregularization_losses
Vtrainable_variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
*0
+1
,2
-3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
?
Y	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
Zregularization_losses
[trainable_variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
?
]	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
^regularization_losses
_trainable_variables
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
a	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
bregularization_losses
ctrainable_variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
00
11
22
33"
trackable_list_wrapper
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
?
f	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
gregularization_losses
htrainable_variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
?
j	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
kregularization_losses
ltrainable_variables
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
n	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
oregularization_losses
ptrainable_variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
60
71
82
93"
trackable_list_wrapper
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
?
s	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
tregularization_losses
utrainable_variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
?
w	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
xregularization_losses
ytrainable_variables
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
{	variables
?metrics
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
|regularization_losses
}trainable_variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
,0
-1
22
33
84
95"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
,0
-1"
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
20
31"
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
80
91"
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
?2?
"__inference__wrapped_model_1350292?
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
?2?
)__inference_model_4_layer_call_fn_1352025
)__inference_model_4_layer_call_fn_1351681
)__inference_model_4_layer_call_fn_1351582
)__inference_model_4_layer_call_fn_1352073?
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
D__inference_model_4_layer_call_and_return_conditional_losses_1351977
D__inference_model_4_layer_call_and_return_conditional_losses_1351878
D__inference_model_4_layer_call_and_return_conditional_losses_1351431
D__inference_model_4_layer_call_and_return_conditional_losses_1351482?
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
-__inference_embedding_3_layer_call_fn_1352089?
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
H__inference_embedding_3_layer_call_and_return_conditional_losses_1352082?
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
+__inference_flatten_5_layer_call_fn_1352100?
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
F__inference_flatten_5_layer_call_and_return_conditional_losses_1352095?
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
,__inference_multiply_3_layer_call_fn_1352112?
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
G__inference_multiply_3_layer_call_and_return_conditional_losses_1352106?
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
.__inference_sequential_3_layer_call_fn_1352430
.__inference_sequential_3_layer_call_fn_1351144
.__inference_sequential_3_layer_call_fn_1351244
.__inference_sequential_3_layer_call_fn_1352385?
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_1352250
I__inference_sequential_3_layer_call_and_return_conditional_losses_1350988
I__inference_sequential_3_layer_call_and_return_conditional_losses_1351043
I__inference_sequential_3_layer_call_and_return_conditional_losses_1352340?
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
%__inference_signature_wrapper_1351731input_10input_9"?
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
*__inference_dense_12_layer_call_fn_1352449?
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
E__inference_dense_12_layer_call_and_return_conditional_losses_1352440?
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
/__inference_leaky_re_lu_9_layer_call_fn_1352459?
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
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_1352454?
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
7__inference_batch_normalization_3_layer_call_fn_1352541
7__inference_batch_normalization_3_layer_call_fn_1352528?
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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1352515
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1352495?
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
*__inference_dense_13_layer_call_fn_1352560?
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
E__inference_dense_13_layer_call_and_return_conditional_losses_1352551?
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
0__inference_leaky_re_lu_10_layer_call_fn_1352570?
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
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_1352565?
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
7__inference_batch_normalization_4_layer_call_fn_1352652
7__inference_batch_normalization_4_layer_call_fn_1352639?
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
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1352606
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1352626?
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
*__inference_dense_14_layer_call_fn_1352671?
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
E__inference_dense_14_layer_call_and_return_conditional_losses_1352662?
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
0__inference_leaky_re_lu_11_layer_call_fn_1352681?
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
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_1352676?
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
7__inference_batch_normalization_5_layer_call_fn_1352750
7__inference_batch_normalization_5_layer_call_fn_1352763?
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
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1352737
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1352717?
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
*__inference_dense_15_layer_call_fn_1352783?
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
E__inference_dense_15_layer_call_and_return_conditional_losses_1352774?
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
+__inference_reshape_1_layer_call_fn_1352802?
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
F__inference_reshape_1_layer_call_and_return_conditional_losses_1352797?
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
"__inference__wrapped_model_1350292?()-*,+./3021459687:;Y?V
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
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1352495d,-*+4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1352515d-*,+4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_3_layer_call_fn_1352528W,-*+4?1
*?'
!?
inputs??????????
p
? "????????????
7__inference_batch_normalization_3_layer_call_fn_1352541W-*,+4?1
*?'
!?
inputs??????????
p 
? "????????????
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1352606d23014?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1352626d30214?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_4_layer_call_fn_1352639W23014?1
*?'
!?
inputs??????????
p
? "????????????
7__inference_batch_normalization_4_layer_call_fn_1352652W30214?1
*?'
!?
inputs??????????
p 
? "????????????
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1352717d89674?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1352737d96874?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_5_layer_call_fn_1352750W89674?1
*?'
!?
inputs??????????
p
? "????????????
7__inference_batch_normalization_5_layer_call_fn_1352763W96874?1
*?'
!?
inputs??????????
p 
? "????????????
E__inference_dense_12_layer_call_and_return_conditional_losses_1352440]()/?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????
? ~
*__inference_dense_12_layer_call_fn_1352449P()/?,
%?"
 ?
inputs?????????d
? "????????????
E__inference_dense_13_layer_call_and_return_conditional_losses_1352551^./0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_13_layer_call_fn_1352560Q./0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_14_layer_call_and_return_conditional_losses_1352662^450?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_14_layer_call_fn_1352671Q450?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_15_layer_call_and_return_conditional_losses_1352774_:;0?-
&?#
!?
inputs??????????
? "'?$
?
0???????????
? ?
*__inference_dense_15_layer_call_fn_1352783R:;0?-
&?#
!?
inputs??????????
? "?????????????
H__inference_embedding_3_layer_call_and_return_conditional_losses_1352082_/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????d
? ?
-__inference_embedding_3_layer_call_fn_1352089R/?,
%?"
 ?
inputs?????????
? "??????????d?
F__inference_flatten_5_layer_call_and_return_conditional_losses_1352095\3?0
)?&
$?!
inputs?????????d
? "%?"
?
0?????????d
? ~
+__inference_flatten_5_layer_call_fn_1352100O3?0
)?&
$?!
inputs?????????d
? "??????????d?
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_1352565Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_leaky_re_lu_10_layer_call_fn_1352570M0?-
&?#
!?
inputs??????????
? "????????????
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_1352676Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_leaky_re_lu_11_layer_call_fn_1352681M0?-
&?#
!?
inputs??????????
? "????????????
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_1352454Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_leaky_re_lu_9_layer_call_fn_1352459M0?-
&?#
!?
inputs??????????
? "????????????
D__inference_model_4_layer_call_and_return_conditional_losses_1351431?(),-*+./2301458967:;a?^
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
D__inference_model_4_layer_call_and_return_conditional_losses_1351482?()-*,+./3021459687:;a?^
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
D__inference_model_4_layer_call_and_return_conditional_losses_1351878?(),-*+./2301458967:;b?_
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
D__inference_model_4_layer_call_and_return_conditional_losses_1351977?()-*,+./3021459687:;b?_
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
)__inference_model_4_layer_call_fn_1351582?(),-*+./2301458967:;a?^
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
)__inference_model_4_layer_call_fn_1351681?()-*,+./3021459687:;a?^
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
)__inference_model_4_layer_call_fn_1352025?(),-*+./2301458967:;b?_
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
)__inference_model_4_layer_call_fn_1352073?()-*,+./3021459687:;b?_
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
G__inference_multiply_3_layer_call_and_return_conditional_losses_1352106?Z?W
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
,__inference_multiply_3_layer_call_fn_1352112vZ?W
P?M
K?H
"?
inputs/0?????????d
"?
inputs/1?????????d
? "??????????d?
F__inference_reshape_1_layer_call_and_return_conditional_losses_1352797d1?.
'?$
"?
inputs???????????
? "/?,
%?"
0???????????
? ?
+__inference_reshape_1_layer_call_fn_1352802W1?.
'?$
"?
inputs???????????
? ""?????????????
I__inference_sequential_3_layer_call_and_return_conditional_losses_1350988?(),-*+./2301458967:;??<
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_1351043?()-*,+./3021459687:;??<
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_1352250?(),-*+./2301458967:;7?4
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_1352340?()-*,+./3021459687:;7?4
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
.__inference_sequential_3_layer_call_fn_1351144{(),-*+./2301458967:;??<
5?2
(?%
dense_12_input?????????d
p

 
? ""?????????????
.__inference_sequential_3_layer_call_fn_1351244{()-*,+./3021459687:;??<
5?2
(?%
dense_12_input?????????d
p 

 
? ""?????????????
.__inference_sequential_3_layer_call_fn_1352385s(),-*+./2301458967:;7?4
-?*
 ?
inputs?????????d
p

 
? ""?????????????
.__inference_sequential_3_layer_call_fn_1352430s()-*,+./3021459687:;7?4
-?*
 ?
inputs?????????d
p 

 
? ""?????????????
%__inference_signature_wrapper_1351731?()-*,+./3021459687:;k?h
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