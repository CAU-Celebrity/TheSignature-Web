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
embedding_5/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:pd*'
shared_nameembedding_5/embeddings
?
*embedding_5/embeddings/Read/ReadVariableOpReadVariableOpembedding_5/embeddings*
_output_shapes

:pd*
dtype0
{
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?* 
shared_namedense_20/kernel
t
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes
:	d?*
dtype0
s
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_20/bias
l
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_6/gamma
?
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_6/beta
?
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes	
:?*
dtype0
|
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_21/kernel
u
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel* 
_output_shapes
:
??*
dtype0
s
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_21/bias
l
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_7/gamma
?
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_7/beta
?
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes	
:?*
dtype0
|
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_22/kernel
u
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel* 
_output_shapes
:
??*
dtype0
s
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_22/bias
l
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_8/gamma
?
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_8/beta
?
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes	
:?*
dtype0
}
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???* 
shared_namedense_23/kernel
v
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*!
_output_shapes
:???*
dtype0
t
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*
shared_namedense_23/bias
m
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes

:??*
dtype0
?
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_6/moving_mean
?
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_6/moving_variance
?
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes	
:?*
dtype0
?
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_7/moving_mean
?
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_7/moving_variance
?
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes	
:?*
dtype0
?
!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_8/moving_mean
?
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_8/moving_variance
?
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
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
regularization_losses
trainable_variables
		variables

	keras_api

signatures
 
b

embeddings
regularization_losses
trainable_variables
	variables
	keras_api
 
R
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
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
$regularization_losses
%trainable_variables
&	variables
'	keras_api
 
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
?
<layer_regularization_losses
regularization_losses
=layer_metrics

>layers
trainable_variables
?non_trainable_variables
		variables
@metrics
 
fd
VARIABLE_VALUEembedding_5/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
?
Alayer_regularization_losses
regularization_losses
Blayer_metrics

Clayers
trainable_variables
Dnon_trainable_variables
	variables
Emetrics
 
 
 
?
Flayer_regularization_losses
regularization_losses
Glayer_metrics

Hlayers
trainable_variables
Inon_trainable_variables
	variables
Jmetrics
 
 
 
?
Klayer_regularization_losses
regularization_losses
Llayer_metrics

Mlayers
trainable_variables
Nnon_trainable_variables
	variables
Ometrics
h

(kernel
)bias
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
R
Tregularization_losses
Utrainable_variables
V	variables
W	keras_api
?
Xaxis
	*gamma
+beta
6moving_mean
7moving_variance
Yregularization_losses
Ztrainable_variables
[	variables
\	keras_api
h

,kernel
-bias
]regularization_losses
^trainable_variables
_	variables
`	keras_api
R
aregularization_losses
btrainable_variables
c	variables
d	keras_api
?
eaxis
	.gamma
/beta
8moving_mean
9moving_variance
fregularization_losses
gtrainable_variables
h	variables
i	keras_api
h

0kernel
1bias
jregularization_losses
ktrainable_variables
l	variables
m	keras_api
R
nregularization_losses
otrainable_variables
p	variables
q	keras_api
?
raxis
	2gamma
3beta
:moving_mean
;moving_variance
sregularization_losses
ttrainable_variables
u	variables
v	keras_api
h

4kernel
5bias
wregularization_losses
xtrainable_variables
y	variables
z	keras_api
R
{regularization_losses
|trainable_variables
}	variables
~	keras_api
 
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
?
layer_regularization_losses
$regularization_losses
?layer_metrics
?layers
%trainable_variables
?non_trainable_variables
&	variables
?metrics
US
VARIABLE_VALUEdense_20/kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_20/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_6/gamma0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbatch_normalization_6/beta0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_21/kernel0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_21/bias0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_7/gamma0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbatch_normalization_7/beta0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_22/kernel0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_22/bias1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization_8/gamma1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_8/beta1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_23/kernel1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_23/bias1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!batch_normalization_6/moving_mean&variables/5/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%batch_normalization_6/moving_variance&variables/6/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_7/moving_mean'variables/11/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_7/moving_variance'variables/12/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_8/moving_mean'variables/17/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_8/moving_variance'variables/18/.ATTRIBUTES/VARIABLE_VALUE
 
 
*
0
1
2
3
4
5
*
60
71
82
93
:4
;5
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

(0
)1

(0
)1
?
 ?layer_regularization_losses
Pregularization_losses
?layer_metrics
?layers
Qtrainable_variables
?non_trainable_variables
R	variables
?metrics
 
 
 
?
 ?layer_regularization_losses
Tregularization_losses
?layer_metrics
?layers
Utrainable_variables
?non_trainable_variables
V	variables
?metrics
 
 

*0
+1

*0
+1
62
73
?
 ?layer_regularization_losses
Yregularization_losses
?layer_metrics
?layers
Ztrainable_variables
?non_trainable_variables
[	variables
?metrics
 

,0
-1

,0
-1
?
 ?layer_regularization_losses
]regularization_losses
?layer_metrics
?layers
^trainable_variables
?non_trainable_variables
_	variables
?metrics
 
 
 
?
 ?layer_regularization_losses
aregularization_losses
?layer_metrics
?layers
btrainable_variables
?non_trainable_variables
c	variables
?metrics
 
 

.0
/1

.0
/1
82
93
?
 ?layer_regularization_losses
fregularization_losses
?layer_metrics
?layers
gtrainable_variables
?non_trainable_variables
h	variables
?metrics
 

00
11

00
11
?
 ?layer_regularization_losses
jregularization_losses
?layer_metrics
?layers
ktrainable_variables
?non_trainable_variables
l	variables
?metrics
 
 
 
?
 ?layer_regularization_losses
nregularization_losses
?layer_metrics
?layers
otrainable_variables
?non_trainable_variables
p	variables
?metrics
 
 

20
31

20
31
:2
;3
?
 ?layer_regularization_losses
sregularization_losses
?layer_metrics
?layers
ttrainable_variables
?non_trainable_variables
u	variables
?metrics
 

40
51

40
51
?
 ?layer_regularization_losses
wregularization_losses
?layer_metrics
?layers
xtrainable_variables
?non_trainable_variables
y	variables
?metrics
 
 
 
?
 ?layer_regularization_losses
{regularization_losses
?layer_metrics
?layers
|trainable_variables
?non_trainable_variables
}	variables
?metrics
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
*
60
71
82
93
:4
;5
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
serving_default_input_15Placeholder*'
_output_shapes
:?????????d*
dtype0*
shape:?????????d
{
serving_default_input_16Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_15serving_default_input_16embedding_5/embeddingsdense_20/kerneldense_20/bias%batch_normalization_6/moving_variancebatch_normalization_6/gamma!batch_normalization_6/moving_meanbatch_normalization_6/betadense_21/kerneldense_21/bias%batch_normalization_7/moving_variancebatch_normalization_7/gamma!batch_normalization_7/moving_meanbatch_normalization_7/betadense_22/kerneldense_22/bias%batch_normalization_8/moving_variancebatch_normalization_8/gamma!batch_normalization_8/moving_meanbatch_normalization_8/betadense_23/kerneldense_23/bias*"
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
%__inference_signature_wrapper_7617659
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_5/embeddings/Read/ReadVariableOp#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOpConst*"
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
 __inference__traced_save_7618817
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_5/embeddingsdense_20/kerneldense_20/biasbatch_normalization_6/gammabatch_normalization_6/betadense_21/kerneldense_21/biasbatch_normalization_7/gammabatch_normalization_7/betadense_22/kerneldense_22/biasbatch_normalization_8/gammabatch_normalization_8/betadense_23/kerneldense_23/bias!batch_normalization_6/moving_mean%batch_normalization_6/moving_variance!batch_normalization_7/moving_mean%batch_normalization_7/moving_variance!batch_normalization_8/moving_mean%batch_normalization_8/moving_variance*!
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
#__inference__traced_restore_7618890??
?
g
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_7618493

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
E__inference_dense_21_layer_call_and_return_conditional_losses_7616728

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
I__inference_sequential_5_layer_call_and_return_conditional_losses_7617129

inputs
dense_20_7617077
dense_20_7617079!
batch_normalization_6_7617083!
batch_normalization_6_7617085!
batch_normalization_6_7617087!
batch_normalization_6_7617089
dense_21_7617092
dense_21_7617094!
batch_normalization_7_7617098!
batch_normalization_7_7617100!
batch_normalization_7_7617102!
batch_normalization_7_7617104
dense_22_7617107
dense_22_7617109!
batch_normalization_8_7617113!
batch_normalization_8_7617115!
batch_normalization_8_7617117!
batch_normalization_8_7617119
dense_23_7617122
dense_23_7617124
identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCallinputsdense_20_7617077dense_20_7617079*
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
E__inference_dense_20_layer_call_and_return_conditional_losses_76166542"
 dense_20/StatefulPartitionedCall?
leaky_re_lu_15/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_76166752 
leaky_re_lu_15/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0batch_normalization_6_7617083batch_normalization_6_7617085batch_normalization_6_7617087batch_normalization_6_7617089*
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
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_76163492/
-batch_normalization_6/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0dense_21_7617092dense_21_7617094*
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
E__inference_dense_21_layer_call_and_return_conditional_losses_76167282"
 dense_21/StatefulPartitionedCall?
leaky_re_lu_16/PartitionedCallPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_76167492 
leaky_re_lu_16/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_16/PartitionedCall:output:0batch_normalization_7_7617098batch_normalization_7_7617100batch_normalization_7_7617102batch_normalization_7_7617104*
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
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_76164892/
-batch_normalization_7/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_22_7617107dense_22_7617109*
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
E__inference_dense_22_layer_call_and_return_conditional_losses_76168022"
 dense_22/StatefulPartitionedCall?
leaky_re_lu_17/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_76168232 
leaky_re_lu_17/PartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_17/PartitionedCall:output:0batch_normalization_8_7617113batch_normalization_8_7617115batch_normalization_8_7617117batch_normalization_8_7617119*
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
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_76166292/
-batch_normalization_8/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_23_7617122dense_23_7617124*
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
E__inference_dense_23_layer_call_and_return_conditional_losses_76168772"
 dense_23/StatefulPartitionedCall?
reshape_2/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
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
F__inference_reshape_2_layer_call_and_return_conditional_losses_76169072
reshape_2/PartitionedCall?
IdentityIdentity"reshape_2/PartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
.__inference_sequential_5_layer_call_fn_7617072
dense_20_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_5_layer_call_and_return_conditional_losses_76170292
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
_user_specified_namedense_20_input
?	
?
H__inference_embedding_5_layer_call_and_return_conditional_losses_7618010

inputs
embedding_lookup_7618004
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_7618004inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/7618004*+
_output_shapes
:?????????d*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/7618004*+
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
q
G__inference_multiply_5_layer_call_and_return_conditional_losses_7617218

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
?	
?
E__inference_dense_20_layer_call_and_return_conditional_losses_7616654

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
E__inference_dense_20_layer_call_and_return_conditional_losses_7618368

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
E__inference_dense_23_layer_call_and_return_conditional_losses_7616877

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
?9
?
I__inference_sequential_5_layer_call_and_return_conditional_losses_7616916
dense_20_input
dense_20_7616665
dense_20_7616667!
batch_normalization_6_7616709!
batch_normalization_6_7616711!
batch_normalization_6_7616713!
batch_normalization_6_7616715
dense_21_7616739
dense_21_7616741!
batch_normalization_7_7616783!
batch_normalization_7_7616785!
batch_normalization_7_7616787!
batch_normalization_7_7616789
dense_22_7616813
dense_22_7616815!
batch_normalization_8_7616857!
batch_normalization_8_7616859!
batch_normalization_8_7616861!
batch_normalization_8_7616863
dense_23_7616888
dense_23_7616890
identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCalldense_20_inputdense_20_7616665dense_20_7616667*
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
E__inference_dense_20_layer_call_and_return_conditional_losses_76166542"
 dense_20/StatefulPartitionedCall?
leaky_re_lu_15/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_76166752 
leaky_re_lu_15/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0batch_normalization_6_7616709batch_normalization_6_7616711batch_normalization_6_7616713batch_normalization_6_7616715*
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
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_76163162/
-batch_normalization_6/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0dense_21_7616739dense_21_7616741*
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
E__inference_dense_21_layer_call_and_return_conditional_losses_76167282"
 dense_21/StatefulPartitionedCall?
leaky_re_lu_16/PartitionedCallPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_76167492 
leaky_re_lu_16/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_16/PartitionedCall:output:0batch_normalization_7_7616783batch_normalization_7_7616785batch_normalization_7_7616787batch_normalization_7_7616789*
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
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_76164562/
-batch_normalization_7/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_22_7616813dense_22_7616815*
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
E__inference_dense_22_layer_call_and_return_conditional_losses_76168022"
 dense_22/StatefulPartitionedCall?
leaky_re_lu_17/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_76168232 
leaky_re_lu_17/PartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_17/PartitionedCall:output:0batch_normalization_8_7616857batch_normalization_8_7616859batch_normalization_8_7616861batch_normalization_8_7616863*
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
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_76165962/
-batch_normalization_8/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_23_7616888dense_23_7616890*
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
E__inference_dense_23_layer_call_and_return_conditional_losses_76168772"
 dense_23/StatefulPartitionedCall?
reshape_2/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
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
F__inference_reshape_2_layer_call_and_return_conditional_losses_76169072
reshape_2/PartitionedCall?
IdentityIdentity"reshape_2/PartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_20_input
?
g
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_7616675

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
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7616349

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
?
.__inference_sequential_5_layer_call_fn_7618358

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
I__inference_sequential_5_layer_call_and_return_conditional_losses_76171292
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
*__inference_dense_23_layer_call_fn_7618711

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
E__inference_dense_23_layer_call_and_return_conditional_losses_76168772
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
?
g
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_7618382

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
?
?
D__inference_model_7_layer_call_and_return_conditional_losses_7617465

inputs
inputs_1
embedding_5_7617418
sequential_5_7617423
sequential_5_7617425
sequential_5_7617427
sequential_5_7617429
sequential_5_7617431
sequential_5_7617433
sequential_5_7617435
sequential_5_7617437
sequential_5_7617439
sequential_5_7617441
sequential_5_7617443
sequential_5_7617445
sequential_5_7617447
sequential_5_7617449
sequential_5_7617451
sequential_5_7617453
sequential_5_7617455
sequential_5_7617457
sequential_5_7617459
sequential_5_7617461
identity??#embedding_5/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?
#embedding_5/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_5_7617418*
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
H__inference_embedding_5_layer_call_and_return_conditional_losses_76171862%
#embedding_5/StatefulPartitionedCall?
flatten_8/PartitionedCallPartitionedCall,embedding_5/StatefulPartitionedCall:output:0*
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
F__inference_flatten_8_layer_call_and_return_conditional_losses_76172042
flatten_8/PartitionedCall?
multiply_5/PartitionedCallPartitionedCallinputs"flatten_8/PartitionedCall:output:0*
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
G__inference_multiply_5_layer_call_and_return_conditional_losses_76172182
multiply_5/PartitionedCall?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall#multiply_5/PartitionedCall:output:0sequential_5_7617423sequential_5_7617425sequential_5_7617427sequential_5_7617429sequential_5_7617431sequential_5_7617433sequential_5_7617435sequential_5_7617437sequential_5_7617439sequential_5_7617441sequential_5_7617443sequential_5_7617445sequential_5_7617447sequential_5_7617449sequential_5_7617451sequential_5_7617453sequential_5_7617455sequential_5_7617457sequential_5_7617459sequential_5_7617461* 
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
I__inference_sequential_5_layer_call_and_return_conditional_losses_76170292&
$sequential_5/StatefulPartitionedCall?
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0$^embedding_5/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2J
#embedding_5/StatefulPartitionedCall#embedding_5/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:O K
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
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7618554

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
?
X
,__inference_multiply_5_layer_call_fn_7618040
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
G__inference_multiply_5_layer_call_and_return_conditional_losses_76172182
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
7__inference_batch_normalization_6_layer_call_fn_7618469

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
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_76163492
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
?	
?
E__inference_dense_23_layer_call_and_return_conditional_losses_7618702

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
??
?
I__inference_sequential_5_layer_call_and_return_conditional_losses_7618268

inputs+
'dense_20_matmul_readvariableop_resource,
(dense_20_biasadd_readvariableop_resource;
7batch_normalization_6_batchnorm_readvariableop_resource?
;batch_normalization_6_batchnorm_mul_readvariableop_resource=
9batch_normalization_6_batchnorm_readvariableop_1_resource=
9batch_normalization_6_batchnorm_readvariableop_2_resource+
'dense_21_matmul_readvariableop_resource,
(dense_21_biasadd_readvariableop_resource;
7batch_normalization_7_batchnorm_readvariableop_resource?
;batch_normalization_7_batchnorm_mul_readvariableop_resource=
9batch_normalization_7_batchnorm_readvariableop_1_resource=
9batch_normalization_7_batchnorm_readvariableop_2_resource+
'dense_22_matmul_readvariableop_resource,
(dense_22_biasadd_readvariableop_resource;
7batch_normalization_8_batchnorm_readvariableop_resource?
;batch_normalization_8_batchnorm_mul_readvariableop_resource=
9batch_normalization_8_batchnorm_readvariableop_1_resource=
9batch_normalization_8_batchnorm_readvariableop_2_resource+
'dense_23_matmul_readvariableop_resource,
(dense_23_biasadd_readvariableop_resource
identity??.batch_normalization_6/batchnorm/ReadVariableOp?0batch_normalization_6/batchnorm/ReadVariableOp_1?0batch_normalization_6/batchnorm/ReadVariableOp_2?2batch_normalization_6/batchnorm/mul/ReadVariableOp?.batch_normalization_7/batchnorm/ReadVariableOp?0batch_normalization_7/batchnorm/ReadVariableOp_1?0batch_normalization_7/batchnorm/ReadVariableOp_2?2batch_normalization_7/batchnorm/mul/ReadVariableOp?.batch_normalization_8/batchnorm/ReadVariableOp?0batch_normalization_8/batchnorm/ReadVariableOp_1?0batch_normalization_8/batchnorm/ReadVariableOp_2?2batch_normalization_8/batchnorm/mul/ReadVariableOp?dense_20/BiasAdd/ReadVariableOp?dense_20/MatMul/ReadVariableOp?dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?dense_22/BiasAdd/ReadVariableOp?dense_22/MatMul/ReadVariableOp?dense_23/BiasAdd/ReadVariableOp?dense_23/MatMul/ReadVariableOp?
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_20/MatMul/ReadVariableOp?
dense_20/MatMulMatMulinputs&dense_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_20/MatMul?
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_20/BiasAdd/ReadVariableOp?
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_20/BiasAdd?
leaky_re_lu_15/LeakyRelu	LeakyReludense_20/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_15/LeakyRelu?
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_6/batchnorm/ReadVariableOp?
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_6/batchnorm/add/y?
#batch_normalization_6/batchnorm/addAddV26batch_normalization_6/batchnorm/ReadVariableOp:value:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_6/batchnorm/add?
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_6/batchnorm/Rsqrt?
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_6/batchnorm/mul/ReadVariableOp?
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_6/batchnorm/mul?
%batch_normalization_6/batchnorm/mul_1Mul&leaky_re_lu_15/LeakyRelu:activations:0'batch_normalization_6/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_6/batchnorm/mul_1?
0batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_6/batchnorm/ReadVariableOp_1?
%batch_normalization_6/batchnorm/mul_2Mul8batch_normalization_6/batchnorm/ReadVariableOp_1:value:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_6/batchnorm/mul_2?
0batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_6/batchnorm/ReadVariableOp_2?
#batch_normalization_6/batchnorm/subSub8batch_normalization_6/batchnorm/ReadVariableOp_2:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_6/batchnorm/sub?
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_6/batchnorm/add_1?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_21/MatMul/ReadVariableOp?
dense_21/MatMulMatMul)batch_normalization_6/batchnorm/add_1:z:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_21/MatMul?
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_21/BiasAdd/ReadVariableOp?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_21/BiasAdd?
leaky_re_lu_16/LeakyRelu	LeakyReludense_21/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_16/LeakyRelu?
.batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_7/batchnorm/ReadVariableOp?
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_7/batchnorm/add/y?
#batch_normalization_7/batchnorm/addAddV26batch_normalization_7/batchnorm/ReadVariableOp:value:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_7/batchnorm/add?
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_7/batchnorm/Rsqrt?
2batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_7/batchnorm/mul/ReadVariableOp?
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0:batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_7/batchnorm/mul?
%batch_normalization_7/batchnorm/mul_1Mul&leaky_re_lu_16/LeakyRelu:activations:0'batch_normalization_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_7/batchnorm/mul_1?
0batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_7/batchnorm/ReadVariableOp_1?
%batch_normalization_7/batchnorm/mul_2Mul8batch_normalization_7/batchnorm/ReadVariableOp_1:value:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_7/batchnorm/mul_2?
0batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_7/batchnorm/ReadVariableOp_2?
#batch_normalization_7/batchnorm/subSub8batch_normalization_7/batchnorm/ReadVariableOp_2:value:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_7/batchnorm/sub?
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_7/batchnorm/add_1?
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_22/MatMul/ReadVariableOp?
dense_22/MatMulMatMul)batch_normalization_7/batchnorm/add_1:z:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_22/MatMul?
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_22/BiasAdd/ReadVariableOp?
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_22/BiasAdd?
leaky_re_lu_17/LeakyRelu	LeakyReludense_22/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_17/LeakyRelu?
.batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_8/batchnorm/ReadVariableOp?
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_8/batchnorm/add/y?
#batch_normalization_8/batchnorm/addAddV26batch_normalization_8/batchnorm/ReadVariableOp:value:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_8/batchnorm/add?
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_8/batchnorm/Rsqrt?
2batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_8/batchnorm/mul/ReadVariableOp?
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0:batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_8/batchnorm/mul?
%batch_normalization_8/batchnorm/mul_1Mul&leaky_re_lu_17/LeakyRelu:activations:0'batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_8/batchnorm/mul_1?
0batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_8/batchnorm/ReadVariableOp_1?
%batch_normalization_8/batchnorm/mul_2Mul8batch_normalization_8/batchnorm/ReadVariableOp_1:value:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_8/batchnorm/mul_2?
0batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_8/batchnorm/ReadVariableOp_2?
#batch_normalization_8/batchnorm/subSub8batch_normalization_8/batchnorm/ReadVariableOp_2:value:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_8/batchnorm/sub?
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_8/batchnorm/add_1?
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02 
dense_23/MatMul/ReadVariableOp?
dense_23/MatMulMatMul)batch_normalization_8/batchnorm/add_1:z:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_23/MatMul?
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02!
dense_23/BiasAdd/ReadVariableOp?
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_23/BiasAddu
dense_23/TanhTanhdense_23/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
dense_23/Tanhc
reshape_2/ShapeShapedense_23/Tanh:y:0*
T0*
_output_shapes
:2
reshape_2/Shape?
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_2/strided_slice/stack?
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_1?
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_2?
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_2/strided_slicey
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_2/Reshape/shape/1y
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_2/Reshape/shape/2x
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_2/Reshape/shape/3?
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_2/Reshape/shape?
reshape_2/ReshapeReshapedense_23/Tanh:y:0 reshape_2/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2
reshape_2/Reshape?
IdentityIdentityreshape_2/Reshape:output:0/^batch_normalization_6/batchnorm/ReadVariableOp1^batch_normalization_6/batchnorm/ReadVariableOp_11^batch_normalization_6/batchnorm/ReadVariableOp_23^batch_normalization_6/batchnorm/mul/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp1^batch_normalization_7/batchnorm/ReadVariableOp_11^batch_normalization_7/batchnorm/ReadVariableOp_23^batch_normalization_7/batchnorm/mul/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp1^batch_normalization_8/batchnorm/ReadVariableOp_11^batch_normalization_8/batchnorm/ReadVariableOp_23^batch_normalization_8/batchnorm/mul/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2d
0batch_normalization_6/batchnorm/ReadVariableOp_10batch_normalization_6/batchnorm/ReadVariableOp_12d
0batch_normalization_6/batchnorm/ReadVariableOp_20batch_normalization_6/batchnorm/ReadVariableOp_22h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2`
.batch_normalization_7/batchnorm/ReadVariableOp.batch_normalization_7/batchnorm/ReadVariableOp2d
0batch_normalization_7/batchnorm/ReadVariableOp_10batch_normalization_7/batchnorm/ReadVariableOp_12d
0batch_normalization_7/batchnorm/ReadVariableOp_20batch_normalization_7/batchnorm/ReadVariableOp_22h
2batch_normalization_7/batchnorm/mul/ReadVariableOp2batch_normalization_7/batchnorm/mul/ReadVariableOp2`
.batch_normalization_8/batchnorm/ReadVariableOp.batch_normalization_8/batchnorm/ReadVariableOp2d
0batch_normalization_8/batchnorm/ReadVariableOp_10batch_normalization_8/batchnorm/ReadVariableOp_12d
0batch_normalization_8/batchnorm/ReadVariableOp_20batch_normalization_8/batchnorm/ReadVariableOp_22h
2batch_normalization_8/batchnorm/mul/ReadVariableOp2batch_normalization_8/batchnorm/mul/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_7616823

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
?
.__inference_sequential_5_layer_call_fn_7617172
dense_20_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_5_layer_call_and_return_conditional_losses_76171292
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
_user_specified_namedense_20_input
?
?
)__inference_model_7_layer_call_fn_7617953
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
D__inference_model_7_layer_call_and_return_conditional_losses_76174652
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
?
?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7616489

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
?0
?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7616316

inputs
assignmovingavg_7616291
assignmovingavg_1_7616297)
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
loc:@AssignMovingAvg/7616291*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7616291*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/7616291*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/7616291*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7616291AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/7616291*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/7616297*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7616297*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/7616297*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/7616297*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7616297AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/7616297*
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
D__inference_model_7_layer_call_and_return_conditional_losses_7617359
input_15
input_16
embedding_5_7617195
sequential_5_7617317
sequential_5_7617319
sequential_5_7617321
sequential_5_7617323
sequential_5_7617325
sequential_5_7617327
sequential_5_7617329
sequential_5_7617331
sequential_5_7617333
sequential_5_7617335
sequential_5_7617337
sequential_5_7617339
sequential_5_7617341
sequential_5_7617343
sequential_5_7617345
sequential_5_7617347
sequential_5_7617349
sequential_5_7617351
sequential_5_7617353
sequential_5_7617355
identity??#embedding_5/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?
#embedding_5/StatefulPartitionedCallStatefulPartitionedCallinput_16embedding_5_7617195*
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
H__inference_embedding_5_layer_call_and_return_conditional_losses_76171862%
#embedding_5/StatefulPartitionedCall?
flatten_8/PartitionedCallPartitionedCall,embedding_5/StatefulPartitionedCall:output:0*
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
F__inference_flatten_8_layer_call_and_return_conditional_losses_76172042
flatten_8/PartitionedCall?
multiply_5/PartitionedCallPartitionedCallinput_15"flatten_8/PartitionedCall:output:0*
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
G__inference_multiply_5_layer_call_and_return_conditional_losses_76172182
multiply_5/PartitionedCall?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall#multiply_5/PartitionedCall:output:0sequential_5_7617317sequential_5_7617319sequential_5_7617321sequential_5_7617323sequential_5_7617325sequential_5_7617327sequential_5_7617329sequential_5_7617331sequential_5_7617333sequential_5_7617335sequential_5_7617337sequential_5_7617339sequential_5_7617341sequential_5_7617343sequential_5_7617345sequential_5_7617347sequential_5_7617349sequential_5_7617351sequential_5_7617353sequential_5_7617355* 
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
I__inference_sequential_5_layer_call_and_return_conditional_losses_76170292&
$sequential_5/StatefulPartitionedCall?
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0$^embedding_5/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2J
#embedding_5/StatefulPartitionedCall#embedding_5/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
input_15:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_16
?
?
7__inference_batch_normalization_8_layer_call_fn_7618678

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
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_76165962
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
b
F__inference_reshape_2_layer_call_and_return_conditional_losses_7616907

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
?
?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7618443

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
?
?
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7618665

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
?
?
7__inference_batch_normalization_6_layer_call_fn_7618456

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
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_76163162
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
7__inference_batch_normalization_7_layer_call_fn_7618567

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
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_76164562
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
?
b
F__inference_flatten_8_layer_call_and_return_conditional_losses_7618023

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
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7618645

inputs
assignmovingavg_7618620
assignmovingavg_1_7618626)
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
loc:@AssignMovingAvg/7618620*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7618620*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/7618620*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/7618620*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7618620AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/7618620*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/7618626*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7618626*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/7618626*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/7618626*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7618626AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/7618626*
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
?0
?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7618534

inputs
assignmovingavg_7618509
assignmovingavg_1_7618515)
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
loc:@AssignMovingAvg/7618509*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7618509*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/7618509*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/7618509*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7618509AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/7618509*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/7618515*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7618515*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/7618515*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/7618515*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7618515AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/7618515*
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
?
)__inference_model_7_layer_call_fn_7617510
input_15
input_16
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
StatefulPartitionedCallStatefulPartitionedCallinput_15input_16unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_7_layer_call_and_return_conditional_losses_76174652
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
input_15:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_16
?
g
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_7616749

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
L
0__inference_leaky_re_lu_15_layer_call_fn_7618387

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
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_76166752
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
?

*__inference_dense_21_layer_call_fn_7618488

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
E__inference_dense_21_layer_call_and_return_conditional_losses_76167282
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
??
?
D__inference_model_7_layer_call_and_return_conditional_losses_7617905
inputs_0
inputs_1(
$embedding_5_embedding_lookup_76178108
4sequential_5_dense_20_matmul_readvariableop_resource9
5sequential_5_dense_20_biasadd_readvariableop_resourceH
Dsequential_5_batch_normalization_6_batchnorm_readvariableop_resourceL
Hsequential_5_batch_normalization_6_batchnorm_mul_readvariableop_resourceJ
Fsequential_5_batch_normalization_6_batchnorm_readvariableop_1_resourceJ
Fsequential_5_batch_normalization_6_batchnorm_readvariableop_2_resource8
4sequential_5_dense_21_matmul_readvariableop_resource9
5sequential_5_dense_21_biasadd_readvariableop_resourceH
Dsequential_5_batch_normalization_7_batchnorm_readvariableop_resourceL
Hsequential_5_batch_normalization_7_batchnorm_mul_readvariableop_resourceJ
Fsequential_5_batch_normalization_7_batchnorm_readvariableop_1_resourceJ
Fsequential_5_batch_normalization_7_batchnorm_readvariableop_2_resource8
4sequential_5_dense_22_matmul_readvariableop_resource9
5sequential_5_dense_22_biasadd_readvariableop_resourceH
Dsequential_5_batch_normalization_8_batchnorm_readvariableop_resourceL
Hsequential_5_batch_normalization_8_batchnorm_mul_readvariableop_resourceJ
Fsequential_5_batch_normalization_8_batchnorm_readvariableop_1_resourceJ
Fsequential_5_batch_normalization_8_batchnorm_readvariableop_2_resource8
4sequential_5_dense_23_matmul_readvariableop_resource9
5sequential_5_dense_23_biasadd_readvariableop_resource
identity??embedding_5/embedding_lookup?;sequential_5/batch_normalization_6/batchnorm/ReadVariableOp?=sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_1?=sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_2??sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOp?;sequential_5/batch_normalization_7/batchnorm/ReadVariableOp?=sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_1?=sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_2??sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOp?;sequential_5/batch_normalization_8/batchnorm/ReadVariableOp?=sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_1?=sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_2??sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp?,sequential_5/dense_20/BiasAdd/ReadVariableOp?+sequential_5/dense_20/MatMul/ReadVariableOp?,sequential_5/dense_21/BiasAdd/ReadVariableOp?+sequential_5/dense_21/MatMul/ReadVariableOp?,sequential_5/dense_22/BiasAdd/ReadVariableOp?+sequential_5/dense_22/MatMul/ReadVariableOp?,sequential_5/dense_23/BiasAdd/ReadVariableOp?+sequential_5/dense_23/MatMul/ReadVariableOp?
embedding_5/embedding_lookupResourceGather$embedding_5_embedding_lookup_7617810inputs_1",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_5/embedding_lookup/7617810*+
_output_shapes
:?????????d*
dtype02
embedding_5/embedding_lookup?
%embedding_5/embedding_lookup/IdentityIdentity%embedding_5/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_5/embedding_lookup/7617810*+
_output_shapes
:?????????d2'
%embedding_5/embedding_lookup/Identity?
'embedding_5/embedding_lookup/Identity_1Identity.embedding_5/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2)
'embedding_5/embedding_lookup/Identity_1s
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"????d   2
flatten_8/Const?
flatten_8/ReshapeReshape0embedding_5/embedding_lookup/Identity_1:output:0flatten_8/Const:output:0*
T0*'
_output_shapes
:?????????d2
flatten_8/Reshape
multiply_5/mulMulinputs_0flatten_8/Reshape:output:0*
T0*'
_output_shapes
:?????????d2
multiply_5/mul?
+sequential_5/dense_20/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_20_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02-
+sequential_5/dense_20/MatMul/ReadVariableOp?
sequential_5/dense_20/MatMulMatMulmultiply_5/mul:z:03sequential_5/dense_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_20/MatMul?
,sequential_5/dense_20/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_5/dense_20/BiasAdd/ReadVariableOp?
sequential_5/dense_20/BiasAddBiasAdd&sequential_5/dense_20/MatMul:product:04sequential_5/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_20/BiasAdd?
%sequential_5/leaky_re_lu_15/LeakyRelu	LeakyRelu&sequential_5/dense_20/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_5/leaky_re_lu_15/LeakyRelu?
;sequential_5/batch_normalization_6/batchnorm/ReadVariableOpReadVariableOpDsequential_5_batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_5/batch_normalization_6/batchnorm/ReadVariableOp?
2sequential_5/batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_5/batch_normalization_6/batchnorm/add/y?
0sequential_5/batch_normalization_6/batchnorm/addAddV2Csequential_5/batch_normalization_6/batchnorm/ReadVariableOp:value:0;sequential_5/batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_6/batchnorm/add?
2sequential_5/batch_normalization_6/batchnorm/RsqrtRsqrt4sequential_5/batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_5/batch_normalization_6/batchnorm/Rsqrt?
?sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_5_batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOp?
0sequential_5/batch_normalization_6/batchnorm/mulMul6sequential_5/batch_normalization_6/batchnorm/Rsqrt:y:0Gsequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_6/batchnorm/mul?
2sequential_5/batch_normalization_6/batchnorm/mul_1Mul3sequential_5/leaky_re_lu_15/LeakyRelu:activations:04sequential_5/batch_normalization_6/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_5/batch_normalization_6/batchnorm/mul_1?
=sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_5_batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02?
=sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_1?
2sequential_5/batch_normalization_6/batchnorm/mul_2MulEsequential_5/batch_normalization_6/batchnorm/ReadVariableOp_1:value:04sequential_5/batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_5/batch_normalization_6/batchnorm/mul_2?
=sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_5_batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02?
=sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_2?
0sequential_5/batch_normalization_6/batchnorm/subSubEsequential_5/batch_normalization_6/batchnorm/ReadVariableOp_2:value:06sequential_5/batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_6/batchnorm/sub?
2sequential_5/batch_normalization_6/batchnorm/add_1AddV26sequential_5/batch_normalization_6/batchnorm/mul_1:z:04sequential_5/batch_normalization_6/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_5/batch_normalization_6/batchnorm/add_1?
+sequential_5/dense_21/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_21_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_5/dense_21/MatMul/ReadVariableOp?
sequential_5/dense_21/MatMulMatMul6sequential_5/batch_normalization_6/batchnorm/add_1:z:03sequential_5/dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_21/MatMul?
,sequential_5/dense_21/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_5/dense_21/BiasAdd/ReadVariableOp?
sequential_5/dense_21/BiasAddBiasAdd&sequential_5/dense_21/MatMul:product:04sequential_5/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_21/BiasAdd?
%sequential_5/leaky_re_lu_16/LeakyRelu	LeakyRelu&sequential_5/dense_21/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_5/leaky_re_lu_16/LeakyRelu?
;sequential_5/batch_normalization_7/batchnorm/ReadVariableOpReadVariableOpDsequential_5_batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_5/batch_normalization_7/batchnorm/ReadVariableOp?
2sequential_5/batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_5/batch_normalization_7/batchnorm/add/y?
0sequential_5/batch_normalization_7/batchnorm/addAddV2Csequential_5/batch_normalization_7/batchnorm/ReadVariableOp:value:0;sequential_5/batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_7/batchnorm/add?
2sequential_5/batch_normalization_7/batchnorm/RsqrtRsqrt4sequential_5/batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_5/batch_normalization_7/batchnorm/Rsqrt?
?sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_5_batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOp?
0sequential_5/batch_normalization_7/batchnorm/mulMul6sequential_5/batch_normalization_7/batchnorm/Rsqrt:y:0Gsequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_7/batchnorm/mul?
2sequential_5/batch_normalization_7/batchnorm/mul_1Mul3sequential_5/leaky_re_lu_16/LeakyRelu:activations:04sequential_5/batch_normalization_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_5/batch_normalization_7/batchnorm/mul_1?
=sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_5_batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02?
=sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_1?
2sequential_5/batch_normalization_7/batchnorm/mul_2MulEsequential_5/batch_normalization_7/batchnorm/ReadVariableOp_1:value:04sequential_5/batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_5/batch_normalization_7/batchnorm/mul_2?
=sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_5_batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02?
=sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_2?
0sequential_5/batch_normalization_7/batchnorm/subSubEsequential_5/batch_normalization_7/batchnorm/ReadVariableOp_2:value:06sequential_5/batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_7/batchnorm/sub?
2sequential_5/batch_normalization_7/batchnorm/add_1AddV26sequential_5/batch_normalization_7/batchnorm/mul_1:z:04sequential_5/batch_normalization_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_5/batch_normalization_7/batchnorm/add_1?
+sequential_5/dense_22/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_22_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_5/dense_22/MatMul/ReadVariableOp?
sequential_5/dense_22/MatMulMatMul6sequential_5/batch_normalization_7/batchnorm/add_1:z:03sequential_5/dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_22/MatMul?
,sequential_5/dense_22/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_5/dense_22/BiasAdd/ReadVariableOp?
sequential_5/dense_22/BiasAddBiasAdd&sequential_5/dense_22/MatMul:product:04sequential_5/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_22/BiasAdd?
%sequential_5/leaky_re_lu_17/LeakyRelu	LeakyRelu&sequential_5/dense_22/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_5/leaky_re_lu_17/LeakyRelu?
;sequential_5/batch_normalization_8/batchnorm/ReadVariableOpReadVariableOpDsequential_5_batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_5/batch_normalization_8/batchnorm/ReadVariableOp?
2sequential_5/batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_5/batch_normalization_8/batchnorm/add/y?
0sequential_5/batch_normalization_8/batchnorm/addAddV2Csequential_5/batch_normalization_8/batchnorm/ReadVariableOp:value:0;sequential_5/batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_8/batchnorm/add?
2sequential_5/batch_normalization_8/batchnorm/RsqrtRsqrt4sequential_5/batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_5/batch_normalization_8/batchnorm/Rsqrt?
?sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_5_batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp?
0sequential_5/batch_normalization_8/batchnorm/mulMul6sequential_5/batch_normalization_8/batchnorm/Rsqrt:y:0Gsequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_8/batchnorm/mul?
2sequential_5/batch_normalization_8/batchnorm/mul_1Mul3sequential_5/leaky_re_lu_17/LeakyRelu:activations:04sequential_5/batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_5/batch_normalization_8/batchnorm/mul_1?
=sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_5_batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02?
=sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_1?
2sequential_5/batch_normalization_8/batchnorm/mul_2MulEsequential_5/batch_normalization_8/batchnorm/ReadVariableOp_1:value:04sequential_5/batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_5/batch_normalization_8/batchnorm/mul_2?
=sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_5_batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02?
=sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_2?
0sequential_5/batch_normalization_8/batchnorm/subSubEsequential_5/batch_normalization_8/batchnorm/ReadVariableOp_2:value:06sequential_5/batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_8/batchnorm/sub?
2sequential_5/batch_normalization_8/batchnorm/add_1AddV26sequential_5/batch_normalization_8/batchnorm/mul_1:z:04sequential_5/batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_5/batch_normalization_8/batchnorm/add_1?
+sequential_5/dense_23/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_23_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02-
+sequential_5/dense_23/MatMul/ReadVariableOp?
sequential_5/dense_23/MatMulMatMul6sequential_5/batch_normalization_8/batchnorm/add_1:z:03sequential_5/dense_23/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_5/dense_23/MatMul?
,sequential_5/dense_23/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_23_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02.
,sequential_5/dense_23/BiasAdd/ReadVariableOp?
sequential_5/dense_23/BiasAddBiasAdd&sequential_5/dense_23/MatMul:product:04sequential_5/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_5/dense_23/BiasAdd?
sequential_5/dense_23/TanhTanh&sequential_5/dense_23/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
sequential_5/dense_23/Tanh?
sequential_5/reshape_2/ShapeShapesequential_5/dense_23/Tanh:y:0*
T0*
_output_shapes
:2
sequential_5/reshape_2/Shape?
*sequential_5/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/reshape_2/strided_slice/stack?
,sequential_5/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/reshape_2/strided_slice/stack_1?
,sequential_5/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/reshape_2/strided_slice/stack_2?
$sequential_5/reshape_2/strided_sliceStridedSlice%sequential_5/reshape_2/Shape:output:03sequential_5/reshape_2/strided_slice/stack:output:05sequential_5/reshape_2/strided_slice/stack_1:output:05sequential_5/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_5/reshape_2/strided_slice?
&sequential_5/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_5/reshape_2/Reshape/shape/1?
&sequential_5/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_5/reshape_2/Reshape/shape/2?
&sequential_5/reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_5/reshape_2/Reshape/shape/3?
$sequential_5/reshape_2/Reshape/shapePack-sequential_5/reshape_2/strided_slice:output:0/sequential_5/reshape_2/Reshape/shape/1:output:0/sequential_5/reshape_2/Reshape/shape/2:output:0/sequential_5/reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$sequential_5/reshape_2/Reshape/shape?
sequential_5/reshape_2/ReshapeReshapesequential_5/dense_23/Tanh:y:0-sequential_5/reshape_2/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2 
sequential_5/reshape_2/Reshape?

IdentityIdentity'sequential_5/reshape_2/Reshape:output:0^embedding_5/embedding_lookup<^sequential_5/batch_normalization_6/batchnorm/ReadVariableOp>^sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_1>^sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_2@^sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOp<^sequential_5/batch_normalization_7/batchnorm/ReadVariableOp>^sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_1>^sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_2@^sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOp<^sequential_5/batch_normalization_8/batchnorm/ReadVariableOp>^sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_1>^sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_2@^sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp-^sequential_5/dense_20/BiasAdd/ReadVariableOp,^sequential_5/dense_20/MatMul/ReadVariableOp-^sequential_5/dense_21/BiasAdd/ReadVariableOp,^sequential_5/dense_21/MatMul/ReadVariableOp-^sequential_5/dense_22/BiasAdd/ReadVariableOp,^sequential_5/dense_22/MatMul/ReadVariableOp-^sequential_5/dense_23/BiasAdd/ReadVariableOp,^sequential_5/dense_23/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2<
embedding_5/embedding_lookupembedding_5/embedding_lookup2z
;sequential_5/batch_normalization_6/batchnorm/ReadVariableOp;sequential_5/batch_normalization_6/batchnorm/ReadVariableOp2~
=sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_1=sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_12~
=sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_2=sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_22?
?sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOp?sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOp2z
;sequential_5/batch_normalization_7/batchnorm/ReadVariableOp;sequential_5/batch_normalization_7/batchnorm/ReadVariableOp2~
=sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_1=sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_12~
=sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_2=sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_22?
?sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOp?sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOp2z
;sequential_5/batch_normalization_8/batchnorm/ReadVariableOp;sequential_5/batch_normalization_8/batchnorm/ReadVariableOp2~
=sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_1=sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_12~
=sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_2=sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_22?
?sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp?sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp2\
,sequential_5/dense_20/BiasAdd/ReadVariableOp,sequential_5/dense_20/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_20/MatMul/ReadVariableOp+sequential_5/dense_20/MatMul/ReadVariableOp2\
,sequential_5/dense_21/BiasAdd/ReadVariableOp,sequential_5/dense_21/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_21/MatMul/ReadVariableOp+sequential_5/dense_21/MatMul/ReadVariableOp2\
,sequential_5/dense_22/BiasAdd/ReadVariableOp,sequential_5/dense_22/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_22/MatMul/ReadVariableOp+sequential_5/dense_22/MatMul/ReadVariableOp2\
,sequential_5/dense_23/BiasAdd/ReadVariableOp,sequential_5/dense_23/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_23/MatMul/ReadVariableOp+sequential_5/dense_23/MatMul/ReadVariableOp:Q M
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
0__inference_leaky_re_lu_17_layer_call_fn_7618609

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
K__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_76168232
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
?
?
7__inference_batch_normalization_8_layer_call_fn_7618691

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
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_76166292
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
?
G
+__inference_reshape_2_layer_call_fn_7618730

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
F__inference_reshape_2_layer_call_and_return_conditional_losses_76169072
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
)__inference_model_7_layer_call_fn_7618001
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
D__inference_model_7_layer_call_and_return_conditional_losses_76175642
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
?0
?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7618423

inputs
assignmovingavg_7618398
assignmovingavg_1_7618404)
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
loc:@AssignMovingAvg/7618398*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7618398*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/7618398*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/7618398*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7618398AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/7618398*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/7618404*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7618404*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/7618404*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/7618404*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7618404AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/7618404*
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
?Z
?
#__inference__traced_restore_7618890
file_prefix+
'assignvariableop_embedding_5_embeddings&
"assignvariableop_1_dense_20_kernel$
 assignvariableop_2_dense_20_bias2
.assignvariableop_3_batch_normalization_6_gamma1
-assignvariableop_4_batch_normalization_6_beta&
"assignvariableop_5_dense_21_kernel$
 assignvariableop_6_dense_21_bias2
.assignvariableop_7_batch_normalization_7_gamma1
-assignvariableop_8_batch_normalization_7_beta&
"assignvariableop_9_dense_22_kernel%
!assignvariableop_10_dense_22_bias3
/assignvariableop_11_batch_normalization_8_gamma2
.assignvariableop_12_batch_normalization_8_beta'
#assignvariableop_13_dense_23_kernel%
!assignvariableop_14_dense_23_bias9
5assignvariableop_15_batch_normalization_6_moving_mean=
9assignvariableop_16_batch_normalization_6_moving_variance9
5assignvariableop_17_batch_normalization_7_moving_mean=
9assignvariableop_18_batch_normalization_7_moving_variance9
5assignvariableop_19_batch_normalization_8_moving_mean=
9assignvariableop_20_batch_normalization_8_moving_variance
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
AssignVariableOpAssignVariableOp'assignvariableop_embedding_5_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_20_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp assignvariableop_2_dense_20_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_6_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp-assignvariableop_4_batch_normalization_6_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_21_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_21_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_batch_normalization_7_gammaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp-assignvariableop_8_batch_normalization_7_betaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_22_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp!assignvariableop_10_dense_22_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batch_normalization_8_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp.assignvariableop_12_batch_normalization_8_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_dense_23_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp!assignvariableop_14_dense_23_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp5assignvariableop_15_batch_normalization_6_moving_meanIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp9assignvariableop_16_batch_normalization_6_moving_varianceIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp5assignvariableop_17_batch_normalization_7_moving_meanIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp9assignvariableop_18_batch_normalization_7_moving_varianceIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp5assignvariableop_19_batch_normalization_8_moving_meanIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp9assignvariableop_20_batch_normalization_8_moving_varianceIdentity_20:output:0"/device:CPU:0*
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
с
?
I__inference_sequential_5_layer_call_and_return_conditional_losses_7618178

inputs+
'dense_20_matmul_readvariableop_resource,
(dense_20_biasadd_readvariableop_resource1
-batch_normalization_6_assignmovingavg_76180583
/batch_normalization_6_assignmovingavg_1_7618064?
;batch_normalization_6_batchnorm_mul_readvariableop_resource;
7batch_normalization_6_batchnorm_readvariableop_resource+
'dense_21_matmul_readvariableop_resource,
(dense_21_biasadd_readvariableop_resource1
-batch_normalization_7_assignmovingavg_76180973
/batch_normalization_7_assignmovingavg_1_7618103?
;batch_normalization_7_batchnorm_mul_readvariableop_resource;
7batch_normalization_7_batchnorm_readvariableop_resource+
'dense_22_matmul_readvariableop_resource,
(dense_22_biasadd_readvariableop_resource1
-batch_normalization_8_assignmovingavg_76181363
/batch_normalization_8_assignmovingavg_1_7618142?
;batch_normalization_8_batchnorm_mul_readvariableop_resource;
7batch_normalization_8_batchnorm_readvariableop_resource+
'dense_23_matmul_readvariableop_resource,
(dense_23_biasadd_readvariableop_resource
identity??9batch_normalization_6/AssignMovingAvg/AssignSubVariableOp?4batch_normalization_6/AssignMovingAvg/ReadVariableOp?;batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOp?6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_6/batchnorm/ReadVariableOp?2batch_normalization_6/batchnorm/mul/ReadVariableOp?9batch_normalization_7/AssignMovingAvg/AssignSubVariableOp?4batch_normalization_7/AssignMovingAvg/ReadVariableOp?;batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOp?6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_7/batchnorm/ReadVariableOp?2batch_normalization_7/batchnorm/mul/ReadVariableOp?9batch_normalization_8/AssignMovingAvg/AssignSubVariableOp?4batch_normalization_8/AssignMovingAvg/ReadVariableOp?;batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOp?6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_8/batchnorm/ReadVariableOp?2batch_normalization_8/batchnorm/mul/ReadVariableOp?dense_20/BiasAdd/ReadVariableOp?dense_20/MatMul/ReadVariableOp?dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?dense_22/BiasAdd/ReadVariableOp?dense_22/MatMul/ReadVariableOp?dense_23/BiasAdd/ReadVariableOp?dense_23/MatMul/ReadVariableOp?
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_20/MatMul/ReadVariableOp?
dense_20/MatMulMatMulinputs&dense_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_20/MatMul?
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_20/BiasAdd/ReadVariableOp?
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_20/BiasAdd?
leaky_re_lu_15/LeakyRelu	LeakyReludense_20/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_15/LeakyRelu?
4batch_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_6/moments/mean/reduction_indices?
"batch_normalization_6/moments/meanMean&leaky_re_lu_15/LeakyRelu:activations:0=batch_normalization_6/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_6/moments/mean?
*batch_normalization_6/moments/StopGradientStopGradient+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_6/moments/StopGradient?
/batch_normalization_6/moments/SquaredDifferenceSquaredDifference&leaky_re_lu_15/LeakyRelu:activations:03batch_normalization_6/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_6/moments/SquaredDifference?
8batch_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_6/moments/variance/reduction_indices?
&batch_normalization_6/moments/varianceMean3batch_normalization_6/moments/SquaredDifference:z:0Abatch_normalization_6/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_6/moments/variance?
%batch_normalization_6/moments/SqueezeSqueeze+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_6/moments/Squeeze?
'batch_normalization_6/moments/Squeeze_1Squeeze/batch_normalization_6/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_6/moments/Squeeze_1?
+batch_normalization_6/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_6/AssignMovingAvg/7618058*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+batch_normalization_6/AssignMovingAvg/decay?
4batch_normalization_6/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_6_assignmovingavg_7618058*
_output_shapes	
:?*
dtype026
4batch_normalization_6/AssignMovingAvg/ReadVariableOp?
)batch_normalization_6/AssignMovingAvg/subSub<batch_normalization_6/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_6/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_6/AssignMovingAvg/7618058*
_output_shapes	
:?2+
)batch_normalization_6/AssignMovingAvg/sub?
)batch_normalization_6/AssignMovingAvg/mulMul-batch_normalization_6/AssignMovingAvg/sub:z:04batch_normalization_6/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_6/AssignMovingAvg/7618058*
_output_shapes	
:?2+
)batch_normalization_6/AssignMovingAvg/mul?
9batch_normalization_6/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_6_assignmovingavg_7618058-batch_normalization_6/AssignMovingAvg/mul:z:05^batch_normalization_6/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_6/AssignMovingAvg/7618058*
_output_shapes
 *
dtype02;
9batch_normalization_6/AssignMovingAvg/AssignSubVariableOp?
-batch_normalization_6/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_6/AssignMovingAvg_1/7618064*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-batch_normalization_6/AssignMovingAvg_1/decay?
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_6_assignmovingavg_1_7618064*
_output_shapes	
:?*
dtype028
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_6/AssignMovingAvg_1/subSub>batch_normalization_6/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_6/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_6/AssignMovingAvg_1/7618064*
_output_shapes	
:?2-
+batch_normalization_6/AssignMovingAvg_1/sub?
+batch_normalization_6/AssignMovingAvg_1/mulMul/batch_normalization_6/AssignMovingAvg_1/sub:z:06batch_normalization_6/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_6/AssignMovingAvg_1/7618064*
_output_shapes	
:?2-
+batch_normalization_6/AssignMovingAvg_1/mul?
;batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_6_assignmovingavg_1_7618064/batch_normalization_6/AssignMovingAvg_1/mul:z:07^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_6/AssignMovingAvg_1/7618064*
_output_shapes
 *
dtype02=
;batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOp?
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_6/batchnorm/add/y?
#batch_normalization_6/batchnorm/addAddV20batch_normalization_6/moments/Squeeze_1:output:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_6/batchnorm/add?
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_6/batchnorm/Rsqrt?
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_6/batchnorm/mul/ReadVariableOp?
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_6/batchnorm/mul?
%batch_normalization_6/batchnorm/mul_1Mul&leaky_re_lu_15/LeakyRelu:activations:0'batch_normalization_6/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_6/batchnorm/mul_1?
%batch_normalization_6/batchnorm/mul_2Mul.batch_normalization_6/moments/Squeeze:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_6/batchnorm/mul_2?
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_6/batchnorm/ReadVariableOp?
#batch_normalization_6/batchnorm/subSub6batch_normalization_6/batchnorm/ReadVariableOp:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_6/batchnorm/sub?
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_6/batchnorm/add_1?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_21/MatMul/ReadVariableOp?
dense_21/MatMulMatMul)batch_normalization_6/batchnorm/add_1:z:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_21/MatMul?
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_21/BiasAdd/ReadVariableOp?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_21/BiasAdd?
leaky_re_lu_16/LeakyRelu	LeakyReludense_21/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_16/LeakyRelu?
4batch_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_7/moments/mean/reduction_indices?
"batch_normalization_7/moments/meanMean&leaky_re_lu_16/LeakyRelu:activations:0=batch_normalization_7/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_7/moments/mean?
*batch_normalization_7/moments/StopGradientStopGradient+batch_normalization_7/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_7/moments/StopGradient?
/batch_normalization_7/moments/SquaredDifferenceSquaredDifference&leaky_re_lu_16/LeakyRelu:activations:03batch_normalization_7/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_7/moments/SquaredDifference?
8batch_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_7/moments/variance/reduction_indices?
&batch_normalization_7/moments/varianceMean3batch_normalization_7/moments/SquaredDifference:z:0Abatch_normalization_7/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_7/moments/variance?
%batch_normalization_7/moments/SqueezeSqueeze+batch_normalization_7/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_7/moments/Squeeze?
'batch_normalization_7/moments/Squeeze_1Squeeze/batch_normalization_7/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_7/moments/Squeeze_1?
+batch_normalization_7/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_7/AssignMovingAvg/7618097*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+batch_normalization_7/AssignMovingAvg/decay?
4batch_normalization_7/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_7_assignmovingavg_7618097*
_output_shapes	
:?*
dtype026
4batch_normalization_7/AssignMovingAvg/ReadVariableOp?
)batch_normalization_7/AssignMovingAvg/subSub<batch_normalization_7/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_7/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_7/AssignMovingAvg/7618097*
_output_shapes	
:?2+
)batch_normalization_7/AssignMovingAvg/sub?
)batch_normalization_7/AssignMovingAvg/mulMul-batch_normalization_7/AssignMovingAvg/sub:z:04batch_normalization_7/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_7/AssignMovingAvg/7618097*
_output_shapes	
:?2+
)batch_normalization_7/AssignMovingAvg/mul?
9batch_normalization_7/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_7_assignmovingavg_7618097-batch_normalization_7/AssignMovingAvg/mul:z:05^batch_normalization_7/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_7/AssignMovingAvg/7618097*
_output_shapes
 *
dtype02;
9batch_normalization_7/AssignMovingAvg/AssignSubVariableOp?
-batch_normalization_7/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_7/AssignMovingAvg_1/7618103*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-batch_normalization_7/AssignMovingAvg_1/decay?
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_7_assignmovingavg_1_7618103*
_output_shapes	
:?*
dtype028
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_7/AssignMovingAvg_1/subSub>batch_normalization_7/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_7/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_7/AssignMovingAvg_1/7618103*
_output_shapes	
:?2-
+batch_normalization_7/AssignMovingAvg_1/sub?
+batch_normalization_7/AssignMovingAvg_1/mulMul/batch_normalization_7/AssignMovingAvg_1/sub:z:06batch_normalization_7/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_7/AssignMovingAvg_1/7618103*
_output_shapes	
:?2-
+batch_normalization_7/AssignMovingAvg_1/mul?
;batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_7_assignmovingavg_1_7618103/batch_normalization_7/AssignMovingAvg_1/mul:z:07^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_7/AssignMovingAvg_1/7618103*
_output_shapes
 *
dtype02=
;batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOp?
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_7/batchnorm/add/y?
#batch_normalization_7/batchnorm/addAddV20batch_normalization_7/moments/Squeeze_1:output:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_7/batchnorm/add?
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_7/batchnorm/Rsqrt?
2batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_7/batchnorm/mul/ReadVariableOp?
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0:batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_7/batchnorm/mul?
%batch_normalization_7/batchnorm/mul_1Mul&leaky_re_lu_16/LeakyRelu:activations:0'batch_normalization_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_7/batchnorm/mul_1?
%batch_normalization_7/batchnorm/mul_2Mul.batch_normalization_7/moments/Squeeze:output:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_7/batchnorm/mul_2?
.batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_7/batchnorm/ReadVariableOp?
#batch_normalization_7/batchnorm/subSub6batch_normalization_7/batchnorm/ReadVariableOp:value:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_7/batchnorm/sub?
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_7/batchnorm/add_1?
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_22/MatMul/ReadVariableOp?
dense_22/MatMulMatMul)batch_normalization_7/batchnorm/add_1:z:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_22/MatMul?
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_22/BiasAdd/ReadVariableOp?
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_22/BiasAdd?
leaky_re_lu_17/LeakyRelu	LeakyReludense_22/BiasAdd:output:0*(
_output_shapes
:??????????2
leaky_re_lu_17/LeakyRelu?
4batch_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_8/moments/mean/reduction_indices?
"batch_normalization_8/moments/meanMean&leaky_re_lu_17/LeakyRelu:activations:0=batch_normalization_8/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_8/moments/mean?
*batch_normalization_8/moments/StopGradientStopGradient+batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_8/moments/StopGradient?
/batch_normalization_8/moments/SquaredDifferenceSquaredDifference&leaky_re_lu_17/LeakyRelu:activations:03batch_normalization_8/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_8/moments/SquaredDifference?
8batch_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_8/moments/variance/reduction_indices?
&batch_normalization_8/moments/varianceMean3batch_normalization_8/moments/SquaredDifference:z:0Abatch_normalization_8/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_8/moments/variance?
%batch_normalization_8/moments/SqueezeSqueeze+batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_8/moments/Squeeze?
'batch_normalization_8/moments/Squeeze_1Squeeze/batch_normalization_8/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_8/moments/Squeeze_1?
+batch_normalization_8/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_8/AssignMovingAvg/7618136*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+batch_normalization_8/AssignMovingAvg/decay?
4batch_normalization_8/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_8_assignmovingavg_7618136*
_output_shapes	
:?*
dtype026
4batch_normalization_8/AssignMovingAvg/ReadVariableOp?
)batch_normalization_8/AssignMovingAvg/subSub<batch_normalization_8/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_8/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_8/AssignMovingAvg/7618136*
_output_shapes	
:?2+
)batch_normalization_8/AssignMovingAvg/sub?
)batch_normalization_8/AssignMovingAvg/mulMul-batch_normalization_8/AssignMovingAvg/sub:z:04batch_normalization_8/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_8/AssignMovingAvg/7618136*
_output_shapes	
:?2+
)batch_normalization_8/AssignMovingAvg/mul?
9batch_normalization_8/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_8_assignmovingavg_7618136-batch_normalization_8/AssignMovingAvg/mul:z:05^batch_normalization_8/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_8/AssignMovingAvg/7618136*
_output_shapes
 *
dtype02;
9batch_normalization_8/AssignMovingAvg/AssignSubVariableOp?
-batch_normalization_8/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_8/AssignMovingAvg_1/7618142*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-batch_normalization_8/AssignMovingAvg_1/decay?
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_8_assignmovingavg_1_7618142*
_output_shapes	
:?*
dtype028
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_8/AssignMovingAvg_1/subSub>batch_normalization_8/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_8/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_8/AssignMovingAvg_1/7618142*
_output_shapes	
:?2-
+batch_normalization_8/AssignMovingAvg_1/sub?
+batch_normalization_8/AssignMovingAvg_1/mulMul/batch_normalization_8/AssignMovingAvg_1/sub:z:06batch_normalization_8/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_8/AssignMovingAvg_1/7618142*
_output_shapes	
:?2-
+batch_normalization_8/AssignMovingAvg_1/mul?
;batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_8_assignmovingavg_1_7618142/batch_normalization_8/AssignMovingAvg_1/mul:z:07^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_8/AssignMovingAvg_1/7618142*
_output_shapes
 *
dtype02=
;batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOp?
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_8/batchnorm/add/y?
#batch_normalization_8/batchnorm/addAddV20batch_normalization_8/moments/Squeeze_1:output:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_8/batchnorm/add?
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_8/batchnorm/Rsqrt?
2batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_8/batchnorm/mul/ReadVariableOp?
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0:batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_8/batchnorm/mul?
%batch_normalization_8/batchnorm/mul_1Mul&leaky_re_lu_17/LeakyRelu:activations:0'batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_8/batchnorm/mul_1?
%batch_normalization_8/batchnorm/mul_2Mul.batch_normalization_8/moments/Squeeze:output:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_8/batchnorm/mul_2?
.batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_8/batchnorm/ReadVariableOp?
#batch_normalization_8/batchnorm/subSub6batch_normalization_8/batchnorm/ReadVariableOp:value:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_8/batchnorm/sub?
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_8/batchnorm/add_1?
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02 
dense_23/MatMul/ReadVariableOp?
dense_23/MatMulMatMul)batch_normalization_8/batchnorm/add_1:z:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_23/MatMul?
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02!
dense_23/BiasAdd/ReadVariableOp?
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_23/BiasAddu
dense_23/TanhTanhdense_23/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
dense_23/Tanhc
reshape_2/ShapeShapedense_23/Tanh:y:0*
T0*
_output_shapes
:2
reshape_2/Shape?
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_2/strided_slice/stack?
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_1?
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_2?
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_2/strided_slicey
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_2/Reshape/shape/1y
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_2/Reshape/shape/2x
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_2/Reshape/shape/3?
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_2/Reshape/shape?
reshape_2/ReshapeReshapedense_23/Tanh:y:0 reshape_2/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2
reshape_2/Reshape?

IdentityIdentityreshape_2/Reshape:output:0:^batch_normalization_6/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_6/AssignMovingAvg/ReadVariableOp<^batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_6/batchnorm/ReadVariableOp3^batch_normalization_6/batchnorm/mul/ReadVariableOp:^batch_normalization_7/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_7/AssignMovingAvg/ReadVariableOp<^batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp3^batch_normalization_7/batchnorm/mul/ReadVariableOp:^batch_normalization_8/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_8/AssignMovingAvg/ReadVariableOp<^batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp3^batch_normalization_8/batchnorm/mul/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2v
9batch_normalization_6/AssignMovingAvg/AssignSubVariableOp9batch_normalization_6/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_6/AssignMovingAvg/ReadVariableOp4batch_normalization_6/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2v
9batch_normalization_7/AssignMovingAvg/AssignSubVariableOp9batch_normalization_7/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_7/AssignMovingAvg/ReadVariableOp4batch_normalization_7/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_7/batchnorm/ReadVariableOp.batch_normalization_7/batchnorm/ReadVariableOp2h
2batch_normalization_7/batchnorm/mul/ReadVariableOp2batch_normalization_7/batchnorm/mul/ReadVariableOp2v
9batch_normalization_8/AssignMovingAvg/AssignSubVariableOp9batch_normalization_8/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_8/AssignMovingAvg/ReadVariableOp4batch_normalization_8/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_8/batchnorm/ReadVariableOp.batch_normalization_8/batchnorm/ReadVariableOp2h
2batch_normalization_8/batchnorm/mul/ReadVariableOp2batch_normalization_8/batchnorm/mul/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
.__inference_sequential_5_layer_call_fn_7618313

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
I__inference_sequential_5_layer_call_and_return_conditional_losses_76170292
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
s
G__inference_multiply_5_layer_call_and_return_conditional_losses_7618034
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
?

*__inference_dense_22_layer_call_fn_7618599

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
E__inference_dense_22_layer_call_and_return_conditional_losses_76168022
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
?9
?
I__inference_sequential_5_layer_call_and_return_conditional_losses_7616971
dense_20_input
dense_20_7616919
dense_20_7616921!
batch_normalization_6_7616925!
batch_normalization_6_7616927!
batch_normalization_6_7616929!
batch_normalization_6_7616931
dense_21_7616934
dense_21_7616936!
batch_normalization_7_7616940!
batch_normalization_7_7616942!
batch_normalization_7_7616944!
batch_normalization_7_7616946
dense_22_7616949
dense_22_7616951!
batch_normalization_8_7616955!
batch_normalization_8_7616957!
batch_normalization_8_7616959!
batch_normalization_8_7616961
dense_23_7616964
dense_23_7616966
identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCalldense_20_inputdense_20_7616919dense_20_7616921*
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
E__inference_dense_20_layer_call_and_return_conditional_losses_76166542"
 dense_20/StatefulPartitionedCall?
leaky_re_lu_15/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_76166752 
leaky_re_lu_15/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0batch_normalization_6_7616925batch_normalization_6_7616927batch_normalization_6_7616929batch_normalization_6_7616931*
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
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_76163492/
-batch_normalization_6/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0dense_21_7616934dense_21_7616936*
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
E__inference_dense_21_layer_call_and_return_conditional_losses_76167282"
 dense_21/StatefulPartitionedCall?
leaky_re_lu_16/PartitionedCallPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_76167492 
leaky_re_lu_16/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_16/PartitionedCall:output:0batch_normalization_7_7616940batch_normalization_7_7616942batch_normalization_7_7616944batch_normalization_7_7616946*
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
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_76164892/
-batch_normalization_7/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_22_7616949dense_22_7616951*
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
E__inference_dense_22_layer_call_and_return_conditional_losses_76168022"
 dense_22/StatefulPartitionedCall?
leaky_re_lu_17/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_76168232 
leaky_re_lu_17/PartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_17/PartitionedCall:output:0batch_normalization_8_7616955batch_normalization_8_7616957batch_normalization_8_7616959batch_normalization_8_7616961*
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
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_76166292/
-batch_normalization_8/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_23_7616964dense_23_7616966*
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
E__inference_dense_23_layer_call_and_return_conditional_losses_76168772"
 dense_23/StatefulPartitionedCall?
reshape_2/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
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
F__inference_reshape_2_layer_call_and_return_conditional_losses_76169072
reshape_2/PartitionedCall?
IdentityIdentity"reshape_2/PartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_20_input
?
s
-__inference_embedding_5_layer_call_fn_7618017

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
H__inference_embedding_5_layer_call_and_return_conditional_losses_76171862
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
?	
?
E__inference_dense_22_layer_call_and_return_conditional_losses_7618590

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
b
F__inference_reshape_2_layer_call_and_return_conditional_losses_7618725

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

 __inference__traced_save_7618817
file_prefix5
1savev2_embedding_5_embeddings_read_readvariableop.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop:
6savev2_batch_normalization_6_gamma_read_readvariableop9
5savev2_batch_normalization_6_beta_read_readvariableop.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop:
6savev2_batch_normalization_7_gamma_read_readvariableop9
5savev2_batch_normalization_7_beta_read_readvariableop.
*savev2_dense_22_kernel_read_readvariableop,
(savev2_dense_22_bias_read_readvariableop:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop@
<savev2_batch_normalization_6_moving_mean_read_readvariableopD
@savev2_batch_normalization_6_moving_variance_read_readvariableop@
<savev2_batch_normalization_7_moving_mean_read_readvariableopD
@savev2_batch_normalization_7_moving_variance_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableop
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

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_5_embeddings_read_readvariableop*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop6savev2_batch_normalization_6_gamma_read_readvariableop5savev2_batch_normalization_6_beta_read_readvariableop*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop6savev2_batch_normalization_7_gamma_read_readvariableop5savev2_batch_normalization_7_beta_read_readvariableop*savev2_dense_22_kernel_read_readvariableop(savev2_dense_22_bias_read_readvariableop6savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop<savev2_batch_normalization_6_moving_mean_read_readvariableop@savev2_batch_normalization_6_moving_variance_read_readvariableop<savev2_batch_normalization_7_moving_mean_read_readvariableop@savev2_batch_normalization_7_moving_variance_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :pd:	d?:?:?:?:
??:?:?:?:
??:?:?:?:???:??:?:?:?:?:?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:pd:%!

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
?
G
+__inference_flatten_8_layer_call_fn_7618028

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
F__inference_flatten_8_layer_call_and_return_conditional_losses_76172042
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
?
?
D__inference_model_7_layer_call_and_return_conditional_losses_7617564

inputs
inputs_1
embedding_5_7617517
sequential_5_7617522
sequential_5_7617524
sequential_5_7617526
sequential_5_7617528
sequential_5_7617530
sequential_5_7617532
sequential_5_7617534
sequential_5_7617536
sequential_5_7617538
sequential_5_7617540
sequential_5_7617542
sequential_5_7617544
sequential_5_7617546
sequential_5_7617548
sequential_5_7617550
sequential_5_7617552
sequential_5_7617554
sequential_5_7617556
sequential_5_7617558
sequential_5_7617560
identity??#embedding_5/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?
#embedding_5/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_5_7617517*
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
H__inference_embedding_5_layer_call_and_return_conditional_losses_76171862%
#embedding_5/StatefulPartitionedCall?
flatten_8/PartitionedCallPartitionedCall,embedding_5/StatefulPartitionedCall:output:0*
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
F__inference_flatten_8_layer_call_and_return_conditional_losses_76172042
flatten_8/PartitionedCall?
multiply_5/PartitionedCallPartitionedCallinputs"flatten_8/PartitionedCall:output:0*
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
G__inference_multiply_5_layer_call_and_return_conditional_losses_76172182
multiply_5/PartitionedCall?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall#multiply_5/PartitionedCall:output:0sequential_5_7617522sequential_5_7617524sequential_5_7617526sequential_5_7617528sequential_5_7617530sequential_5_7617532sequential_5_7617534sequential_5_7617536sequential_5_7617538sequential_5_7617540sequential_5_7617542sequential_5_7617544sequential_5_7617546sequential_5_7617548sequential_5_7617550sequential_5_7617552sequential_5_7617554sequential_5_7617556sequential_5_7617558sequential_5_7617560* 
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
I__inference_sequential_5_layer_call_and_return_conditional_losses_76171292&
$sequential_5/StatefulPartitionedCall?
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0$^embedding_5/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2J
#embedding_5/StatefulPartitionedCall#embedding_5/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:O K
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
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7616629

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
E__inference_dense_21_layer_call_and_return_conditional_losses_7618479

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
?
L
0__inference_leaky_re_lu_16_layer_call_fn_7618498

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
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_76167492
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
?	
?
E__inference_dense_22_layer_call_and_return_conditional_losses_7616802

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
?0
?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7616456

inputs
assignmovingavg_7616431
assignmovingavg_1_7616437)
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
loc:@AssignMovingAvg/7616431*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7616431*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/7616431*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/7616431*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7616431AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/7616431*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/7616437*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7616437*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/7616437*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/7616437*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7616437AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/7616437*
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
??
?
D__inference_model_7_layer_call_and_return_conditional_losses_7617806
inputs_0
inputs_1(
$embedding_5_embedding_lookup_76176638
4sequential_5_dense_20_matmul_readvariableop_resource9
5sequential_5_dense_20_biasadd_readvariableop_resource>
:sequential_5_batch_normalization_6_assignmovingavg_7617686@
<sequential_5_batch_normalization_6_assignmovingavg_1_7617692L
Hsequential_5_batch_normalization_6_batchnorm_mul_readvariableop_resourceH
Dsequential_5_batch_normalization_6_batchnorm_readvariableop_resource8
4sequential_5_dense_21_matmul_readvariableop_resource9
5sequential_5_dense_21_biasadd_readvariableop_resource>
:sequential_5_batch_normalization_7_assignmovingavg_7617725@
<sequential_5_batch_normalization_7_assignmovingavg_1_7617731L
Hsequential_5_batch_normalization_7_batchnorm_mul_readvariableop_resourceH
Dsequential_5_batch_normalization_7_batchnorm_readvariableop_resource8
4sequential_5_dense_22_matmul_readvariableop_resource9
5sequential_5_dense_22_biasadd_readvariableop_resource>
:sequential_5_batch_normalization_8_assignmovingavg_7617764@
<sequential_5_batch_normalization_8_assignmovingavg_1_7617770L
Hsequential_5_batch_normalization_8_batchnorm_mul_readvariableop_resourceH
Dsequential_5_batch_normalization_8_batchnorm_readvariableop_resource8
4sequential_5_dense_23_matmul_readvariableop_resource9
5sequential_5_dense_23_biasadd_readvariableop_resource
identity??embedding_5/embedding_lookup?Fsequential_5/batch_normalization_6/AssignMovingAvg/AssignSubVariableOp?Asequential_5/batch_normalization_6/AssignMovingAvg/ReadVariableOp?Hsequential_5/batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOp?Csequential_5/batch_normalization_6/AssignMovingAvg_1/ReadVariableOp?;sequential_5/batch_normalization_6/batchnorm/ReadVariableOp??sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOp?Fsequential_5/batch_normalization_7/AssignMovingAvg/AssignSubVariableOp?Asequential_5/batch_normalization_7/AssignMovingAvg/ReadVariableOp?Hsequential_5/batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOp?Csequential_5/batch_normalization_7/AssignMovingAvg_1/ReadVariableOp?;sequential_5/batch_normalization_7/batchnorm/ReadVariableOp??sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOp?Fsequential_5/batch_normalization_8/AssignMovingAvg/AssignSubVariableOp?Asequential_5/batch_normalization_8/AssignMovingAvg/ReadVariableOp?Hsequential_5/batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOp?Csequential_5/batch_normalization_8/AssignMovingAvg_1/ReadVariableOp?;sequential_5/batch_normalization_8/batchnorm/ReadVariableOp??sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp?,sequential_5/dense_20/BiasAdd/ReadVariableOp?+sequential_5/dense_20/MatMul/ReadVariableOp?,sequential_5/dense_21/BiasAdd/ReadVariableOp?+sequential_5/dense_21/MatMul/ReadVariableOp?,sequential_5/dense_22/BiasAdd/ReadVariableOp?+sequential_5/dense_22/MatMul/ReadVariableOp?,sequential_5/dense_23/BiasAdd/ReadVariableOp?+sequential_5/dense_23/MatMul/ReadVariableOp?
embedding_5/embedding_lookupResourceGather$embedding_5_embedding_lookup_7617663inputs_1",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_5/embedding_lookup/7617663*+
_output_shapes
:?????????d*
dtype02
embedding_5/embedding_lookup?
%embedding_5/embedding_lookup/IdentityIdentity%embedding_5/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_5/embedding_lookup/7617663*+
_output_shapes
:?????????d2'
%embedding_5/embedding_lookup/Identity?
'embedding_5/embedding_lookup/Identity_1Identity.embedding_5/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2)
'embedding_5/embedding_lookup/Identity_1s
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"????d   2
flatten_8/Const?
flatten_8/ReshapeReshape0embedding_5/embedding_lookup/Identity_1:output:0flatten_8/Const:output:0*
T0*'
_output_shapes
:?????????d2
flatten_8/Reshape
multiply_5/mulMulinputs_0flatten_8/Reshape:output:0*
T0*'
_output_shapes
:?????????d2
multiply_5/mul?
+sequential_5/dense_20/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_20_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02-
+sequential_5/dense_20/MatMul/ReadVariableOp?
sequential_5/dense_20/MatMulMatMulmultiply_5/mul:z:03sequential_5/dense_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_20/MatMul?
,sequential_5/dense_20/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_5/dense_20/BiasAdd/ReadVariableOp?
sequential_5/dense_20/BiasAddBiasAdd&sequential_5/dense_20/MatMul:product:04sequential_5/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_20/BiasAdd?
%sequential_5/leaky_re_lu_15/LeakyRelu	LeakyRelu&sequential_5/dense_20/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_5/leaky_re_lu_15/LeakyRelu?
Asequential_5/batch_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2C
Asequential_5/batch_normalization_6/moments/mean/reduction_indices?
/sequential_5/batch_normalization_6/moments/meanMean3sequential_5/leaky_re_lu_15/LeakyRelu:activations:0Jsequential_5/batch_normalization_6/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(21
/sequential_5/batch_normalization_6/moments/mean?
7sequential_5/batch_normalization_6/moments/StopGradientStopGradient8sequential_5/batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes
:	?29
7sequential_5/batch_normalization_6/moments/StopGradient?
<sequential_5/batch_normalization_6/moments/SquaredDifferenceSquaredDifference3sequential_5/leaky_re_lu_15/LeakyRelu:activations:0@sequential_5/batch_normalization_6/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2>
<sequential_5/batch_normalization_6/moments/SquaredDifference?
Esequential_5/batch_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2G
Esequential_5/batch_normalization_6/moments/variance/reduction_indices?
3sequential_5/batch_normalization_6/moments/varianceMean@sequential_5/batch_normalization_6/moments/SquaredDifference:z:0Nsequential_5/batch_normalization_6/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(25
3sequential_5/batch_normalization_6/moments/variance?
2sequential_5/batch_normalization_6/moments/SqueezeSqueeze8sequential_5/batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 24
2sequential_5/batch_normalization_6/moments/Squeeze?
4sequential_5/batch_normalization_6/moments/Squeeze_1Squeeze<sequential_5/batch_normalization_6/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 26
4sequential_5/batch_normalization_6/moments/Squeeze_1?
8sequential_5/batch_normalization_6/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_5/batch_normalization_6/AssignMovingAvg/7617686*
_output_shapes
: *
dtype0*
valueB
 *??L>2:
8sequential_5/batch_normalization_6/AssignMovingAvg/decay?
Asequential_5/batch_normalization_6/AssignMovingAvg/ReadVariableOpReadVariableOp:sequential_5_batch_normalization_6_assignmovingavg_7617686*
_output_shapes	
:?*
dtype02C
Asequential_5/batch_normalization_6/AssignMovingAvg/ReadVariableOp?
6sequential_5/batch_normalization_6/AssignMovingAvg/subSubIsequential_5/batch_normalization_6/AssignMovingAvg/ReadVariableOp:value:0;sequential_5/batch_normalization_6/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_5/batch_normalization_6/AssignMovingAvg/7617686*
_output_shapes	
:?28
6sequential_5/batch_normalization_6/AssignMovingAvg/sub?
6sequential_5/batch_normalization_6/AssignMovingAvg/mulMul:sequential_5/batch_normalization_6/AssignMovingAvg/sub:z:0Asequential_5/batch_normalization_6/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_5/batch_normalization_6/AssignMovingAvg/7617686*
_output_shapes	
:?28
6sequential_5/batch_normalization_6/AssignMovingAvg/mul?
Fsequential_5/batch_normalization_6/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp:sequential_5_batch_normalization_6_assignmovingavg_7617686:sequential_5/batch_normalization_6/AssignMovingAvg/mul:z:0B^sequential_5/batch_normalization_6/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_5/batch_normalization_6/AssignMovingAvg/7617686*
_output_shapes
 *
dtype02H
Fsequential_5/batch_normalization_6/AssignMovingAvg/AssignSubVariableOp?
:sequential_5/batch_normalization_6/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_5/batch_normalization_6/AssignMovingAvg_1/7617692*
_output_shapes
: *
dtype0*
valueB
 *??L>2<
:sequential_5/batch_normalization_6/AssignMovingAvg_1/decay?
Csequential_5/batch_normalization_6/AssignMovingAvg_1/ReadVariableOpReadVariableOp<sequential_5_batch_normalization_6_assignmovingavg_1_7617692*
_output_shapes	
:?*
dtype02E
Csequential_5/batch_normalization_6/AssignMovingAvg_1/ReadVariableOp?
8sequential_5/batch_normalization_6/AssignMovingAvg_1/subSubKsequential_5/batch_normalization_6/AssignMovingAvg_1/ReadVariableOp:value:0=sequential_5/batch_normalization_6/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_5/batch_normalization_6/AssignMovingAvg_1/7617692*
_output_shapes	
:?2:
8sequential_5/batch_normalization_6/AssignMovingAvg_1/sub?
8sequential_5/batch_normalization_6/AssignMovingAvg_1/mulMul<sequential_5/batch_normalization_6/AssignMovingAvg_1/sub:z:0Csequential_5/batch_normalization_6/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_5/batch_normalization_6/AssignMovingAvg_1/7617692*
_output_shapes	
:?2:
8sequential_5/batch_normalization_6/AssignMovingAvg_1/mul?
Hsequential_5/batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp<sequential_5_batch_normalization_6_assignmovingavg_1_7617692<sequential_5/batch_normalization_6/AssignMovingAvg_1/mul:z:0D^sequential_5/batch_normalization_6/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_5/batch_normalization_6/AssignMovingAvg_1/7617692*
_output_shapes
 *
dtype02J
Hsequential_5/batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOp?
2sequential_5/batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_5/batch_normalization_6/batchnorm/add/y?
0sequential_5/batch_normalization_6/batchnorm/addAddV2=sequential_5/batch_normalization_6/moments/Squeeze_1:output:0;sequential_5/batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_6/batchnorm/add?
2sequential_5/batch_normalization_6/batchnorm/RsqrtRsqrt4sequential_5/batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_5/batch_normalization_6/batchnorm/Rsqrt?
?sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_5_batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOp?
0sequential_5/batch_normalization_6/batchnorm/mulMul6sequential_5/batch_normalization_6/batchnorm/Rsqrt:y:0Gsequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_6/batchnorm/mul?
2sequential_5/batch_normalization_6/batchnorm/mul_1Mul3sequential_5/leaky_re_lu_15/LeakyRelu:activations:04sequential_5/batch_normalization_6/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_5/batch_normalization_6/batchnorm/mul_1?
2sequential_5/batch_normalization_6/batchnorm/mul_2Mul;sequential_5/batch_normalization_6/moments/Squeeze:output:04sequential_5/batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_5/batch_normalization_6/batchnorm/mul_2?
;sequential_5/batch_normalization_6/batchnorm/ReadVariableOpReadVariableOpDsequential_5_batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_5/batch_normalization_6/batchnorm/ReadVariableOp?
0sequential_5/batch_normalization_6/batchnorm/subSubCsequential_5/batch_normalization_6/batchnorm/ReadVariableOp:value:06sequential_5/batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_6/batchnorm/sub?
2sequential_5/batch_normalization_6/batchnorm/add_1AddV26sequential_5/batch_normalization_6/batchnorm/mul_1:z:04sequential_5/batch_normalization_6/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_5/batch_normalization_6/batchnorm/add_1?
+sequential_5/dense_21/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_21_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_5/dense_21/MatMul/ReadVariableOp?
sequential_5/dense_21/MatMulMatMul6sequential_5/batch_normalization_6/batchnorm/add_1:z:03sequential_5/dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_21/MatMul?
,sequential_5/dense_21/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_5/dense_21/BiasAdd/ReadVariableOp?
sequential_5/dense_21/BiasAddBiasAdd&sequential_5/dense_21/MatMul:product:04sequential_5/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_21/BiasAdd?
%sequential_5/leaky_re_lu_16/LeakyRelu	LeakyRelu&sequential_5/dense_21/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_5/leaky_re_lu_16/LeakyRelu?
Asequential_5/batch_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2C
Asequential_5/batch_normalization_7/moments/mean/reduction_indices?
/sequential_5/batch_normalization_7/moments/meanMean3sequential_5/leaky_re_lu_16/LeakyRelu:activations:0Jsequential_5/batch_normalization_7/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(21
/sequential_5/batch_normalization_7/moments/mean?
7sequential_5/batch_normalization_7/moments/StopGradientStopGradient8sequential_5/batch_normalization_7/moments/mean:output:0*
T0*
_output_shapes
:	?29
7sequential_5/batch_normalization_7/moments/StopGradient?
<sequential_5/batch_normalization_7/moments/SquaredDifferenceSquaredDifference3sequential_5/leaky_re_lu_16/LeakyRelu:activations:0@sequential_5/batch_normalization_7/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2>
<sequential_5/batch_normalization_7/moments/SquaredDifference?
Esequential_5/batch_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2G
Esequential_5/batch_normalization_7/moments/variance/reduction_indices?
3sequential_5/batch_normalization_7/moments/varianceMean@sequential_5/batch_normalization_7/moments/SquaredDifference:z:0Nsequential_5/batch_normalization_7/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(25
3sequential_5/batch_normalization_7/moments/variance?
2sequential_5/batch_normalization_7/moments/SqueezeSqueeze8sequential_5/batch_normalization_7/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 24
2sequential_5/batch_normalization_7/moments/Squeeze?
4sequential_5/batch_normalization_7/moments/Squeeze_1Squeeze<sequential_5/batch_normalization_7/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 26
4sequential_5/batch_normalization_7/moments/Squeeze_1?
8sequential_5/batch_normalization_7/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_5/batch_normalization_7/AssignMovingAvg/7617725*
_output_shapes
: *
dtype0*
valueB
 *??L>2:
8sequential_5/batch_normalization_7/AssignMovingAvg/decay?
Asequential_5/batch_normalization_7/AssignMovingAvg/ReadVariableOpReadVariableOp:sequential_5_batch_normalization_7_assignmovingavg_7617725*
_output_shapes	
:?*
dtype02C
Asequential_5/batch_normalization_7/AssignMovingAvg/ReadVariableOp?
6sequential_5/batch_normalization_7/AssignMovingAvg/subSubIsequential_5/batch_normalization_7/AssignMovingAvg/ReadVariableOp:value:0;sequential_5/batch_normalization_7/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_5/batch_normalization_7/AssignMovingAvg/7617725*
_output_shapes	
:?28
6sequential_5/batch_normalization_7/AssignMovingAvg/sub?
6sequential_5/batch_normalization_7/AssignMovingAvg/mulMul:sequential_5/batch_normalization_7/AssignMovingAvg/sub:z:0Asequential_5/batch_normalization_7/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_5/batch_normalization_7/AssignMovingAvg/7617725*
_output_shapes	
:?28
6sequential_5/batch_normalization_7/AssignMovingAvg/mul?
Fsequential_5/batch_normalization_7/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp:sequential_5_batch_normalization_7_assignmovingavg_7617725:sequential_5/batch_normalization_7/AssignMovingAvg/mul:z:0B^sequential_5/batch_normalization_7/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_5/batch_normalization_7/AssignMovingAvg/7617725*
_output_shapes
 *
dtype02H
Fsequential_5/batch_normalization_7/AssignMovingAvg/AssignSubVariableOp?
:sequential_5/batch_normalization_7/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_5/batch_normalization_7/AssignMovingAvg_1/7617731*
_output_shapes
: *
dtype0*
valueB
 *??L>2<
:sequential_5/batch_normalization_7/AssignMovingAvg_1/decay?
Csequential_5/batch_normalization_7/AssignMovingAvg_1/ReadVariableOpReadVariableOp<sequential_5_batch_normalization_7_assignmovingavg_1_7617731*
_output_shapes	
:?*
dtype02E
Csequential_5/batch_normalization_7/AssignMovingAvg_1/ReadVariableOp?
8sequential_5/batch_normalization_7/AssignMovingAvg_1/subSubKsequential_5/batch_normalization_7/AssignMovingAvg_1/ReadVariableOp:value:0=sequential_5/batch_normalization_7/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_5/batch_normalization_7/AssignMovingAvg_1/7617731*
_output_shapes	
:?2:
8sequential_5/batch_normalization_7/AssignMovingAvg_1/sub?
8sequential_5/batch_normalization_7/AssignMovingAvg_1/mulMul<sequential_5/batch_normalization_7/AssignMovingAvg_1/sub:z:0Csequential_5/batch_normalization_7/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_5/batch_normalization_7/AssignMovingAvg_1/7617731*
_output_shapes	
:?2:
8sequential_5/batch_normalization_7/AssignMovingAvg_1/mul?
Hsequential_5/batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp<sequential_5_batch_normalization_7_assignmovingavg_1_7617731<sequential_5/batch_normalization_7/AssignMovingAvg_1/mul:z:0D^sequential_5/batch_normalization_7/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_5/batch_normalization_7/AssignMovingAvg_1/7617731*
_output_shapes
 *
dtype02J
Hsequential_5/batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOp?
2sequential_5/batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_5/batch_normalization_7/batchnorm/add/y?
0sequential_5/batch_normalization_7/batchnorm/addAddV2=sequential_5/batch_normalization_7/moments/Squeeze_1:output:0;sequential_5/batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_7/batchnorm/add?
2sequential_5/batch_normalization_7/batchnorm/RsqrtRsqrt4sequential_5/batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_5/batch_normalization_7/batchnorm/Rsqrt?
?sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_5_batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOp?
0sequential_5/batch_normalization_7/batchnorm/mulMul6sequential_5/batch_normalization_7/batchnorm/Rsqrt:y:0Gsequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_7/batchnorm/mul?
2sequential_5/batch_normalization_7/batchnorm/mul_1Mul3sequential_5/leaky_re_lu_16/LeakyRelu:activations:04sequential_5/batch_normalization_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_5/batch_normalization_7/batchnorm/mul_1?
2sequential_5/batch_normalization_7/batchnorm/mul_2Mul;sequential_5/batch_normalization_7/moments/Squeeze:output:04sequential_5/batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_5/batch_normalization_7/batchnorm/mul_2?
;sequential_5/batch_normalization_7/batchnorm/ReadVariableOpReadVariableOpDsequential_5_batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_5/batch_normalization_7/batchnorm/ReadVariableOp?
0sequential_5/batch_normalization_7/batchnorm/subSubCsequential_5/batch_normalization_7/batchnorm/ReadVariableOp:value:06sequential_5/batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_7/batchnorm/sub?
2sequential_5/batch_normalization_7/batchnorm/add_1AddV26sequential_5/batch_normalization_7/batchnorm/mul_1:z:04sequential_5/batch_normalization_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_5/batch_normalization_7/batchnorm/add_1?
+sequential_5/dense_22/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_22_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_5/dense_22/MatMul/ReadVariableOp?
sequential_5/dense_22/MatMulMatMul6sequential_5/batch_normalization_7/batchnorm/add_1:z:03sequential_5/dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_22/MatMul?
,sequential_5/dense_22/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_5/dense_22/BiasAdd/ReadVariableOp?
sequential_5/dense_22/BiasAddBiasAdd&sequential_5/dense_22/MatMul:product:04sequential_5/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_22/BiasAdd?
%sequential_5/leaky_re_lu_17/LeakyRelu	LeakyRelu&sequential_5/dense_22/BiasAdd:output:0*(
_output_shapes
:??????????2'
%sequential_5/leaky_re_lu_17/LeakyRelu?
Asequential_5/batch_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2C
Asequential_5/batch_normalization_8/moments/mean/reduction_indices?
/sequential_5/batch_normalization_8/moments/meanMean3sequential_5/leaky_re_lu_17/LeakyRelu:activations:0Jsequential_5/batch_normalization_8/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(21
/sequential_5/batch_normalization_8/moments/mean?
7sequential_5/batch_normalization_8/moments/StopGradientStopGradient8sequential_5/batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes
:	?29
7sequential_5/batch_normalization_8/moments/StopGradient?
<sequential_5/batch_normalization_8/moments/SquaredDifferenceSquaredDifference3sequential_5/leaky_re_lu_17/LeakyRelu:activations:0@sequential_5/batch_normalization_8/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2>
<sequential_5/batch_normalization_8/moments/SquaredDifference?
Esequential_5/batch_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2G
Esequential_5/batch_normalization_8/moments/variance/reduction_indices?
3sequential_5/batch_normalization_8/moments/varianceMean@sequential_5/batch_normalization_8/moments/SquaredDifference:z:0Nsequential_5/batch_normalization_8/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(25
3sequential_5/batch_normalization_8/moments/variance?
2sequential_5/batch_normalization_8/moments/SqueezeSqueeze8sequential_5/batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 24
2sequential_5/batch_normalization_8/moments/Squeeze?
4sequential_5/batch_normalization_8/moments/Squeeze_1Squeeze<sequential_5/batch_normalization_8/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 26
4sequential_5/batch_normalization_8/moments/Squeeze_1?
8sequential_5/batch_normalization_8/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_5/batch_normalization_8/AssignMovingAvg/7617764*
_output_shapes
: *
dtype0*
valueB
 *??L>2:
8sequential_5/batch_normalization_8/AssignMovingAvg/decay?
Asequential_5/batch_normalization_8/AssignMovingAvg/ReadVariableOpReadVariableOp:sequential_5_batch_normalization_8_assignmovingavg_7617764*
_output_shapes	
:?*
dtype02C
Asequential_5/batch_normalization_8/AssignMovingAvg/ReadVariableOp?
6sequential_5/batch_normalization_8/AssignMovingAvg/subSubIsequential_5/batch_normalization_8/AssignMovingAvg/ReadVariableOp:value:0;sequential_5/batch_normalization_8/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_5/batch_normalization_8/AssignMovingAvg/7617764*
_output_shapes	
:?28
6sequential_5/batch_normalization_8/AssignMovingAvg/sub?
6sequential_5/batch_normalization_8/AssignMovingAvg/mulMul:sequential_5/batch_normalization_8/AssignMovingAvg/sub:z:0Asequential_5/batch_normalization_8/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_5/batch_normalization_8/AssignMovingAvg/7617764*
_output_shapes	
:?28
6sequential_5/batch_normalization_8/AssignMovingAvg/mul?
Fsequential_5/batch_normalization_8/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp:sequential_5_batch_normalization_8_assignmovingavg_7617764:sequential_5/batch_normalization_8/AssignMovingAvg/mul:z:0B^sequential_5/batch_normalization_8/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*M
_classC
A?loc:@sequential_5/batch_normalization_8/AssignMovingAvg/7617764*
_output_shapes
 *
dtype02H
Fsequential_5/batch_normalization_8/AssignMovingAvg/AssignSubVariableOp?
:sequential_5/batch_normalization_8/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_5/batch_normalization_8/AssignMovingAvg_1/7617770*
_output_shapes
: *
dtype0*
valueB
 *??L>2<
:sequential_5/batch_normalization_8/AssignMovingAvg_1/decay?
Csequential_5/batch_normalization_8/AssignMovingAvg_1/ReadVariableOpReadVariableOp<sequential_5_batch_normalization_8_assignmovingavg_1_7617770*
_output_shapes	
:?*
dtype02E
Csequential_5/batch_normalization_8/AssignMovingAvg_1/ReadVariableOp?
8sequential_5/batch_normalization_8/AssignMovingAvg_1/subSubKsequential_5/batch_normalization_8/AssignMovingAvg_1/ReadVariableOp:value:0=sequential_5/batch_normalization_8/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_5/batch_normalization_8/AssignMovingAvg_1/7617770*
_output_shapes	
:?2:
8sequential_5/batch_normalization_8/AssignMovingAvg_1/sub?
8sequential_5/batch_normalization_8/AssignMovingAvg_1/mulMul<sequential_5/batch_normalization_8/AssignMovingAvg_1/sub:z:0Csequential_5/batch_normalization_8/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*O
_classE
CAloc:@sequential_5/batch_normalization_8/AssignMovingAvg_1/7617770*
_output_shapes	
:?2:
8sequential_5/batch_normalization_8/AssignMovingAvg_1/mul?
Hsequential_5/batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp<sequential_5_batch_normalization_8_assignmovingavg_1_7617770<sequential_5/batch_normalization_8/AssignMovingAvg_1/mul:z:0D^sequential_5/batch_normalization_8/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@sequential_5/batch_normalization_8/AssignMovingAvg_1/7617770*
_output_shapes
 *
dtype02J
Hsequential_5/batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOp?
2sequential_5/batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2sequential_5/batch_normalization_8/batchnorm/add/y?
0sequential_5/batch_normalization_8/batchnorm/addAddV2=sequential_5/batch_normalization_8/moments/Squeeze_1:output:0;sequential_5/batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_8/batchnorm/add?
2sequential_5/batch_normalization_8/batchnorm/RsqrtRsqrt4sequential_5/batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2sequential_5/batch_normalization_8/batchnorm/Rsqrt?
?sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_5_batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp?
0sequential_5/batch_normalization_8/batchnorm/mulMul6sequential_5/batch_normalization_8/batchnorm/Rsqrt:y:0Gsequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_8/batchnorm/mul?
2sequential_5/batch_normalization_8/batchnorm/mul_1Mul3sequential_5/leaky_re_lu_17/LeakyRelu:activations:04sequential_5/batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2sequential_5/batch_normalization_8/batchnorm/mul_1?
2sequential_5/batch_normalization_8/batchnorm/mul_2Mul;sequential_5/batch_normalization_8/moments/Squeeze:output:04sequential_5/batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2sequential_5/batch_normalization_8/batchnorm/mul_2?
;sequential_5/batch_normalization_8/batchnorm/ReadVariableOpReadVariableOpDsequential_5_batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_5/batch_normalization_8/batchnorm/ReadVariableOp?
0sequential_5/batch_normalization_8/batchnorm/subSubCsequential_5/batch_normalization_8/batchnorm/ReadVariableOp:value:06sequential_5/batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0sequential_5/batch_normalization_8/batchnorm/sub?
2sequential_5/batch_normalization_8/batchnorm/add_1AddV26sequential_5/batch_normalization_8/batchnorm/mul_1:z:04sequential_5/batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2sequential_5/batch_normalization_8/batchnorm/add_1?
+sequential_5/dense_23/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_23_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02-
+sequential_5/dense_23/MatMul/ReadVariableOp?
sequential_5/dense_23/MatMulMatMul6sequential_5/batch_normalization_8/batchnorm/add_1:z:03sequential_5/dense_23/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_5/dense_23/MatMul?
,sequential_5/dense_23/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_23_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02.
,sequential_5/dense_23/BiasAdd/ReadVariableOp?
sequential_5/dense_23/BiasAddBiasAdd&sequential_5/dense_23/MatMul:product:04sequential_5/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_5/dense_23/BiasAdd?
sequential_5/dense_23/TanhTanh&sequential_5/dense_23/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
sequential_5/dense_23/Tanh?
sequential_5/reshape_2/ShapeShapesequential_5/dense_23/Tanh:y:0*
T0*
_output_shapes
:2
sequential_5/reshape_2/Shape?
*sequential_5/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/reshape_2/strided_slice/stack?
,sequential_5/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/reshape_2/strided_slice/stack_1?
,sequential_5/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/reshape_2/strided_slice/stack_2?
$sequential_5/reshape_2/strided_sliceStridedSlice%sequential_5/reshape_2/Shape:output:03sequential_5/reshape_2/strided_slice/stack:output:05sequential_5/reshape_2/strided_slice/stack_1:output:05sequential_5/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_5/reshape_2/strided_slice?
&sequential_5/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_5/reshape_2/Reshape/shape/1?
&sequential_5/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_5/reshape_2/Reshape/shape/2?
&sequential_5/reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_5/reshape_2/Reshape/shape/3?
$sequential_5/reshape_2/Reshape/shapePack-sequential_5/reshape_2/strided_slice:output:0/sequential_5/reshape_2/Reshape/shape/1:output:0/sequential_5/reshape_2/Reshape/shape/2:output:0/sequential_5/reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$sequential_5/reshape_2/Reshape/shape?
sequential_5/reshape_2/ReshapeReshapesequential_5/dense_23/Tanh:y:0-sequential_5/reshape_2/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2 
sequential_5/reshape_2/Reshape?
IdentityIdentity'sequential_5/reshape_2/Reshape:output:0^embedding_5/embedding_lookupG^sequential_5/batch_normalization_6/AssignMovingAvg/AssignSubVariableOpB^sequential_5/batch_normalization_6/AssignMovingAvg/ReadVariableOpI^sequential_5/batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOpD^sequential_5/batch_normalization_6/AssignMovingAvg_1/ReadVariableOp<^sequential_5/batch_normalization_6/batchnorm/ReadVariableOp@^sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOpG^sequential_5/batch_normalization_7/AssignMovingAvg/AssignSubVariableOpB^sequential_5/batch_normalization_7/AssignMovingAvg/ReadVariableOpI^sequential_5/batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOpD^sequential_5/batch_normalization_7/AssignMovingAvg_1/ReadVariableOp<^sequential_5/batch_normalization_7/batchnorm/ReadVariableOp@^sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOpG^sequential_5/batch_normalization_8/AssignMovingAvg/AssignSubVariableOpB^sequential_5/batch_normalization_8/AssignMovingAvg/ReadVariableOpI^sequential_5/batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOpD^sequential_5/batch_normalization_8/AssignMovingAvg_1/ReadVariableOp<^sequential_5/batch_normalization_8/batchnorm/ReadVariableOp@^sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp-^sequential_5/dense_20/BiasAdd/ReadVariableOp,^sequential_5/dense_20/MatMul/ReadVariableOp-^sequential_5/dense_21/BiasAdd/ReadVariableOp,^sequential_5/dense_21/MatMul/ReadVariableOp-^sequential_5/dense_22/BiasAdd/ReadVariableOp,^sequential_5/dense_22/MatMul/ReadVariableOp-^sequential_5/dense_23/BiasAdd/ReadVariableOp,^sequential_5/dense_23/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2<
embedding_5/embedding_lookupembedding_5/embedding_lookup2?
Fsequential_5/batch_normalization_6/AssignMovingAvg/AssignSubVariableOpFsequential_5/batch_normalization_6/AssignMovingAvg/AssignSubVariableOp2?
Asequential_5/batch_normalization_6/AssignMovingAvg/ReadVariableOpAsequential_5/batch_normalization_6/AssignMovingAvg/ReadVariableOp2?
Hsequential_5/batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOpHsequential_5/batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOp2?
Csequential_5/batch_normalization_6/AssignMovingAvg_1/ReadVariableOpCsequential_5/batch_normalization_6/AssignMovingAvg_1/ReadVariableOp2z
;sequential_5/batch_normalization_6/batchnorm/ReadVariableOp;sequential_5/batch_normalization_6/batchnorm/ReadVariableOp2?
?sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOp?sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOp2?
Fsequential_5/batch_normalization_7/AssignMovingAvg/AssignSubVariableOpFsequential_5/batch_normalization_7/AssignMovingAvg/AssignSubVariableOp2?
Asequential_5/batch_normalization_7/AssignMovingAvg/ReadVariableOpAsequential_5/batch_normalization_7/AssignMovingAvg/ReadVariableOp2?
Hsequential_5/batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOpHsequential_5/batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOp2?
Csequential_5/batch_normalization_7/AssignMovingAvg_1/ReadVariableOpCsequential_5/batch_normalization_7/AssignMovingAvg_1/ReadVariableOp2z
;sequential_5/batch_normalization_7/batchnorm/ReadVariableOp;sequential_5/batch_normalization_7/batchnorm/ReadVariableOp2?
?sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOp?sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOp2?
Fsequential_5/batch_normalization_8/AssignMovingAvg/AssignSubVariableOpFsequential_5/batch_normalization_8/AssignMovingAvg/AssignSubVariableOp2?
Asequential_5/batch_normalization_8/AssignMovingAvg/ReadVariableOpAsequential_5/batch_normalization_8/AssignMovingAvg/ReadVariableOp2?
Hsequential_5/batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOpHsequential_5/batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOp2?
Csequential_5/batch_normalization_8/AssignMovingAvg_1/ReadVariableOpCsequential_5/batch_normalization_8/AssignMovingAvg_1/ReadVariableOp2z
;sequential_5/batch_normalization_8/batchnorm/ReadVariableOp;sequential_5/batch_normalization_8/batchnorm/ReadVariableOp2?
?sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp?sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp2\
,sequential_5/dense_20/BiasAdd/ReadVariableOp,sequential_5/dense_20/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_20/MatMul/ReadVariableOp+sequential_5/dense_20/MatMul/ReadVariableOp2\
,sequential_5/dense_21/BiasAdd/ReadVariableOp,sequential_5/dense_21/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_21/MatMul/ReadVariableOp+sequential_5/dense_21/MatMul/ReadVariableOp2\
,sequential_5/dense_22/BiasAdd/ReadVariableOp,sequential_5/dense_22/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_22/MatMul/ReadVariableOp+sequential_5/dense_22/MatMul/ReadVariableOp2\
,sequential_5/dense_23/BiasAdd/ReadVariableOp,sequential_5/dense_23/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_23/MatMul/ReadVariableOp+sequential_5/dense_23/MatMul/ReadVariableOp:Q M
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
?
?
D__inference_model_7_layer_call_and_return_conditional_losses_7617410
input_15
input_16
embedding_5_7617363
sequential_5_7617368
sequential_5_7617370
sequential_5_7617372
sequential_5_7617374
sequential_5_7617376
sequential_5_7617378
sequential_5_7617380
sequential_5_7617382
sequential_5_7617384
sequential_5_7617386
sequential_5_7617388
sequential_5_7617390
sequential_5_7617392
sequential_5_7617394
sequential_5_7617396
sequential_5_7617398
sequential_5_7617400
sequential_5_7617402
sequential_5_7617404
sequential_5_7617406
identity??#embedding_5/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?
#embedding_5/StatefulPartitionedCallStatefulPartitionedCallinput_16embedding_5_7617363*
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
H__inference_embedding_5_layer_call_and_return_conditional_losses_76171862%
#embedding_5/StatefulPartitionedCall?
flatten_8/PartitionedCallPartitionedCall,embedding_5/StatefulPartitionedCall:output:0*
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
F__inference_flatten_8_layer_call_and_return_conditional_losses_76172042
flatten_8/PartitionedCall?
multiply_5/PartitionedCallPartitionedCallinput_15"flatten_8/PartitionedCall:output:0*
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
G__inference_multiply_5_layer_call_and_return_conditional_losses_76172182
multiply_5/PartitionedCall?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall#multiply_5/PartitionedCall:output:0sequential_5_7617368sequential_5_7617370sequential_5_7617372sequential_5_7617374sequential_5_7617376sequential_5_7617378sequential_5_7617380sequential_5_7617382sequential_5_7617384sequential_5_7617386sequential_5_7617388sequential_5_7617390sequential_5_7617392sequential_5_7617394sequential_5_7617396sequential_5_7617398sequential_5_7617400sequential_5_7617402sequential_5_7617404sequential_5_7617406* 
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
I__inference_sequential_5_layer_call_and_return_conditional_losses_76171292&
$sequential_5/StatefulPartitionedCall?
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0$^embedding_5/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2J
#embedding_5/StatefulPartitionedCall#embedding_5/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
input_15:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_16
?
?
7__inference_batch_normalization_7_layer_call_fn_7618580

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
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_76164892
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
?

*__inference_dense_20_layer_call_fn_7618377

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
E__inference_dense_20_layer_call_and_return_conditional_losses_76166542
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
?9
?
I__inference_sequential_5_layer_call_and_return_conditional_losses_7617029

inputs
dense_20_7616977
dense_20_7616979!
batch_normalization_6_7616983!
batch_normalization_6_7616985!
batch_normalization_6_7616987!
batch_normalization_6_7616989
dense_21_7616992
dense_21_7616994!
batch_normalization_7_7616998!
batch_normalization_7_7617000!
batch_normalization_7_7617002!
batch_normalization_7_7617004
dense_22_7617007
dense_22_7617009!
batch_normalization_8_7617013!
batch_normalization_8_7617015!
batch_normalization_8_7617017!
batch_normalization_8_7617019
dense_23_7617022
dense_23_7617024
identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCallinputsdense_20_7616977dense_20_7616979*
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
E__inference_dense_20_layer_call_and_return_conditional_losses_76166542"
 dense_20/StatefulPartitionedCall?
leaky_re_lu_15/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_76166752 
leaky_re_lu_15/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0batch_normalization_6_7616983batch_normalization_6_7616985batch_normalization_6_7616987batch_normalization_6_7616989*
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
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_76163162/
-batch_normalization_6/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0dense_21_7616992dense_21_7616994*
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
E__inference_dense_21_layer_call_and_return_conditional_losses_76167282"
 dense_21/StatefulPartitionedCall?
leaky_re_lu_16/PartitionedCallPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_76167492 
leaky_re_lu_16/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_16/PartitionedCall:output:0batch_normalization_7_7616998batch_normalization_7_7617000batch_normalization_7_7617002batch_normalization_7_7617004*
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
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_76164562/
-batch_normalization_7/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_22_7617007dense_22_7617009*
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
E__inference_dense_22_layer_call_and_return_conditional_losses_76168022"
 dense_22/StatefulPartitionedCall?
leaky_re_lu_17/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_76168232 
leaky_re_lu_17/PartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_17/PartitionedCall:output:0batch_normalization_8_7617013batch_normalization_8_7617015batch_normalization_8_7617017batch_normalization_8_7617019*
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
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_76165962/
-batch_normalization_8/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_23_7617022dense_23_7617024*
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
E__inference_dense_23_layer_call_and_return_conditional_losses_76168772"
 dense_23/StatefulPartitionedCall?
reshape_2/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
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
F__inference_reshape_2_layer_call_and_return_conditional_losses_76169072
reshape_2/PartitionedCall?
IdentityIdentity"reshape_2/PartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????d::::::::::::::::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
b
F__inference_flatten_8_layer_call_and_return_conditional_losses_7617204

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
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7616596

inputs
assignmovingavg_7616571
assignmovingavg_1_7616577)
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
loc:@AssignMovingAvg/7616571*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7616571*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/7616571*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/7616571*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7616571AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/7616571*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/7616577*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7616577*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/7616577*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/7616577*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7616577AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/7616577*
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
%__inference_signature_wrapper_7617659
input_15
input_16
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
StatefulPartitionedCallStatefulPartitionedCallinput_15input_16unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_76162202
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
input_15:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_16
?
?
)__inference_model_7_layer_call_fn_7617609
input_15
input_16
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
StatefulPartitionedCallStatefulPartitionedCallinput_15input_16unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_7_layer_call_and_return_conditional_losses_76175642
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
input_15:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_16
??
?
"__inference__wrapped_model_7616220
input_15
input_160
,model_7_embedding_5_embedding_lookup_7616125@
<model_7_sequential_5_dense_20_matmul_readvariableop_resourceA
=model_7_sequential_5_dense_20_biasadd_readvariableop_resourceP
Lmodel_7_sequential_5_batch_normalization_6_batchnorm_readvariableop_resourceT
Pmodel_7_sequential_5_batch_normalization_6_batchnorm_mul_readvariableop_resourceR
Nmodel_7_sequential_5_batch_normalization_6_batchnorm_readvariableop_1_resourceR
Nmodel_7_sequential_5_batch_normalization_6_batchnorm_readvariableop_2_resource@
<model_7_sequential_5_dense_21_matmul_readvariableop_resourceA
=model_7_sequential_5_dense_21_biasadd_readvariableop_resourceP
Lmodel_7_sequential_5_batch_normalization_7_batchnorm_readvariableop_resourceT
Pmodel_7_sequential_5_batch_normalization_7_batchnorm_mul_readvariableop_resourceR
Nmodel_7_sequential_5_batch_normalization_7_batchnorm_readvariableop_1_resourceR
Nmodel_7_sequential_5_batch_normalization_7_batchnorm_readvariableop_2_resource@
<model_7_sequential_5_dense_22_matmul_readvariableop_resourceA
=model_7_sequential_5_dense_22_biasadd_readvariableop_resourceP
Lmodel_7_sequential_5_batch_normalization_8_batchnorm_readvariableop_resourceT
Pmodel_7_sequential_5_batch_normalization_8_batchnorm_mul_readvariableop_resourceR
Nmodel_7_sequential_5_batch_normalization_8_batchnorm_readvariableop_1_resourceR
Nmodel_7_sequential_5_batch_normalization_8_batchnorm_readvariableop_2_resource@
<model_7_sequential_5_dense_23_matmul_readvariableop_resourceA
=model_7_sequential_5_dense_23_biasadd_readvariableop_resource
identity??$model_7/embedding_5/embedding_lookup?Cmodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp?Emodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_1?Emodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_2?Gmodel_7/sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOp?Cmodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp?Emodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_1?Emodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_2?Gmodel_7/sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOp?Cmodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp?Emodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_1?Emodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_2?Gmodel_7/sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp?4model_7/sequential_5/dense_20/BiasAdd/ReadVariableOp?3model_7/sequential_5/dense_20/MatMul/ReadVariableOp?4model_7/sequential_5/dense_21/BiasAdd/ReadVariableOp?3model_7/sequential_5/dense_21/MatMul/ReadVariableOp?4model_7/sequential_5/dense_22/BiasAdd/ReadVariableOp?3model_7/sequential_5/dense_22/MatMul/ReadVariableOp?4model_7/sequential_5/dense_23/BiasAdd/ReadVariableOp?3model_7/sequential_5/dense_23/MatMul/ReadVariableOp?
$model_7/embedding_5/embedding_lookupResourceGather,model_7_embedding_5_embedding_lookup_7616125input_16",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*?
_class5
31loc:@model_7/embedding_5/embedding_lookup/7616125*+
_output_shapes
:?????????d*
dtype02&
$model_7/embedding_5/embedding_lookup?
-model_7/embedding_5/embedding_lookup/IdentityIdentity-model_7/embedding_5/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*?
_class5
31loc:@model_7/embedding_5/embedding_lookup/7616125*+
_output_shapes
:?????????d2/
-model_7/embedding_5/embedding_lookup/Identity?
/model_7/embedding_5/embedding_lookup/Identity_1Identity6model_7/embedding_5/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d21
/model_7/embedding_5/embedding_lookup/Identity_1?
model_7/flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"????d   2
model_7/flatten_8/Const?
model_7/flatten_8/ReshapeReshape8model_7/embedding_5/embedding_lookup/Identity_1:output:0 model_7/flatten_8/Const:output:0*
T0*'
_output_shapes
:?????????d2
model_7/flatten_8/Reshape?
model_7/multiply_5/mulMulinput_15"model_7/flatten_8/Reshape:output:0*
T0*'
_output_shapes
:?????????d2
model_7/multiply_5/mul?
3model_7/sequential_5/dense_20/MatMul/ReadVariableOpReadVariableOp<model_7_sequential_5_dense_20_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype025
3model_7/sequential_5/dense_20/MatMul/ReadVariableOp?
$model_7/sequential_5/dense_20/MatMulMatMulmodel_7/multiply_5/mul:z:0;model_7/sequential_5/dense_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$model_7/sequential_5/dense_20/MatMul?
4model_7/sequential_5/dense_20/BiasAdd/ReadVariableOpReadVariableOp=model_7_sequential_5_dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4model_7/sequential_5/dense_20/BiasAdd/ReadVariableOp?
%model_7/sequential_5/dense_20/BiasAddBiasAdd.model_7/sequential_5/dense_20/MatMul:product:0<model_7/sequential_5/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%model_7/sequential_5/dense_20/BiasAdd?
-model_7/sequential_5/leaky_re_lu_15/LeakyRelu	LeakyRelu.model_7/sequential_5/dense_20/BiasAdd:output:0*(
_output_shapes
:??????????2/
-model_7/sequential_5/leaky_re_lu_15/LeakyRelu?
Cmodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOpReadVariableOpLmodel_7_sequential_5_batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Cmodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp?
:model_7/sequential_5/batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2<
:model_7/sequential_5/batch_normalization_6/batchnorm/add/y?
8model_7/sequential_5/batch_normalization_6/batchnorm/addAddV2Kmodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp:value:0Cmodel_7/sequential_5/batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2:
8model_7/sequential_5/batch_normalization_6/batchnorm/add?
:model_7/sequential_5/batch_normalization_6/batchnorm/RsqrtRsqrt<model_7/sequential_5/batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:?2<
:model_7/sequential_5/batch_normalization_6/batchnorm/Rsqrt?
Gmodel_7/sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpPmodel_7_sequential_5_batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodel_7/sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOp?
8model_7/sequential_5/batch_normalization_6/batchnorm/mulMul>model_7/sequential_5/batch_normalization_6/batchnorm/Rsqrt:y:0Omodel_7/sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2:
8model_7/sequential_5/batch_normalization_6/batchnorm/mul?
:model_7/sequential_5/batch_normalization_6/batchnorm/mul_1Mul;model_7/sequential_5/leaky_re_lu_15/LeakyRelu:activations:0<model_7/sequential_5/batch_normalization_6/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2<
:model_7/sequential_5/batch_normalization_6/batchnorm/mul_1?
Emodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOpNmodel_7_sequential_5_batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Emodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_1?
:model_7/sequential_5/batch_normalization_6/batchnorm/mul_2MulMmodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_1:value:0<model_7/sequential_5/batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2<
:model_7/sequential_5/batch_normalization_6/batchnorm/mul_2?
Emodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOpNmodel_7_sequential_5_batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02G
Emodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_2?
8model_7/sequential_5/batch_normalization_6/batchnorm/subSubMmodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_2:value:0>model_7/sequential_5/batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2:
8model_7/sequential_5/batch_normalization_6/batchnorm/sub?
:model_7/sequential_5/batch_normalization_6/batchnorm/add_1AddV2>model_7/sequential_5/batch_normalization_6/batchnorm/mul_1:z:0<model_7/sequential_5/batch_normalization_6/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2<
:model_7/sequential_5/batch_normalization_6/batchnorm/add_1?
3model_7/sequential_5/dense_21/MatMul/ReadVariableOpReadVariableOp<model_7_sequential_5_dense_21_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype025
3model_7/sequential_5/dense_21/MatMul/ReadVariableOp?
$model_7/sequential_5/dense_21/MatMulMatMul>model_7/sequential_5/batch_normalization_6/batchnorm/add_1:z:0;model_7/sequential_5/dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$model_7/sequential_5/dense_21/MatMul?
4model_7/sequential_5/dense_21/BiasAdd/ReadVariableOpReadVariableOp=model_7_sequential_5_dense_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4model_7/sequential_5/dense_21/BiasAdd/ReadVariableOp?
%model_7/sequential_5/dense_21/BiasAddBiasAdd.model_7/sequential_5/dense_21/MatMul:product:0<model_7/sequential_5/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%model_7/sequential_5/dense_21/BiasAdd?
-model_7/sequential_5/leaky_re_lu_16/LeakyRelu	LeakyRelu.model_7/sequential_5/dense_21/BiasAdd:output:0*(
_output_shapes
:??????????2/
-model_7/sequential_5/leaky_re_lu_16/LeakyRelu?
Cmodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOpReadVariableOpLmodel_7_sequential_5_batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Cmodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp?
:model_7/sequential_5/batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2<
:model_7/sequential_5/batch_normalization_7/batchnorm/add/y?
8model_7/sequential_5/batch_normalization_7/batchnorm/addAddV2Kmodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp:value:0Cmodel_7/sequential_5/batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2:
8model_7/sequential_5/batch_normalization_7/batchnorm/add?
:model_7/sequential_5/batch_normalization_7/batchnorm/RsqrtRsqrt<model_7/sequential_5/batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:?2<
:model_7/sequential_5/batch_normalization_7/batchnorm/Rsqrt?
Gmodel_7/sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpPmodel_7_sequential_5_batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodel_7/sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOp?
8model_7/sequential_5/batch_normalization_7/batchnorm/mulMul>model_7/sequential_5/batch_normalization_7/batchnorm/Rsqrt:y:0Omodel_7/sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2:
8model_7/sequential_5/batch_normalization_7/batchnorm/mul?
:model_7/sequential_5/batch_normalization_7/batchnorm/mul_1Mul;model_7/sequential_5/leaky_re_lu_16/LeakyRelu:activations:0<model_7/sequential_5/batch_normalization_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2<
:model_7/sequential_5/batch_normalization_7/batchnorm/mul_1?
Emodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOpNmodel_7_sequential_5_batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Emodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_1?
:model_7/sequential_5/batch_normalization_7/batchnorm/mul_2MulMmodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_1:value:0<model_7/sequential_5/batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2<
:model_7/sequential_5/batch_normalization_7/batchnorm/mul_2?
Emodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOpNmodel_7_sequential_5_batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02G
Emodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_2?
8model_7/sequential_5/batch_normalization_7/batchnorm/subSubMmodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_2:value:0>model_7/sequential_5/batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2:
8model_7/sequential_5/batch_normalization_7/batchnorm/sub?
:model_7/sequential_5/batch_normalization_7/batchnorm/add_1AddV2>model_7/sequential_5/batch_normalization_7/batchnorm/mul_1:z:0<model_7/sequential_5/batch_normalization_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2<
:model_7/sequential_5/batch_normalization_7/batchnorm/add_1?
3model_7/sequential_5/dense_22/MatMul/ReadVariableOpReadVariableOp<model_7_sequential_5_dense_22_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype025
3model_7/sequential_5/dense_22/MatMul/ReadVariableOp?
$model_7/sequential_5/dense_22/MatMulMatMul>model_7/sequential_5/batch_normalization_7/batchnorm/add_1:z:0;model_7/sequential_5/dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$model_7/sequential_5/dense_22/MatMul?
4model_7/sequential_5/dense_22/BiasAdd/ReadVariableOpReadVariableOp=model_7_sequential_5_dense_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4model_7/sequential_5/dense_22/BiasAdd/ReadVariableOp?
%model_7/sequential_5/dense_22/BiasAddBiasAdd.model_7/sequential_5/dense_22/MatMul:product:0<model_7/sequential_5/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%model_7/sequential_5/dense_22/BiasAdd?
-model_7/sequential_5/leaky_re_lu_17/LeakyRelu	LeakyRelu.model_7/sequential_5/dense_22/BiasAdd:output:0*(
_output_shapes
:??????????2/
-model_7/sequential_5/leaky_re_lu_17/LeakyRelu?
Cmodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOpReadVariableOpLmodel_7_sequential_5_batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Cmodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp?
:model_7/sequential_5/batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2<
:model_7/sequential_5/batch_normalization_8/batchnorm/add/y?
8model_7/sequential_5/batch_normalization_8/batchnorm/addAddV2Kmodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp:value:0Cmodel_7/sequential_5/batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2:
8model_7/sequential_5/batch_normalization_8/batchnorm/add?
:model_7/sequential_5/batch_normalization_8/batchnorm/RsqrtRsqrt<model_7/sequential_5/batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:?2<
:model_7/sequential_5/batch_normalization_8/batchnorm/Rsqrt?
Gmodel_7/sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOpPmodel_7_sequential_5_batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodel_7/sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp?
8model_7/sequential_5/batch_normalization_8/batchnorm/mulMul>model_7/sequential_5/batch_normalization_8/batchnorm/Rsqrt:y:0Omodel_7/sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2:
8model_7/sequential_5/batch_normalization_8/batchnorm/mul?
:model_7/sequential_5/batch_normalization_8/batchnorm/mul_1Mul;model_7/sequential_5/leaky_re_lu_17/LeakyRelu:activations:0<model_7/sequential_5/batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2<
:model_7/sequential_5/batch_normalization_8/batchnorm/mul_1?
Emodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOpNmodel_7_sequential_5_batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Emodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_1?
:model_7/sequential_5/batch_normalization_8/batchnorm/mul_2MulMmodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_1:value:0<model_7/sequential_5/batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2<
:model_7/sequential_5/batch_normalization_8/batchnorm/mul_2?
Emodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOpNmodel_7_sequential_5_batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02G
Emodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_2?
8model_7/sequential_5/batch_normalization_8/batchnorm/subSubMmodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_2:value:0>model_7/sequential_5/batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2:
8model_7/sequential_5/batch_normalization_8/batchnorm/sub?
:model_7/sequential_5/batch_normalization_8/batchnorm/add_1AddV2>model_7/sequential_5/batch_normalization_8/batchnorm/mul_1:z:0<model_7/sequential_5/batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2<
:model_7/sequential_5/batch_normalization_8/batchnorm/add_1?
3model_7/sequential_5/dense_23/MatMul/ReadVariableOpReadVariableOp<model_7_sequential_5_dense_23_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype025
3model_7/sequential_5/dense_23/MatMul/ReadVariableOp?
$model_7/sequential_5/dense_23/MatMulMatMul>model_7/sequential_5/batch_normalization_8/batchnorm/add_1:z:0;model_7/sequential_5/dense_23/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2&
$model_7/sequential_5/dense_23/MatMul?
4model_7/sequential_5/dense_23/BiasAdd/ReadVariableOpReadVariableOp=model_7_sequential_5_dense_23_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype026
4model_7/sequential_5/dense_23/BiasAdd/ReadVariableOp?
%model_7/sequential_5/dense_23/BiasAddBiasAdd.model_7/sequential_5/dense_23/MatMul:product:0<model_7/sequential_5/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2'
%model_7/sequential_5/dense_23/BiasAdd?
"model_7/sequential_5/dense_23/TanhTanh.model_7/sequential_5/dense_23/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2$
"model_7/sequential_5/dense_23/Tanh?
$model_7/sequential_5/reshape_2/ShapeShape&model_7/sequential_5/dense_23/Tanh:y:0*
T0*
_output_shapes
:2&
$model_7/sequential_5/reshape_2/Shape?
2model_7/sequential_5/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2model_7/sequential_5/reshape_2/strided_slice/stack?
4model_7/sequential_5/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4model_7/sequential_5/reshape_2/strided_slice/stack_1?
4model_7/sequential_5/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4model_7/sequential_5/reshape_2/strided_slice/stack_2?
,model_7/sequential_5/reshape_2/strided_sliceStridedSlice-model_7/sequential_5/reshape_2/Shape:output:0;model_7/sequential_5/reshape_2/strided_slice/stack:output:0=model_7/sequential_5/reshape_2/strided_slice/stack_1:output:0=model_7/sequential_5/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,model_7/sequential_5/reshape_2/strided_slice?
.model_7/sequential_5/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?20
.model_7/sequential_5/reshape_2/Reshape/shape/1?
.model_7/sequential_5/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?20
.model_7/sequential_5/reshape_2/Reshape/shape/2?
.model_7/sequential_5/reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :20
.model_7/sequential_5/reshape_2/Reshape/shape/3?
,model_7/sequential_5/reshape_2/Reshape/shapePack5model_7/sequential_5/reshape_2/strided_slice:output:07model_7/sequential_5/reshape_2/Reshape/shape/1:output:07model_7/sequential_5/reshape_2/Reshape/shape/2:output:07model_7/sequential_5/reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2.
,model_7/sequential_5/reshape_2/Reshape/shape?
&model_7/sequential_5/reshape_2/ReshapeReshape&model_7/sequential_5/dense_23/Tanh:y:05model_7/sequential_5/reshape_2/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2(
&model_7/sequential_5/reshape_2/Reshape?
IdentityIdentity/model_7/sequential_5/reshape_2/Reshape:output:0%^model_7/embedding_5/embedding_lookupD^model_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOpF^model_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_1F^model_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_2H^model_7/sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOpD^model_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOpF^model_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_1F^model_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_2H^model_7/sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOpD^model_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOpF^model_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_1F^model_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_2H^model_7/sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp5^model_7/sequential_5/dense_20/BiasAdd/ReadVariableOp4^model_7/sequential_5/dense_20/MatMul/ReadVariableOp5^model_7/sequential_5/dense_21/BiasAdd/ReadVariableOp4^model_7/sequential_5/dense_21/MatMul/ReadVariableOp5^model_7/sequential_5/dense_22/BiasAdd/ReadVariableOp4^model_7/sequential_5/dense_22/MatMul/ReadVariableOp5^model_7/sequential_5/dense_23/BiasAdd/ReadVariableOp4^model_7/sequential_5/dense_23/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*?
_input_shapes|
z:?????????d:?????????:::::::::::::::::::::2L
$model_7/embedding_5/embedding_lookup$model_7/embedding_5/embedding_lookup2?
Cmodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOpCmodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp2?
Emodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_1Emodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_12?
Emodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_2Emodel_7/sequential_5/batch_normalization_6/batchnorm/ReadVariableOp_22?
Gmodel_7/sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOpGmodel_7/sequential_5/batch_normalization_6/batchnorm/mul/ReadVariableOp2?
Cmodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOpCmodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp2?
Emodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_1Emodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_12?
Emodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_2Emodel_7/sequential_5/batch_normalization_7/batchnorm/ReadVariableOp_22?
Gmodel_7/sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOpGmodel_7/sequential_5/batch_normalization_7/batchnorm/mul/ReadVariableOp2?
Cmodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOpCmodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp2?
Emodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_1Emodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_12?
Emodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_2Emodel_7/sequential_5/batch_normalization_8/batchnorm/ReadVariableOp_22?
Gmodel_7/sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOpGmodel_7/sequential_5/batch_normalization_8/batchnorm/mul/ReadVariableOp2l
4model_7/sequential_5/dense_20/BiasAdd/ReadVariableOp4model_7/sequential_5/dense_20/BiasAdd/ReadVariableOp2j
3model_7/sequential_5/dense_20/MatMul/ReadVariableOp3model_7/sequential_5/dense_20/MatMul/ReadVariableOp2l
4model_7/sequential_5/dense_21/BiasAdd/ReadVariableOp4model_7/sequential_5/dense_21/BiasAdd/ReadVariableOp2j
3model_7/sequential_5/dense_21/MatMul/ReadVariableOp3model_7/sequential_5/dense_21/MatMul/ReadVariableOp2l
4model_7/sequential_5/dense_22/BiasAdd/ReadVariableOp4model_7/sequential_5/dense_22/BiasAdd/ReadVariableOp2j
3model_7/sequential_5/dense_22/MatMul/ReadVariableOp3model_7/sequential_5/dense_22/MatMul/ReadVariableOp2l
4model_7/sequential_5/dense_23/BiasAdd/ReadVariableOp4model_7/sequential_5/dense_23/BiasAdd/ReadVariableOp2j
3model_7/sequential_5/dense_23/MatMul/ReadVariableOp3model_7/sequential_5/dense_23/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
input_15:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_16
?	
?
H__inference_embedding_5_layer_call_and_return_conditional_losses_7617186

inputs
embedding_lookup_7617180
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_7617180inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/7617180*+
_output_shapes
:?????????d*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/7617180*+
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
?
g
K__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_7618604

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
input_151
serving_default_input_15:0?????????d
=
input_161
serving_default_input_16:0?????????J
sequential_5:
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
regularization_losses
trainable_variables
		variables

	keras_api

signatures
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"?b
_tf_keras_network?b{"class_name": "Functional", "name": "model_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_16"}, "name": "input_16", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding_5", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 112, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_5", "inbound_nodes": [[["input_16", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_15"}, "name": "input_15", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten_8", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_8", "inbound_nodes": [[["embedding_5", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "multiply_5", "trainable": true, "dtype": "float32"}, "name": "multiply_5", "inbound_nodes": [[["input_15", 0, 0, {}], ["flatten_8", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_20_input"}}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_15", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_16", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_17", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_2", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}]}, "name": "sequential_5", "inbound_nodes": [[["multiply_5", 0, 0, {}]]]}], "input_layers": [["input_15", 0, 0], ["input_16", 0, 0]], "output_layers": [["sequential_5", 1, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 100]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 100]}, {"class_name": "TensorShape", "items": [null, 1]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_16"}, "name": "input_16", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding_5", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 112, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_5", "inbound_nodes": [[["input_16", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_15"}, "name": "input_15", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten_8", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_8", "inbound_nodes": [[["embedding_5", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "multiply_5", "trainable": true, "dtype": "float32"}, "name": "multiply_5", "inbound_nodes": [[["input_15", 0, 0, {}], ["flatten_8", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_20_input"}}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_15", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_16", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_17", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_2", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}]}, "name": "sequential_5", "inbound_nodes": [[["multiply_5", 0, 0, {}]]]}], "input_layers": [["input_15", 0, 0], ["input_16", 0, 0]], "output_layers": [["sequential_5", 1, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_16", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_16"}}
?

embeddings
regularization_losses
trainable_variables
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_5", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 112, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_15", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_15"}}
?
regularization_losses
trainable_variables
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_8", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?
regularization_losses
trainable_variables
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Multiply", "name": "multiply_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "multiply_5", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 100]}, {"class_name": "TensorShape", "items": [null, 100]}]}
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
$regularization_losses
%trainable_variables
&	variables
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?G
_tf_keras_sequential?F{"class_name": "Sequential", "name": "sequential_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_20_input"}}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_15", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_16", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_17", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_2", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_20_input"}}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_15", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_16", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_17", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_2", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}]}}}
 "
trackable_list_wrapper
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
?
<layer_regularization_losses
regularization_losses
=layer_metrics

>layers
trainable_variables
?non_trainable_variables
		variables
@metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
(:&pd2embedding_5/embeddings
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
Alayer_regularization_losses
regularization_losses
Blayer_metrics

Clayers
trainable_variables
Dnon_trainable_variables
	variables
Emetrics
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
Flayer_regularization_losses
regularization_losses
Glayer_metrics

Hlayers
trainable_variables
Inon_trainable_variables
	variables
Jmetrics
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
Klayer_regularization_losses
regularization_losses
Llayer_metrics

Mlayers
trainable_variables
Nnon_trainable_variables
	variables
Ometrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

(kernel
)bias
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_20", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?
Tregularization_losses
Utrainable_variables
V	variables
W	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_15", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}
?	
Xaxis
	*gamma
+beta
6moving_mean
7moving_variance
Yregularization_losses
Ztrainable_variables
[	variables
\	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

,kernel
-bias
]regularization_losses
^trainable_variables
_	variables
`	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
aregularization_losses
btrainable_variables
c	variables
d	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_16", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}
?	
eaxis
	.gamma
/beta
8moving_mean
9moving_variance
fregularization_losses
gtrainable_variables
h	variables
i	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?

0kernel
1bias
jregularization_losses
ktrainable_variables
l	variables
m	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?
nregularization_losses
otrainable_variables
p	variables
q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_17", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}
?	
raxis
	2gamma
3beta
:moving_mean
;moving_variance
sregularization_losses
ttrainable_variables
u	variables
v	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?

4kernel
5bias
wregularization_losses
xtrainable_variables
y	variables
z	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 16384, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
{regularization_losses
|trainable_variables
}	variables
~	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Reshape", "name": "reshape_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_2", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 128, 1]}}}
 "
trackable_list_wrapper
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
?
layer_regularization_losses
$regularization_losses
?layer_metrics
?layers
%trainable_variables
?non_trainable_variables
&	variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	d?2dense_20/kernel
:?2dense_20/bias
*:(?2batch_normalization_6/gamma
):'?2batch_normalization_6/beta
#:!
??2dense_21/kernel
:?2dense_21/bias
*:(?2batch_normalization_7/gamma
):'?2batch_normalization_7/beta
#:!
??2dense_22/kernel
:?2dense_22/bias
*:(?2batch_normalization_8/gamma
):'?2batch_normalization_8/beta
$:"???2dense_23/kernel
:??2dense_23/bias
2:0? (2!batch_normalization_6/moving_mean
6:4? (2%batch_normalization_6/moving_variance
2:0? (2!batch_normalization_7/moving_mean
6:4? (2%batch_normalization_7/moving_variance
2:0? (2!batch_normalization_8/moving_mean
6:4? (2%batch_normalization_8/moving_variance
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
J
60
71
82
93
:4
;5"
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
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
?
 ?layer_regularization_losses
Pregularization_losses
?layer_metrics
?layers
Qtrainable_variables
?non_trainable_variables
R	variables
?metrics
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
 ?layer_regularization_losses
Tregularization_losses
?layer_metrics
?layers
Utrainable_variables
?non_trainable_variables
V	variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
?
 ?layer_regularization_losses
Yregularization_losses
?layer_metrics
?layers
Ztrainable_variables
?non_trainable_variables
[	variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
?
 ?layer_regularization_losses
]regularization_losses
?layer_metrics
?layers
^trainable_variables
?non_trainable_variables
_	variables
?metrics
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
 ?layer_regularization_losses
aregularization_losses
?layer_metrics
?layers
btrainable_variables
?non_trainable_variables
c	variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
?
 ?layer_regularization_losses
fregularization_losses
?layer_metrics
?layers
gtrainable_variables
?non_trainable_variables
h	variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
?
 ?layer_regularization_losses
jregularization_losses
?layer_metrics
?layers
ktrainable_variables
?non_trainable_variables
l	variables
?metrics
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
 ?layer_regularization_losses
nregularization_losses
?layer_metrics
?layers
otrainable_variables
?non_trainable_variables
p	variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
?
 ?layer_regularization_losses
sregularization_losses
?layer_metrics
?layers
ttrainable_variables
?non_trainable_variables
u	variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
?
 ?layer_regularization_losses
wregularization_losses
?layer_metrics
?layers
xtrainable_variables
?non_trainable_variables
y	variables
?metrics
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
 ?layer_regularization_losses
{regularization_losses
?layer_metrics
?layers
|trainable_variables
?non_trainable_variables
}	variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
J
60
71
82
93
:4
;5"
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
?2?
"__inference__wrapped_model_7616220?
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
input_15?????????d
"?
input_16?????????
?2?
D__inference_model_7_layer_call_and_return_conditional_losses_7617359
D__inference_model_7_layer_call_and_return_conditional_losses_7617806
D__inference_model_7_layer_call_and_return_conditional_losses_7617905
D__inference_model_7_layer_call_and_return_conditional_losses_7617410?
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
)__inference_model_7_layer_call_fn_7617510
)__inference_model_7_layer_call_fn_7618001
)__inference_model_7_layer_call_fn_7617609
)__inference_model_7_layer_call_fn_7617953?
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
H__inference_embedding_5_layer_call_and_return_conditional_losses_7618010?
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
-__inference_embedding_5_layer_call_fn_7618017?
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
F__inference_flatten_8_layer_call_and_return_conditional_losses_7618023?
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
+__inference_flatten_8_layer_call_fn_7618028?
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
G__inference_multiply_5_layer_call_and_return_conditional_losses_7618034?
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
,__inference_multiply_5_layer_call_fn_7618040?
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
I__inference_sequential_5_layer_call_and_return_conditional_losses_7616971
I__inference_sequential_5_layer_call_and_return_conditional_losses_7618268
I__inference_sequential_5_layer_call_and_return_conditional_losses_7618178
I__inference_sequential_5_layer_call_and_return_conditional_losses_7616916?
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
.__inference_sequential_5_layer_call_fn_7618358
.__inference_sequential_5_layer_call_fn_7618313
.__inference_sequential_5_layer_call_fn_7617072
.__inference_sequential_5_layer_call_fn_7617172?
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
%__inference_signature_wrapper_7617659input_15input_16"?
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
E__inference_dense_20_layer_call_and_return_conditional_losses_7618368?
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
*__inference_dense_20_layer_call_fn_7618377?
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
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_7618382?
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
0__inference_leaky_re_lu_15_layer_call_fn_7618387?
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
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7618423
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7618443?
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
7__inference_batch_normalization_6_layer_call_fn_7618456
7__inference_batch_normalization_6_layer_call_fn_7618469?
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
E__inference_dense_21_layer_call_and_return_conditional_losses_7618479?
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
*__inference_dense_21_layer_call_fn_7618488?
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
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_7618493?
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
0__inference_leaky_re_lu_16_layer_call_fn_7618498?
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
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7618534
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7618554?
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
7__inference_batch_normalization_7_layer_call_fn_7618567
7__inference_batch_normalization_7_layer_call_fn_7618580?
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
E__inference_dense_22_layer_call_and_return_conditional_losses_7618590?
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
*__inference_dense_22_layer_call_fn_7618599?
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
K__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_7618604?
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
0__inference_leaky_re_lu_17_layer_call_fn_7618609?
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
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7618645
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7618665?
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
7__inference_batch_normalization_8_layer_call_fn_7618678
7__inference_batch_normalization_8_layer_call_fn_7618691?
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
E__inference_dense_23_layer_call_and_return_conditional_losses_7618702?
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
*__inference_dense_23_layer_call_fn_7618711?
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
F__inference_reshape_2_layer_call_and_return_conditional_losses_7618725?
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
+__inference_reshape_2_layer_call_fn_7618730?
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
"__inference__wrapped_model_7616220?()7*6+,-9.8/01;2:345Z?W
P?M
K?H
"?
input_15?????????d
"?
input_16?????????
? "E?B
@
sequential_50?-
sequential_5????????????
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7618423d67*+4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7618443d7*6+4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_6_layer_call_fn_7618456W67*+4?1
*?'
!?
inputs??????????
p
? "????????????
7__inference_batch_normalization_6_layer_call_fn_7618469W7*6+4?1
*?'
!?
inputs??????????
p 
? "????????????
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7618534d89./4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7618554d9.8/4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_7_layer_call_fn_7618567W89./4?1
*?'
!?
inputs??????????
p
? "????????????
7__inference_batch_normalization_7_layer_call_fn_7618580W9.8/4?1
*?'
!?
inputs??????????
p 
? "????????????
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7618645d:;234?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7618665d;2:34?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_8_layer_call_fn_7618678W:;234?1
*?'
!?
inputs??????????
p
? "????????????
7__inference_batch_normalization_8_layer_call_fn_7618691W;2:34?1
*?'
!?
inputs??????????
p 
? "????????????
E__inference_dense_20_layer_call_and_return_conditional_losses_7618368]()/?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????
? ~
*__inference_dense_20_layer_call_fn_7618377P()/?,
%?"
 ?
inputs?????????d
? "????????????
E__inference_dense_21_layer_call_and_return_conditional_losses_7618479^,-0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_21_layer_call_fn_7618488Q,-0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_22_layer_call_and_return_conditional_losses_7618590^010?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_22_layer_call_fn_7618599Q010?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_23_layer_call_and_return_conditional_losses_7618702_450?-
&?#
!?
inputs??????????
? "'?$
?
0???????????
? ?
*__inference_dense_23_layer_call_fn_7618711R450?-
&?#
!?
inputs??????????
? "?????????????
H__inference_embedding_5_layer_call_and_return_conditional_losses_7618010_/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????d
? ?
-__inference_embedding_5_layer_call_fn_7618017R/?,
%?"
 ?
inputs?????????
? "??????????d?
F__inference_flatten_8_layer_call_and_return_conditional_losses_7618023\3?0
)?&
$?!
inputs?????????d
? "%?"
?
0?????????d
? ~
+__inference_flatten_8_layer_call_fn_7618028O3?0
)?&
$?!
inputs?????????d
? "??????????d?
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_7618382Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_leaky_re_lu_15_layer_call_fn_7618387M0?-
&?#
!?
inputs??????????
? "????????????
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_7618493Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_leaky_re_lu_16_layer_call_fn_7618498M0?-
&?#
!?
inputs??????????
? "????????????
K__inference_leaky_re_lu_17_layer_call_and_return_conditional_losses_7618604Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_leaky_re_lu_17_layer_call_fn_7618609M0?-
&?#
!?
inputs??????????
? "????????????
D__inference_model_7_layer_call_and_return_conditional_losses_7617359?()67*+,-89./01:;2345b?_
X?U
K?H
"?
input_15?????????d
"?
input_16?????????
p

 
? "/?,
%?"
0???????????
? ?
D__inference_model_7_layer_call_and_return_conditional_losses_7617410?()7*6+,-9.8/01;2:345b?_
X?U
K?H
"?
input_15?????????d
"?
input_16?????????
p 

 
? "/?,
%?"
0???????????
? ?
D__inference_model_7_layer_call_and_return_conditional_losses_7617806?()67*+,-89./01:;2345b?_
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
D__inference_model_7_layer_call_and_return_conditional_losses_7617905?()7*6+,-9.8/01;2:345b?_
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
)__inference_model_7_layer_call_fn_7617510?()67*+,-89./01:;2345b?_
X?U
K?H
"?
input_15?????????d
"?
input_16?????????
p

 
? ""?????????????
)__inference_model_7_layer_call_fn_7617609?()7*6+,-9.8/01;2:345b?_
X?U
K?H
"?
input_15?????????d
"?
input_16?????????
p 

 
? ""?????????????
)__inference_model_7_layer_call_fn_7617953?()67*+,-89./01:;2345b?_
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
)__inference_model_7_layer_call_fn_7618001?()7*6+,-9.8/01;2:345b?_
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
G__inference_multiply_5_layer_call_and_return_conditional_losses_7618034?Z?W
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
,__inference_multiply_5_layer_call_fn_7618040vZ?W
P?M
K?H
"?
inputs/0?????????d
"?
inputs/1?????????d
? "??????????d?
F__inference_reshape_2_layer_call_and_return_conditional_losses_7618725d1?.
'?$
"?
inputs???????????
? "/?,
%?"
0???????????
? ?
+__inference_reshape_2_layer_call_fn_7618730W1?.
'?$
"?
inputs???????????
? ""?????????????
I__inference_sequential_5_layer_call_and_return_conditional_losses_7616916?()67*+,-89./01:;2345??<
5?2
(?%
dense_20_input?????????d
p

 
? "/?,
%?"
0???????????
? ?
I__inference_sequential_5_layer_call_and_return_conditional_losses_7616971?()7*6+,-9.8/01;2:345??<
5?2
(?%
dense_20_input?????????d
p 

 
? "/?,
%?"
0???????????
? ?
I__inference_sequential_5_layer_call_and_return_conditional_losses_7618178?()67*+,-89./01:;23457?4
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
I__inference_sequential_5_layer_call_and_return_conditional_losses_7618268?()7*6+,-9.8/01;2:3457?4
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
.__inference_sequential_5_layer_call_fn_7617072{()67*+,-89./01:;2345??<
5?2
(?%
dense_20_input?????????d
p

 
? ""?????????????
.__inference_sequential_5_layer_call_fn_7617172{()7*6+,-9.8/01;2:345??<
5?2
(?%
dense_20_input?????????d
p 

 
? ""?????????????
.__inference_sequential_5_layer_call_fn_7618313s()67*+,-89./01:;23457?4
-?*
 ?
inputs?????????d
p

 
? ""?????????????
.__inference_sequential_5_layer_call_fn_7618358s()7*6+,-9.8/01;2:3457?4
-?*
 ?
inputs?????????d
p 

 
? ""?????????????
%__inference_signature_wrapper_7617659?()7*6+,-9.8/01;2:345m?j
? 
c?`
.
input_15"?
input_15?????????d
.
input_16"?
input_16?????????"E?B
@
sequential_50?-
sequential_5???????????