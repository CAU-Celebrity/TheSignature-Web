??
??
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
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8
{
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?b* 
shared_namedense_22/kernel
t
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes
:	d?b*
dtype0
?
batch_normalization_33/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?b*-
shared_namebatch_normalization_33/gamma
?
0batch_normalization_33/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_33/gamma*
_output_shapes	
:?b*
dtype0
?
batch_normalization_33/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?b*,
shared_namebatch_normalization_33/beta
?
/batch_normalization_33/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_33/beta*
_output_shapes	
:?b*
dtype0
?
"batch_normalization_33/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?b*3
shared_name$"batch_normalization_33/moving_mean
?
6batch_normalization_33/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_33/moving_mean*
_output_shapes	
:?b*
dtype0
?
&batch_normalization_33/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?b*7
shared_name(&batch_normalization_33/moving_variance
?
:batch_normalization_33/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_33/moving_variance*
_output_shapes	
:?b*
dtype0
?
conv2d_transpose_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*+
shared_nameconv2d_transpose_33/kernel
?
.conv2d_transpose_33/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_33/kernel*(
_output_shapes
:??*
dtype0
?
batch_normalization_34/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_34/gamma
?
0batch_normalization_34/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_34/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_34/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_34/beta
?
/batch_normalization_34/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_34/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_34/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_34/moving_mean
?
6batch_normalization_34/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_34/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_34/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_34/moving_variance
?
:batch_normalization_34/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_34/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*+
shared_nameconv2d_transpose_34/kernel
?
.conv2d_transpose_34/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_34/kernel*'
_output_shapes
:@?*
dtype0
?
batch_normalization_35/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_35/gamma
?
0batch_normalization_35/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_35/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_35/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_35/beta
?
/batch_normalization_35/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_35/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_35/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_35/moving_mean
?
6batch_normalization_35/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_35/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_35/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_35/moving_variance
?
:batch_normalization_35/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_35/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_transpose_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameconv2d_transpose_35/kernel
?
.conv2d_transpose_35/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_35/kernel*&
_output_shapes
:@*
dtype0

NoOpNoOp
?1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?0
value?0B?0 B?0
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
	variables
regularization_losses
trainable_variables
	keras_api

signatures
^

kernel
	variables
regularization_losses
trainable_variables
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
 regularization_losses
!trainable_variables
"	keras_api
R
#	variables
$regularization_losses
%trainable_variables
&	keras_api
^

'kernel
(	variables
)regularization_losses
*trainable_variables
+	keras_api
?
,axis
	-gamma
.beta
/moving_mean
0moving_variance
1	variables
2regularization_losses
3trainable_variables
4	keras_api
R
5	variables
6regularization_losses
7trainable_variables
8	keras_api
^

9kernel
:	variables
;regularization_losses
<trainable_variables
=	keras_api
?
>axis
	?gamma
@beta
Amoving_mean
Bmoving_variance
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
R
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
^

Kkernel
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
v
0
1
2
3
4
'5
-6
.7
/8
09
910
?11
@12
A13
B14
K15
 
F
0
1
2
'3
-4
.5
96
?7
@8
K9
?
	variables
Pnon_trainable_variables
Qlayer_metrics
Rmetrics
Slayer_regularization_losses
regularization_losses

Tlayers
trainable_variables
 
[Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
?
	variables
Unon_trainable_variables
Vlayer_metrics
Wmetrics
Xlayer_regularization_losses
regularization_losses

Ylayers
trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_33/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_33/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_33/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_33/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3
 

0
1
?
	variables
Znon_trainable_variables
[layer_metrics
\metrics
]layer_regularization_losses
regularization_losses

^layers
trainable_variables
 
 
 
?
	variables
_non_trainable_variables
`layer_metrics
ametrics
blayer_regularization_losses
 regularization_losses

clayers
!trainable_variables
 
 
 
?
#	variables
dnon_trainable_variables
elayer_metrics
fmetrics
glayer_regularization_losses
$regularization_losses

hlayers
%trainable_variables
fd
VARIABLE_VALUEconv2d_transpose_33/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE

'0
 

'0
?
(	variables
inon_trainable_variables
jlayer_metrics
kmetrics
llayer_regularization_losses
)regularization_losses

mlayers
*trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_34/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_34/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_34/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_34/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

-0
.1
/2
03
 

-0
.1
?
1	variables
nnon_trainable_variables
olayer_metrics
pmetrics
qlayer_regularization_losses
2regularization_losses

rlayers
3trainable_variables
 
 
 
?
5	variables
snon_trainable_variables
tlayer_metrics
umetrics
vlayer_regularization_losses
6regularization_losses

wlayers
7trainable_variables
fd
VARIABLE_VALUEconv2d_transpose_34/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE

90
 

90
?
:	variables
xnon_trainable_variables
ylayer_metrics
zmetrics
{layer_regularization_losses
;regularization_losses

|layers
<trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_35/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_35/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_35/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_35/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

?0
@1
A2
B3
 

?0
@1
?
C	variables
}non_trainable_variables
~layer_metrics
metrics
 ?layer_regularization_losses
Dregularization_losses
?layers
Etrainable_variables
 
 
 
?
G	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Hregularization_losses
?layers
Itrainable_variables
fd
VARIABLE_VALUEconv2d_transpose_35/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE

K0
 

K0
?
L	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Mregularization_losses
?layers
Ntrainable_variables
*
0
1
/2
03
A4
B5
 
 
 
N
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
9
10
 
 
 
 
 

0
1
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

/0
01
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
A0
B1
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
?
serving_default_dense_22_inputPlaceholder*'
_output_shapes
:?????????d*
dtype0*
shape:?????????d
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_22_inputdense_22/kernel&batch_normalization_33/moving_variancebatch_normalization_33/gamma"batch_normalization_33/moving_meanbatch_normalization_33/betaconv2d_transpose_33/kernelbatch_normalization_34/gammabatch_normalization_34/beta"batch_normalization_34/moving_mean&batch_normalization_34/moving_varianceconv2d_transpose_34/kernelbatch_normalization_35/gammabatch_normalization_35/beta"batch_normalization_35/moving_mean&batch_normalization_35/moving_varianceconv2d_transpose_35/kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_457872
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_22/kernel/Read/ReadVariableOp0batch_normalization_33/gamma/Read/ReadVariableOp/batch_normalization_33/beta/Read/ReadVariableOp6batch_normalization_33/moving_mean/Read/ReadVariableOp:batch_normalization_33/moving_variance/Read/ReadVariableOp.conv2d_transpose_33/kernel/Read/ReadVariableOp0batch_normalization_34/gamma/Read/ReadVariableOp/batch_normalization_34/beta/Read/ReadVariableOp6batch_normalization_34/moving_mean/Read/ReadVariableOp:batch_normalization_34/moving_variance/Read/ReadVariableOp.conv2d_transpose_34/kernel/Read/ReadVariableOp0batch_normalization_35/gamma/Read/ReadVariableOp/batch_normalization_35/beta/Read/ReadVariableOp6batch_normalization_35/moving_mean/Read/ReadVariableOp:batch_normalization_35/moving_variance/Read/ReadVariableOp.conv2d_transpose_35/kernel/Read/ReadVariableOpConst*
Tin
2*
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_458536
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_22/kernelbatch_normalization_33/gammabatch_normalization_33/beta"batch_normalization_33/moving_mean&batch_normalization_33/moving_varianceconv2d_transpose_33/kernelbatch_normalization_34/gammabatch_normalization_34/beta"batch_normalization_34/moving_mean&batch_normalization_34/moving_varianceconv2d_transpose_34/kernelbatch_normalization_35/gammabatch_normalization_35/beta"batch_normalization_35/moving_mean&batch_normalization_35/moving_varianceconv2d_transpose_35/kernel*
Tin
2*
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_458594??
?
K
/__inference_leaky_re_lu_55_layer_call_fn_458298

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
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_55_layer_call_and_return_conditional_losses_4574812
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????b:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_34_layer_call_fn_458381

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
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_4572242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_458262

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?b*
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
:?b2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?b2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?b2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????b2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?b*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?b2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?b*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?b2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????b2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????b::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
? 
?
O__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_457266

inputs,
(conv2d_transpose_readvariableop_resource
identity??conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
conv2d_transpose?
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:,????????????????????????????:2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_35_layer_call_fn_458455

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
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_4573672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_457224

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_458386

inputs
identity
	LeakyRelu	LeakyReluinputs*B
_output_shapes0
.:,????????????????????????????*
alpha%???>2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
K
/__inference_leaky_re_lu_56_layer_call_fn_458391

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_4575542
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?<
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_457664
dense_22_input
dense_22_457620!
batch_normalization_33_457623!
batch_normalization_33_457625!
batch_normalization_33_457627!
batch_normalization_33_457629
conv2d_transpose_33_457634!
batch_normalization_34_457637!
batch_normalization_34_457639!
batch_normalization_34_457641!
batch_normalization_34_457643
conv2d_transpose_34_457647!
batch_normalization_35_457650!
batch_normalization_35_457652!
batch_normalization_35_457654!
batch_normalization_35_457656
conv2d_transpose_35_457660
identity??.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?+conv2d_transpose_33/StatefulPartitionedCall?+conv2d_transpose_34/StatefulPartitionedCall?+conv2d_transpose_35/StatefulPartitionedCall? dense_22/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCalldense_22_inputdense_22_457620*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_4574292"
 dense_22/StatefulPartitionedCall?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0batch_normalization_33_457623batch_normalization_33_457625batch_normalization_33_457627batch_normalization_33_457629*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_45708120
.batch_normalization_33/StatefulPartitionedCall?
leaky_re_lu_55/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_55_layer_call_and_return_conditional_losses_4574812 
leaky_re_lu_55/PartitionedCall?
reshape_11/PartitionedCallPartitionedCall'leaky_re_lu_55/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_11_layer_call_and_return_conditional_losses_4575032
reshape_11/PartitionedCall?
+conv2d_transpose_33/StatefulPartitionedCallStatefulPartitionedCall#reshape_11/PartitionedCall:output:0conv2d_transpose_33_457634*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_4571232-
+conv2d_transpose_33/StatefulPartitionedCall?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_33/StatefulPartitionedCall:output:0batch_normalization_34_457637batch_normalization_34_457639batch_normalization_34_457641batch_normalization_34_457643*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_45722420
.batch_normalization_34/StatefulPartitionedCall?
leaky_re_lu_56/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_4575542 
leaky_re_lu_56/PartitionedCall?
+conv2d_transpose_34/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_56/PartitionedCall:output:0conv2d_transpose_34_457647*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_4572662-
+conv2d_transpose_34/StatefulPartitionedCall?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_34/StatefulPartitionedCall:output:0batch_normalization_35_457650batch_normalization_35_457652batch_normalization_35_457654batch_normalization_35_457656*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_45736720
.batch_normalization_35/StatefulPartitionedCall?
leaky_re_lu_57/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_57_layer_call_and_return_conditional_losses_4576052 
leaky_re_lu_57/PartitionedCall?
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_57/PartitionedCall:output:0conv2d_transpose_35_457660*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_4574102-
+conv2d_transpose_35/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_35/StatefulPartitionedCall:output:0/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall,^conv2d_transpose_33/StatefulPartitionedCall,^conv2d_transpose_34/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2Z
+conv2d_transpose_33/StatefulPartitionedCall+conv2d_transpose_33/StatefulPartitionedCall2Z
+conv2d_transpose_34/StatefulPartitionedCall+conv2d_transpose_34/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_22_input
??
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_458005

inputs+
'dense_22_matmul_readvariableop_resource1
-batch_normalization_33_assignmovingavg_4578863
/batch_normalization_33_assignmovingavg_1_457892@
<batch_normalization_33_batchnorm_mul_readvariableop_resource<
8batch_normalization_33_batchnorm_readvariableop_resource@
<conv2d_transpose_33_conv2d_transpose_readvariableop_resource2
.batch_normalization_34_readvariableop_resource4
0batch_normalization_34_readvariableop_1_resourceC
?batch_normalization_34_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_34_fusedbatchnormv3_readvariableop_1_resource@
<conv2d_transpose_34_conv2d_transpose_readvariableop_resource2
.batch_normalization_35_readvariableop_resource4
0batch_normalization_35_readvariableop_1_resourceC
?batch_normalization_35_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_35_fusedbatchnormv3_readvariableop_1_resource@
<conv2d_transpose_35_conv2d_transpose_readvariableop_resource
identity??:batch_normalization_33/AssignMovingAvg/AssignSubVariableOp?5batch_normalization_33/AssignMovingAvg/ReadVariableOp?<batch_normalization_33/AssignMovingAvg_1/AssignSubVariableOp?7batch_normalization_33/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_33/batchnorm/ReadVariableOp?3batch_normalization_33/batchnorm/mul/ReadVariableOp?%batch_normalization_34/AssignNewValue?'batch_normalization_34/AssignNewValue_1?6batch_normalization_34/FusedBatchNormV3/ReadVariableOp?8batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_34/ReadVariableOp?'batch_normalization_34/ReadVariableOp_1?%batch_normalization_35/AssignNewValue?'batch_normalization_35/AssignNewValue_1?6batch_normalization_35/FusedBatchNormV3/ReadVariableOp?8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_35/ReadVariableOp?'batch_normalization_35/ReadVariableOp_1?3conv2d_transpose_33/conv2d_transpose/ReadVariableOp?3conv2d_transpose_34/conv2d_transpose/ReadVariableOp?3conv2d_transpose_35/conv2d_transpose/ReadVariableOp?dense_22/MatMul/ReadVariableOp?
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes
:	d?b*
dtype02 
dense_22/MatMul/ReadVariableOp?
dense_22/MatMulMatMulinputs&dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b2
dense_22/MatMul?
5batch_normalization_33/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_33/moments/mean/reduction_indices?
#batch_normalization_33/moments/meanMeandense_22/MatMul:product:0>batch_normalization_33/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?b*
	keep_dims(2%
#batch_normalization_33/moments/mean?
+batch_normalization_33/moments/StopGradientStopGradient,batch_normalization_33/moments/mean:output:0*
T0*
_output_shapes
:	?b2-
+batch_normalization_33/moments/StopGradient?
0batch_normalization_33/moments/SquaredDifferenceSquaredDifferencedense_22/MatMul:product:04batch_normalization_33/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????b22
0batch_normalization_33/moments/SquaredDifference?
9batch_normalization_33/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_33/moments/variance/reduction_indices?
'batch_normalization_33/moments/varianceMean4batch_normalization_33/moments/SquaredDifference:z:0Bbatch_normalization_33/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?b*
	keep_dims(2)
'batch_normalization_33/moments/variance?
&batch_normalization_33/moments/SqueezeSqueeze,batch_normalization_33/moments/mean:output:0*
T0*
_output_shapes	
:?b*
squeeze_dims
 2(
&batch_normalization_33/moments/Squeeze?
(batch_normalization_33/moments/Squeeze_1Squeeze0batch_normalization_33/moments/variance:output:0*
T0*
_output_shapes	
:?b*
squeeze_dims
 2*
(batch_normalization_33/moments/Squeeze_1?
,batch_normalization_33/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_33/AssignMovingAvg/457886*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_33/AssignMovingAvg/decay?
5batch_normalization_33/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_33_assignmovingavg_457886*
_output_shapes	
:?b*
dtype027
5batch_normalization_33/AssignMovingAvg/ReadVariableOp?
*batch_normalization_33/AssignMovingAvg/subSub=batch_normalization_33/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_33/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_33/AssignMovingAvg/457886*
_output_shapes	
:?b2,
*batch_normalization_33/AssignMovingAvg/sub?
*batch_normalization_33/AssignMovingAvg/mulMul.batch_normalization_33/AssignMovingAvg/sub:z:05batch_normalization_33/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_33/AssignMovingAvg/457886*
_output_shapes	
:?b2,
*batch_normalization_33/AssignMovingAvg/mul?
:batch_normalization_33/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_33_assignmovingavg_457886.batch_normalization_33/AssignMovingAvg/mul:z:06^batch_normalization_33/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_33/AssignMovingAvg/457886*
_output_shapes
 *
dtype02<
:batch_normalization_33/AssignMovingAvg/AssignSubVariableOp?
.batch_normalization_33/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_33/AssignMovingAvg_1/457892*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_33/AssignMovingAvg_1/decay?
7batch_normalization_33/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_33_assignmovingavg_1_457892*
_output_shapes	
:?b*
dtype029
7batch_normalization_33/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_33/AssignMovingAvg_1/subSub?batch_normalization_33/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_33/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_33/AssignMovingAvg_1/457892*
_output_shapes	
:?b2.
,batch_normalization_33/AssignMovingAvg_1/sub?
,batch_normalization_33/AssignMovingAvg_1/mulMul0batch_normalization_33/AssignMovingAvg_1/sub:z:07batch_normalization_33/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_33/AssignMovingAvg_1/457892*
_output_shapes	
:?b2.
,batch_normalization_33/AssignMovingAvg_1/mul?
<batch_normalization_33/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_33_assignmovingavg_1_4578920batch_normalization_33/AssignMovingAvg_1/mul:z:08^batch_normalization_33/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_33/AssignMovingAvg_1/457892*
_output_shapes
 *
dtype02>
<batch_normalization_33/AssignMovingAvg_1/AssignSubVariableOp?
&batch_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_33/batchnorm/add/y?
$batch_normalization_33/batchnorm/addAddV21batch_normalization_33/moments/Squeeze_1:output:0/batch_normalization_33/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?b2&
$batch_normalization_33/batchnorm/add?
&batch_normalization_33/batchnorm/RsqrtRsqrt(batch_normalization_33/batchnorm/add:z:0*
T0*
_output_shapes	
:?b2(
&batch_normalization_33/batchnorm/Rsqrt?
3batch_normalization_33/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_33_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype025
3batch_normalization_33/batchnorm/mul/ReadVariableOp?
$batch_normalization_33/batchnorm/mulMul*batch_normalization_33/batchnorm/Rsqrt:y:0;batch_normalization_33/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?b2&
$batch_normalization_33/batchnorm/mul?
&batch_normalization_33/batchnorm/mul_1Muldense_22/MatMul:product:0(batch_normalization_33/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????b2(
&batch_normalization_33/batchnorm/mul_1?
&batch_normalization_33/batchnorm/mul_2Mul/batch_normalization_33/moments/Squeeze:output:0(batch_normalization_33/batchnorm/mul:z:0*
T0*
_output_shapes	
:?b2(
&batch_normalization_33/batchnorm/mul_2?
/batch_normalization_33/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_33_batchnorm_readvariableop_resource*
_output_shapes	
:?b*
dtype021
/batch_normalization_33/batchnorm/ReadVariableOp?
$batch_normalization_33/batchnorm/subSub7batch_normalization_33/batchnorm/ReadVariableOp:value:0*batch_normalization_33/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?b2&
$batch_normalization_33/batchnorm/sub?
&batch_normalization_33/batchnorm/add_1AddV2*batch_normalization_33/batchnorm/mul_1:z:0(batch_normalization_33/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????b2(
&batch_normalization_33/batchnorm/add_1?
leaky_re_lu_55/LeakyRelu	LeakyRelu*batch_normalization_33/batchnorm/add_1:z:0*(
_output_shapes
:??????????b*
alpha%???>2
leaky_re_lu_55/LeakyReluz
reshape_11/ShapeShape&leaky_re_lu_55/LeakyRelu:activations:0*
T0*
_output_shapes
:2
reshape_11/Shape?
reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_11/strided_slice/stack?
 reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_1?
 reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_2?
reshape_11/strided_sliceStridedSlicereshape_11/Shape:output:0'reshape_11/strided_slice/stack:output:0)reshape_11/strided_slice/stack_1:output:0)reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_11/strided_slicez
reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_11/Reshape/shape/1z
reshape_11/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_11/Reshape/shape/2{
reshape_11/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_11/Reshape/shape/3?
reshape_11/Reshape/shapePack!reshape_11/strided_slice:output:0#reshape_11/Reshape/shape/1:output:0#reshape_11/Reshape/shape/2:output:0#reshape_11/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_11/Reshape/shape?
reshape_11/ReshapeReshape&leaky_re_lu_55/LeakyRelu:activations:0!reshape_11/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_11/Reshape?
conv2d_transpose_33/ShapeShapereshape_11/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_33/Shape?
'conv2d_transpose_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_33/strided_slice/stack?
)conv2d_transpose_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_33/strided_slice/stack_1?
)conv2d_transpose_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_33/strided_slice/stack_2?
!conv2d_transpose_33/strided_sliceStridedSlice"conv2d_transpose_33/Shape:output:00conv2d_transpose_33/strided_slice/stack:output:02conv2d_transpose_33/strided_slice/stack_1:output:02conv2d_transpose_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_33/strided_slice|
conv2d_transpose_33/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_33/stack/1|
conv2d_transpose_33/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_33/stack/2}
conv2d_transpose_33/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_33/stack/3?
conv2d_transpose_33/stackPack*conv2d_transpose_33/strided_slice:output:0$conv2d_transpose_33/stack/1:output:0$conv2d_transpose_33/stack/2:output:0$conv2d_transpose_33/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_33/stack?
)conv2d_transpose_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_33/strided_slice_1/stack?
+conv2d_transpose_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_33/strided_slice_1/stack_1?
+conv2d_transpose_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_33/strided_slice_1/stack_2?
#conv2d_transpose_33/strided_slice_1StridedSlice"conv2d_transpose_33/stack:output:02conv2d_transpose_33/strided_slice_1/stack:output:04conv2d_transpose_33/strided_slice_1/stack_1:output:04conv2d_transpose_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_33/strided_slice_1?
3conv2d_transpose_33/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_33_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_33/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_33/conv2d_transposeConv2DBackpropInput"conv2d_transpose_33/stack:output:0;conv2d_transpose_33/conv2d_transpose/ReadVariableOp:value:0reshape_11/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$conv2d_transpose_33/conv2d_transpose?
%batch_normalization_34/ReadVariableOpReadVariableOp.batch_normalization_34_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_34/ReadVariableOp?
'batch_normalization_34/ReadVariableOp_1ReadVariableOp0batch_normalization_34_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_34/ReadVariableOp_1?
6batch_normalization_34/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_34_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_34/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_34_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_34/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_33/conv2d_transpose:output:0-batch_normalization_34/ReadVariableOp:value:0/batch_normalization_34/ReadVariableOp_1:value:0>batch_normalization_34/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_34/FusedBatchNormV3?
%batch_normalization_34/AssignNewValueAssignVariableOp?batch_normalization_34_fusedbatchnormv3_readvariableop_resource4batch_normalization_34/FusedBatchNormV3:batch_mean:07^batch_normalization_34/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*R
_classH
FDloc:@batch_normalization_34/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_34/AssignNewValue?
'batch_normalization_34/AssignNewValue_1AssignVariableOpAbatch_normalization_34_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_34/FusedBatchNormV3:batch_variance:09^batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*T
_classJ
HFloc:@batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_34/AssignNewValue_1?
leaky_re_lu_56/LeakyRelu	LeakyRelu+batch_normalization_34/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_56/LeakyRelu?
conv2d_transpose_34/ShapeShape&leaky_re_lu_56/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_34/Shape?
'conv2d_transpose_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_34/strided_slice/stack?
)conv2d_transpose_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_34/strided_slice/stack_1?
)conv2d_transpose_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_34/strided_slice/stack_2?
!conv2d_transpose_34/strided_sliceStridedSlice"conv2d_transpose_34/Shape:output:00conv2d_transpose_34/strided_slice/stack:output:02conv2d_transpose_34/strided_slice/stack_1:output:02conv2d_transpose_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_34/strided_slice|
conv2d_transpose_34/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_34/stack/1|
conv2d_transpose_34/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_34/stack/2|
conv2d_transpose_34/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_34/stack/3?
conv2d_transpose_34/stackPack*conv2d_transpose_34/strided_slice:output:0$conv2d_transpose_34/stack/1:output:0$conv2d_transpose_34/stack/2:output:0$conv2d_transpose_34/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_34/stack?
)conv2d_transpose_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_34/strided_slice_1/stack?
+conv2d_transpose_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_34/strided_slice_1/stack_1?
+conv2d_transpose_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_34/strided_slice_1/stack_2?
#conv2d_transpose_34/strided_slice_1StridedSlice"conv2d_transpose_34/stack:output:02conv2d_transpose_34/strided_slice_1/stack:output:04conv2d_transpose_34/strided_slice_1/stack_1:output:04conv2d_transpose_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_34/strided_slice_1?
3conv2d_transpose_34/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_34_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_34/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_34/conv2d_transposeConv2DBackpropInput"conv2d_transpose_34/stack:output:0;conv2d_transpose_34/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_56/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2&
$conv2d_transpose_34/conv2d_transpose?
%batch_normalization_35/ReadVariableOpReadVariableOp.batch_normalization_35_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_35/ReadVariableOp?
'batch_normalization_35/ReadVariableOp_1ReadVariableOp0batch_normalization_35_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_35/ReadVariableOp_1?
6batch_normalization_35/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_35_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_35/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_35_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_35/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_34/conv2d_transpose:output:0-batch_normalization_35/ReadVariableOp:value:0/batch_normalization_35/ReadVariableOp_1:value:0>batch_normalization_35/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_35/FusedBatchNormV3?
%batch_normalization_35/AssignNewValueAssignVariableOp?batch_normalization_35_fusedbatchnormv3_readvariableop_resource4batch_normalization_35/FusedBatchNormV3:batch_mean:07^batch_normalization_35/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*R
_classH
FDloc:@batch_normalization_35/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_35/AssignNewValue?
'batch_normalization_35/AssignNewValue_1AssignVariableOpAbatch_normalization_35_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_35/FusedBatchNormV3:batch_variance:09^batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*T
_classJ
HFloc:@batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_35/AssignNewValue_1?
leaky_re_lu_57/LeakyRelu	LeakyRelu+batch_normalization_35/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>2
leaky_re_lu_57/LeakyRelu?
conv2d_transpose_35/ShapeShape&leaky_re_lu_57/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_35/Shape?
'conv2d_transpose_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_35/strided_slice/stack?
)conv2d_transpose_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_35/strided_slice/stack_1?
)conv2d_transpose_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_35/strided_slice/stack_2?
!conv2d_transpose_35/strided_sliceStridedSlice"conv2d_transpose_35/Shape:output:00conv2d_transpose_35/strided_slice/stack:output:02conv2d_transpose_35/strided_slice/stack_1:output:02conv2d_transpose_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_35/strided_slice|
conv2d_transpose_35/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_35/stack/1|
conv2d_transpose_35/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_35/stack/2|
conv2d_transpose_35/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_35/stack/3?
conv2d_transpose_35/stackPack*conv2d_transpose_35/strided_slice:output:0$conv2d_transpose_35/stack/1:output:0$conv2d_transpose_35/stack/2:output:0$conv2d_transpose_35/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_35/stack?
)conv2d_transpose_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_35/strided_slice_1/stack?
+conv2d_transpose_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_35/strided_slice_1/stack_1?
+conv2d_transpose_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_35/strided_slice_1/stack_2?
#conv2d_transpose_35/strided_slice_1StridedSlice"conv2d_transpose_35/stack:output:02conv2d_transpose_35/strided_slice_1/stack:output:04conv2d_transpose_35/strided_slice_1/stack_1:output:04conv2d_transpose_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_35/strided_slice_1?
3conv2d_transpose_35/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_35_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_transpose_35/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_35/conv2d_transposeConv2DBackpropInput"conv2d_transpose_35/stack:output:0;conv2d_transpose_35/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_57/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2&
$conv2d_transpose_35/conv2d_transpose?
conv2d_transpose_35/TanhTanh-conv2d_transpose_35/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????2
conv2d_transpose_35/Tanh?	
IdentityIdentityconv2d_transpose_35/Tanh:y:0;^batch_normalization_33/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_33/AssignMovingAvg/ReadVariableOp=^batch_normalization_33/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_33/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_33/batchnorm/ReadVariableOp4^batch_normalization_33/batchnorm/mul/ReadVariableOp&^batch_normalization_34/AssignNewValue(^batch_normalization_34/AssignNewValue_17^batch_normalization_34/FusedBatchNormV3/ReadVariableOp9^batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_34/ReadVariableOp(^batch_normalization_34/ReadVariableOp_1&^batch_normalization_35/AssignNewValue(^batch_normalization_35/AssignNewValue_17^batch_normalization_35/FusedBatchNormV3/ReadVariableOp9^batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_35/ReadVariableOp(^batch_normalization_35/ReadVariableOp_14^conv2d_transpose_33/conv2d_transpose/ReadVariableOp4^conv2d_transpose_34/conv2d_transpose/ReadVariableOp4^conv2d_transpose_35/conv2d_transpose/ReadVariableOp^dense_22/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::2x
:batch_normalization_33/AssignMovingAvg/AssignSubVariableOp:batch_normalization_33/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_33/AssignMovingAvg/ReadVariableOp5batch_normalization_33/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_33/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_33/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_33/AssignMovingAvg_1/ReadVariableOp7batch_normalization_33/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_33/batchnorm/ReadVariableOp/batch_normalization_33/batchnorm/ReadVariableOp2j
3batch_normalization_33/batchnorm/mul/ReadVariableOp3batch_normalization_33/batchnorm/mul/ReadVariableOp2N
%batch_normalization_34/AssignNewValue%batch_normalization_34/AssignNewValue2R
'batch_normalization_34/AssignNewValue_1'batch_normalization_34/AssignNewValue_12p
6batch_normalization_34/FusedBatchNormV3/ReadVariableOp6batch_normalization_34/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_34/FusedBatchNormV3/ReadVariableOp_18batch_normalization_34/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_34/ReadVariableOp%batch_normalization_34/ReadVariableOp2R
'batch_normalization_34/ReadVariableOp_1'batch_normalization_34/ReadVariableOp_12N
%batch_normalization_35/AssignNewValue%batch_normalization_35/AssignNewValue2R
'batch_normalization_35/AssignNewValue_1'batch_normalization_35/AssignNewValue_12p
6batch_normalization_35/FusedBatchNormV3/ReadVariableOp6batch_normalization_35/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_18batch_normalization_35/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_35/ReadVariableOp%batch_normalization_35/ReadVariableOp2R
'batch_normalization_35/ReadVariableOp_1'batch_normalization_35/ReadVariableOp_12j
3conv2d_transpose_33/conv2d_transpose/ReadVariableOp3conv2d_transpose_33/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_34/conv2d_transpose/ReadVariableOp3conv2d_transpose_34/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_35/conv2d_transpose/ReadVariableOp3conv2d_transpose_35/conv2d_transpose/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?0
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_457048

inputs
assignmovingavg_457023
assignmovingavg_1_457029)
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
:	?b*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?b2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????b2
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
:	?b*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?b*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?b*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/457023*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_457023*
_output_shapes	
:?b*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/457023*
_output_shapes	
:?b2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/457023*
_output_shapes	
:?b2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_457023AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/457023*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/457029*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_457029*
_output_shapes	
:?b*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/457029*
_output_shapes	
:?b2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/457029*
_output_shapes	
:?b2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_457029AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/457029*
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
:?b2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?b2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?b2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????b2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?b2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?b*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?b2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????b2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????b::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
z
4__inference_conv2d_transpose_35_layer_call_fn_457418

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_4574102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:+???????????????????????????@:22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_457367

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_34_layer_call_fn_458368

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
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_4571932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_458355

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_55_layer_call_and_return_conditional_losses_458293

inputs
identitye
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????b*
alpha%???>2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????b:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
??
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_458118

inputs+
'dense_22_matmul_readvariableop_resource<
8batch_normalization_33_batchnorm_readvariableop_resource@
<batch_normalization_33_batchnorm_mul_readvariableop_resource>
:batch_normalization_33_batchnorm_readvariableop_1_resource>
:batch_normalization_33_batchnorm_readvariableop_2_resource@
<conv2d_transpose_33_conv2d_transpose_readvariableop_resource2
.batch_normalization_34_readvariableop_resource4
0batch_normalization_34_readvariableop_1_resourceC
?batch_normalization_34_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_34_fusedbatchnormv3_readvariableop_1_resource@
<conv2d_transpose_34_conv2d_transpose_readvariableop_resource2
.batch_normalization_35_readvariableop_resource4
0batch_normalization_35_readvariableop_1_resourceC
?batch_normalization_35_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_35_fusedbatchnormv3_readvariableop_1_resource@
<conv2d_transpose_35_conv2d_transpose_readvariableop_resource
identity??/batch_normalization_33/batchnorm/ReadVariableOp?1batch_normalization_33/batchnorm/ReadVariableOp_1?1batch_normalization_33/batchnorm/ReadVariableOp_2?3batch_normalization_33/batchnorm/mul/ReadVariableOp?6batch_normalization_34/FusedBatchNormV3/ReadVariableOp?8batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_34/ReadVariableOp?'batch_normalization_34/ReadVariableOp_1?6batch_normalization_35/FusedBatchNormV3/ReadVariableOp?8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_35/ReadVariableOp?'batch_normalization_35/ReadVariableOp_1?3conv2d_transpose_33/conv2d_transpose/ReadVariableOp?3conv2d_transpose_34/conv2d_transpose/ReadVariableOp?3conv2d_transpose_35/conv2d_transpose/ReadVariableOp?dense_22/MatMul/ReadVariableOp?
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes
:	d?b*
dtype02 
dense_22/MatMul/ReadVariableOp?
dense_22/MatMulMatMulinputs&dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b2
dense_22/MatMul?
/batch_normalization_33/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_33_batchnorm_readvariableop_resource*
_output_shapes	
:?b*
dtype021
/batch_normalization_33/batchnorm/ReadVariableOp?
&batch_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_33/batchnorm/add/y?
$batch_normalization_33/batchnorm/addAddV27batch_normalization_33/batchnorm/ReadVariableOp:value:0/batch_normalization_33/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?b2&
$batch_normalization_33/batchnorm/add?
&batch_normalization_33/batchnorm/RsqrtRsqrt(batch_normalization_33/batchnorm/add:z:0*
T0*
_output_shapes	
:?b2(
&batch_normalization_33/batchnorm/Rsqrt?
3batch_normalization_33/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_33_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype025
3batch_normalization_33/batchnorm/mul/ReadVariableOp?
$batch_normalization_33/batchnorm/mulMul*batch_normalization_33/batchnorm/Rsqrt:y:0;batch_normalization_33/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?b2&
$batch_normalization_33/batchnorm/mul?
&batch_normalization_33/batchnorm/mul_1Muldense_22/MatMul:product:0(batch_normalization_33/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????b2(
&batch_normalization_33/batchnorm/mul_1?
1batch_normalization_33/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_33_batchnorm_readvariableop_1_resource*
_output_shapes	
:?b*
dtype023
1batch_normalization_33/batchnorm/ReadVariableOp_1?
&batch_normalization_33/batchnorm/mul_2Mul9batch_normalization_33/batchnorm/ReadVariableOp_1:value:0(batch_normalization_33/batchnorm/mul:z:0*
T0*
_output_shapes	
:?b2(
&batch_normalization_33/batchnorm/mul_2?
1batch_normalization_33/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_33_batchnorm_readvariableop_2_resource*
_output_shapes	
:?b*
dtype023
1batch_normalization_33/batchnorm/ReadVariableOp_2?
$batch_normalization_33/batchnorm/subSub9batch_normalization_33/batchnorm/ReadVariableOp_2:value:0*batch_normalization_33/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?b2&
$batch_normalization_33/batchnorm/sub?
&batch_normalization_33/batchnorm/add_1AddV2*batch_normalization_33/batchnorm/mul_1:z:0(batch_normalization_33/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????b2(
&batch_normalization_33/batchnorm/add_1?
leaky_re_lu_55/LeakyRelu	LeakyRelu*batch_normalization_33/batchnorm/add_1:z:0*(
_output_shapes
:??????????b*
alpha%???>2
leaky_re_lu_55/LeakyReluz
reshape_11/ShapeShape&leaky_re_lu_55/LeakyRelu:activations:0*
T0*
_output_shapes
:2
reshape_11/Shape?
reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_11/strided_slice/stack?
 reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_1?
 reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_2?
reshape_11/strided_sliceStridedSlicereshape_11/Shape:output:0'reshape_11/strided_slice/stack:output:0)reshape_11/strided_slice/stack_1:output:0)reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_11/strided_slicez
reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_11/Reshape/shape/1z
reshape_11/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_11/Reshape/shape/2{
reshape_11/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_11/Reshape/shape/3?
reshape_11/Reshape/shapePack!reshape_11/strided_slice:output:0#reshape_11/Reshape/shape/1:output:0#reshape_11/Reshape/shape/2:output:0#reshape_11/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_11/Reshape/shape?
reshape_11/ReshapeReshape&leaky_re_lu_55/LeakyRelu:activations:0!reshape_11/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_11/Reshape?
conv2d_transpose_33/ShapeShapereshape_11/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_33/Shape?
'conv2d_transpose_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_33/strided_slice/stack?
)conv2d_transpose_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_33/strided_slice/stack_1?
)conv2d_transpose_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_33/strided_slice/stack_2?
!conv2d_transpose_33/strided_sliceStridedSlice"conv2d_transpose_33/Shape:output:00conv2d_transpose_33/strided_slice/stack:output:02conv2d_transpose_33/strided_slice/stack_1:output:02conv2d_transpose_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_33/strided_slice|
conv2d_transpose_33/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_33/stack/1|
conv2d_transpose_33/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_33/stack/2}
conv2d_transpose_33/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_33/stack/3?
conv2d_transpose_33/stackPack*conv2d_transpose_33/strided_slice:output:0$conv2d_transpose_33/stack/1:output:0$conv2d_transpose_33/stack/2:output:0$conv2d_transpose_33/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_33/stack?
)conv2d_transpose_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_33/strided_slice_1/stack?
+conv2d_transpose_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_33/strided_slice_1/stack_1?
+conv2d_transpose_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_33/strided_slice_1/stack_2?
#conv2d_transpose_33/strided_slice_1StridedSlice"conv2d_transpose_33/stack:output:02conv2d_transpose_33/strided_slice_1/stack:output:04conv2d_transpose_33/strided_slice_1/stack_1:output:04conv2d_transpose_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_33/strided_slice_1?
3conv2d_transpose_33/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_33_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_33/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_33/conv2d_transposeConv2DBackpropInput"conv2d_transpose_33/stack:output:0;conv2d_transpose_33/conv2d_transpose/ReadVariableOp:value:0reshape_11/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$conv2d_transpose_33/conv2d_transpose?
%batch_normalization_34/ReadVariableOpReadVariableOp.batch_normalization_34_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_34/ReadVariableOp?
'batch_normalization_34/ReadVariableOp_1ReadVariableOp0batch_normalization_34_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_34/ReadVariableOp_1?
6batch_normalization_34/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_34_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_34/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_34_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_34/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_33/conv2d_transpose:output:0-batch_normalization_34/ReadVariableOp:value:0/batch_normalization_34/ReadVariableOp_1:value:0>batch_normalization_34/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_34/FusedBatchNormV3?
leaky_re_lu_56/LeakyRelu	LeakyRelu+batch_normalization_34/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_56/LeakyRelu?
conv2d_transpose_34/ShapeShape&leaky_re_lu_56/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_34/Shape?
'conv2d_transpose_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_34/strided_slice/stack?
)conv2d_transpose_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_34/strided_slice/stack_1?
)conv2d_transpose_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_34/strided_slice/stack_2?
!conv2d_transpose_34/strided_sliceStridedSlice"conv2d_transpose_34/Shape:output:00conv2d_transpose_34/strided_slice/stack:output:02conv2d_transpose_34/strided_slice/stack_1:output:02conv2d_transpose_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_34/strided_slice|
conv2d_transpose_34/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_34/stack/1|
conv2d_transpose_34/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_34/stack/2|
conv2d_transpose_34/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_34/stack/3?
conv2d_transpose_34/stackPack*conv2d_transpose_34/strided_slice:output:0$conv2d_transpose_34/stack/1:output:0$conv2d_transpose_34/stack/2:output:0$conv2d_transpose_34/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_34/stack?
)conv2d_transpose_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_34/strided_slice_1/stack?
+conv2d_transpose_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_34/strided_slice_1/stack_1?
+conv2d_transpose_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_34/strided_slice_1/stack_2?
#conv2d_transpose_34/strided_slice_1StridedSlice"conv2d_transpose_34/stack:output:02conv2d_transpose_34/strided_slice_1/stack:output:04conv2d_transpose_34/strided_slice_1/stack_1:output:04conv2d_transpose_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_34/strided_slice_1?
3conv2d_transpose_34/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_34_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_34/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_34/conv2d_transposeConv2DBackpropInput"conv2d_transpose_34/stack:output:0;conv2d_transpose_34/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_56/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2&
$conv2d_transpose_34/conv2d_transpose?
%batch_normalization_35/ReadVariableOpReadVariableOp.batch_normalization_35_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_35/ReadVariableOp?
'batch_normalization_35/ReadVariableOp_1ReadVariableOp0batch_normalization_35_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_35/ReadVariableOp_1?
6batch_normalization_35/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_35_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_35/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_35_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_35/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_34/conv2d_transpose:output:0-batch_normalization_35/ReadVariableOp:value:0/batch_normalization_35/ReadVariableOp_1:value:0>batch_normalization_35/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_35/FusedBatchNormV3?
leaky_re_lu_57/LeakyRelu	LeakyRelu+batch_normalization_35/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>2
leaky_re_lu_57/LeakyRelu?
conv2d_transpose_35/ShapeShape&leaky_re_lu_57/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_35/Shape?
'conv2d_transpose_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_35/strided_slice/stack?
)conv2d_transpose_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_35/strided_slice/stack_1?
)conv2d_transpose_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_35/strided_slice/stack_2?
!conv2d_transpose_35/strided_sliceStridedSlice"conv2d_transpose_35/Shape:output:00conv2d_transpose_35/strided_slice/stack:output:02conv2d_transpose_35/strided_slice/stack_1:output:02conv2d_transpose_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_35/strided_slice|
conv2d_transpose_35/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_35/stack/1|
conv2d_transpose_35/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_35/stack/2|
conv2d_transpose_35/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_35/stack/3?
conv2d_transpose_35/stackPack*conv2d_transpose_35/strided_slice:output:0$conv2d_transpose_35/stack/1:output:0$conv2d_transpose_35/stack/2:output:0$conv2d_transpose_35/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_35/stack?
)conv2d_transpose_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_35/strided_slice_1/stack?
+conv2d_transpose_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_35/strided_slice_1/stack_1?
+conv2d_transpose_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_35/strided_slice_1/stack_2?
#conv2d_transpose_35/strided_slice_1StridedSlice"conv2d_transpose_35/stack:output:02conv2d_transpose_35/strided_slice_1/stack:output:04conv2d_transpose_35/strided_slice_1/stack_1:output:04conv2d_transpose_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_35/strided_slice_1?
3conv2d_transpose_35/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_35_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_transpose_35/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_35/conv2d_transposeConv2DBackpropInput"conv2d_transpose_35/stack:output:0;conv2d_transpose_35/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_57/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2&
$conv2d_transpose_35/conv2d_transpose?
conv2d_transpose_35/TanhTanh-conv2d_transpose_35/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????2
conv2d_transpose_35/Tanh?
IdentityIdentityconv2d_transpose_35/Tanh:y:00^batch_normalization_33/batchnorm/ReadVariableOp2^batch_normalization_33/batchnorm/ReadVariableOp_12^batch_normalization_33/batchnorm/ReadVariableOp_24^batch_normalization_33/batchnorm/mul/ReadVariableOp7^batch_normalization_34/FusedBatchNormV3/ReadVariableOp9^batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_34/ReadVariableOp(^batch_normalization_34/ReadVariableOp_17^batch_normalization_35/FusedBatchNormV3/ReadVariableOp9^batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_35/ReadVariableOp(^batch_normalization_35/ReadVariableOp_14^conv2d_transpose_33/conv2d_transpose/ReadVariableOp4^conv2d_transpose_34/conv2d_transpose/ReadVariableOp4^conv2d_transpose_35/conv2d_transpose/ReadVariableOp^dense_22/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::2b
/batch_normalization_33/batchnorm/ReadVariableOp/batch_normalization_33/batchnorm/ReadVariableOp2f
1batch_normalization_33/batchnorm/ReadVariableOp_11batch_normalization_33/batchnorm/ReadVariableOp_12f
1batch_normalization_33/batchnorm/ReadVariableOp_21batch_normalization_33/batchnorm/ReadVariableOp_22j
3batch_normalization_33/batchnorm/mul/ReadVariableOp3batch_normalization_33/batchnorm/mul/ReadVariableOp2p
6batch_normalization_34/FusedBatchNormV3/ReadVariableOp6batch_normalization_34/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_34/FusedBatchNormV3/ReadVariableOp_18batch_normalization_34/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_34/ReadVariableOp%batch_normalization_34/ReadVariableOp2R
'batch_normalization_34/ReadVariableOp_1'batch_normalization_34/ReadVariableOp_12p
6batch_normalization_35/FusedBatchNormV3/ReadVariableOp6batch_normalization_35/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_18batch_normalization_35/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_35/ReadVariableOp%batch_normalization_35/ReadVariableOp2R
'batch_normalization_35/ReadVariableOp_1'batch_normalization_35/ReadVariableOp_12j
3conv2d_transpose_33/conv2d_transpose/ReadVariableOp3conv2d_transpose_33/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_34/conv2d_transpose/ReadVariableOp3conv2d_transpose_34/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_35/conv2d_transpose/ReadVariableOp3conv2d_transpose_35/conv2d_transpose/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
o
)__inference_dense_22_layer_call_fn_458206

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_4574292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????d:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_456952
dense_22_input9
5sequential_22_dense_22_matmul_readvariableop_resourceJ
Fsequential_22_batch_normalization_33_batchnorm_readvariableop_resourceN
Jsequential_22_batch_normalization_33_batchnorm_mul_readvariableop_resourceL
Hsequential_22_batch_normalization_33_batchnorm_readvariableop_1_resourceL
Hsequential_22_batch_normalization_33_batchnorm_readvariableop_2_resourceN
Jsequential_22_conv2d_transpose_33_conv2d_transpose_readvariableop_resource@
<sequential_22_batch_normalization_34_readvariableop_resourceB
>sequential_22_batch_normalization_34_readvariableop_1_resourceQ
Msequential_22_batch_normalization_34_fusedbatchnormv3_readvariableop_resourceS
Osequential_22_batch_normalization_34_fusedbatchnormv3_readvariableop_1_resourceN
Jsequential_22_conv2d_transpose_34_conv2d_transpose_readvariableop_resource@
<sequential_22_batch_normalization_35_readvariableop_resourceB
>sequential_22_batch_normalization_35_readvariableop_1_resourceQ
Msequential_22_batch_normalization_35_fusedbatchnormv3_readvariableop_resourceS
Osequential_22_batch_normalization_35_fusedbatchnormv3_readvariableop_1_resourceN
Jsequential_22_conv2d_transpose_35_conv2d_transpose_readvariableop_resource
identity??=sequential_22/batch_normalization_33/batchnorm/ReadVariableOp??sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_1??sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_2?Asequential_22/batch_normalization_33/batchnorm/mul/ReadVariableOp?Dsequential_22/batch_normalization_34/FusedBatchNormV3/ReadVariableOp?Fsequential_22/batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1?3sequential_22/batch_normalization_34/ReadVariableOp?5sequential_22/batch_normalization_34/ReadVariableOp_1?Dsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp?Fsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1?3sequential_22/batch_normalization_35/ReadVariableOp?5sequential_22/batch_normalization_35/ReadVariableOp_1?Asequential_22/conv2d_transpose_33/conv2d_transpose/ReadVariableOp?Asequential_22/conv2d_transpose_34/conv2d_transpose/ReadVariableOp?Asequential_22/conv2d_transpose_35/conv2d_transpose/ReadVariableOp?,sequential_22/dense_22/MatMul/ReadVariableOp?
,sequential_22/dense_22/MatMul/ReadVariableOpReadVariableOp5sequential_22_dense_22_matmul_readvariableop_resource*
_output_shapes
:	d?b*
dtype02.
,sequential_22/dense_22/MatMul/ReadVariableOp?
sequential_22/dense_22/MatMulMatMuldense_22_input4sequential_22/dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b2
sequential_22/dense_22/MatMul?
=sequential_22/batch_normalization_33/batchnorm/ReadVariableOpReadVariableOpFsequential_22_batch_normalization_33_batchnorm_readvariableop_resource*
_output_shapes	
:?b*
dtype02?
=sequential_22/batch_normalization_33/batchnorm/ReadVariableOp?
4sequential_22/batch_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_22/batch_normalization_33/batchnorm/add/y?
2sequential_22/batch_normalization_33/batchnorm/addAddV2Esequential_22/batch_normalization_33/batchnorm/ReadVariableOp:value:0=sequential_22/batch_normalization_33/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?b24
2sequential_22/batch_normalization_33/batchnorm/add?
4sequential_22/batch_normalization_33/batchnorm/RsqrtRsqrt6sequential_22/batch_normalization_33/batchnorm/add:z:0*
T0*
_output_shapes	
:?b26
4sequential_22/batch_normalization_33/batchnorm/Rsqrt?
Asequential_22/batch_normalization_33/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_22_batch_normalization_33_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype02C
Asequential_22/batch_normalization_33/batchnorm/mul/ReadVariableOp?
2sequential_22/batch_normalization_33/batchnorm/mulMul8sequential_22/batch_normalization_33/batchnorm/Rsqrt:y:0Isequential_22/batch_normalization_33/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?b24
2sequential_22/batch_normalization_33/batchnorm/mul?
4sequential_22/batch_normalization_33/batchnorm/mul_1Mul'sequential_22/dense_22/MatMul:product:06sequential_22/batch_normalization_33/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????b26
4sequential_22/batch_normalization_33/batchnorm/mul_1?
?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_22_batch_normalization_33_batchnorm_readvariableop_1_resource*
_output_shapes	
:?b*
dtype02A
?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_1?
4sequential_22/batch_normalization_33/batchnorm/mul_2MulGsequential_22/batch_normalization_33/batchnorm/ReadVariableOp_1:value:06sequential_22/batch_normalization_33/batchnorm/mul:z:0*
T0*
_output_shapes	
:?b26
4sequential_22/batch_normalization_33/batchnorm/mul_2?
?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_22_batch_normalization_33_batchnorm_readvariableop_2_resource*
_output_shapes	
:?b*
dtype02A
?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_2?
2sequential_22/batch_normalization_33/batchnorm/subSubGsequential_22/batch_normalization_33/batchnorm/ReadVariableOp_2:value:08sequential_22/batch_normalization_33/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?b24
2sequential_22/batch_normalization_33/batchnorm/sub?
4sequential_22/batch_normalization_33/batchnorm/add_1AddV28sequential_22/batch_normalization_33/batchnorm/mul_1:z:06sequential_22/batch_normalization_33/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????b26
4sequential_22/batch_normalization_33/batchnorm/add_1?
&sequential_22/leaky_re_lu_55/LeakyRelu	LeakyRelu8sequential_22/batch_normalization_33/batchnorm/add_1:z:0*(
_output_shapes
:??????????b*
alpha%???>2(
&sequential_22/leaky_re_lu_55/LeakyRelu?
sequential_22/reshape_11/ShapeShape4sequential_22/leaky_re_lu_55/LeakyRelu:activations:0*
T0*
_output_shapes
:2 
sequential_22/reshape_11/Shape?
,sequential_22/reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_22/reshape_11/strided_slice/stack?
.sequential_22/reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_22/reshape_11/strided_slice/stack_1?
.sequential_22/reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_22/reshape_11/strided_slice/stack_2?
&sequential_22/reshape_11/strided_sliceStridedSlice'sequential_22/reshape_11/Shape:output:05sequential_22/reshape_11/strided_slice/stack:output:07sequential_22/reshape_11/strided_slice/stack_1:output:07sequential_22/reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_22/reshape_11/strided_slice?
(sequential_22/reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_22/reshape_11/Reshape/shape/1?
(sequential_22/reshape_11/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_22/reshape_11/Reshape/shape/2?
(sequential_22/reshape_11/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2*
(sequential_22/reshape_11/Reshape/shape/3?
&sequential_22/reshape_11/Reshape/shapePack/sequential_22/reshape_11/strided_slice:output:01sequential_22/reshape_11/Reshape/shape/1:output:01sequential_22/reshape_11/Reshape/shape/2:output:01sequential_22/reshape_11/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_22/reshape_11/Reshape/shape?
 sequential_22/reshape_11/ReshapeReshape4sequential_22/leaky_re_lu_55/LeakyRelu:activations:0/sequential_22/reshape_11/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2"
 sequential_22/reshape_11/Reshape?
'sequential_22/conv2d_transpose_33/ShapeShape)sequential_22/reshape_11/Reshape:output:0*
T0*
_output_shapes
:2)
'sequential_22/conv2d_transpose_33/Shape?
5sequential_22/conv2d_transpose_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_22/conv2d_transpose_33/strided_slice/stack?
7sequential_22/conv2d_transpose_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_22/conv2d_transpose_33/strided_slice/stack_1?
7sequential_22/conv2d_transpose_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_22/conv2d_transpose_33/strided_slice/stack_2?
/sequential_22/conv2d_transpose_33/strided_sliceStridedSlice0sequential_22/conv2d_transpose_33/Shape:output:0>sequential_22/conv2d_transpose_33/strided_slice/stack:output:0@sequential_22/conv2d_transpose_33/strided_slice/stack_1:output:0@sequential_22/conv2d_transpose_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_22/conv2d_transpose_33/strided_slice?
)sequential_22/conv2d_transpose_33/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_22/conv2d_transpose_33/stack/1?
)sequential_22/conv2d_transpose_33/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_22/conv2d_transpose_33/stack/2?
)sequential_22/conv2d_transpose_33/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_22/conv2d_transpose_33/stack/3?
'sequential_22/conv2d_transpose_33/stackPack8sequential_22/conv2d_transpose_33/strided_slice:output:02sequential_22/conv2d_transpose_33/stack/1:output:02sequential_22/conv2d_transpose_33/stack/2:output:02sequential_22/conv2d_transpose_33/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_22/conv2d_transpose_33/stack?
7sequential_22/conv2d_transpose_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_22/conv2d_transpose_33/strided_slice_1/stack?
9sequential_22/conv2d_transpose_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_22/conv2d_transpose_33/strided_slice_1/stack_1?
9sequential_22/conv2d_transpose_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_22/conv2d_transpose_33/strided_slice_1/stack_2?
1sequential_22/conv2d_transpose_33/strided_slice_1StridedSlice0sequential_22/conv2d_transpose_33/stack:output:0@sequential_22/conv2d_transpose_33/strided_slice_1/stack:output:0Bsequential_22/conv2d_transpose_33/strided_slice_1/stack_1:output:0Bsequential_22/conv2d_transpose_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_22/conv2d_transpose_33/strided_slice_1?
Asequential_22/conv2d_transpose_33/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_22_conv2d_transpose_33_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_22/conv2d_transpose_33/conv2d_transpose/ReadVariableOp?
2sequential_22/conv2d_transpose_33/conv2d_transposeConv2DBackpropInput0sequential_22/conv2d_transpose_33/stack:output:0Isequential_22/conv2d_transpose_33/conv2d_transpose/ReadVariableOp:value:0)sequential_22/reshape_11/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
24
2sequential_22/conv2d_transpose_33/conv2d_transpose?
3sequential_22/batch_normalization_34/ReadVariableOpReadVariableOp<sequential_22_batch_normalization_34_readvariableop_resource*
_output_shapes	
:?*
dtype025
3sequential_22/batch_normalization_34/ReadVariableOp?
5sequential_22/batch_normalization_34/ReadVariableOp_1ReadVariableOp>sequential_22_batch_normalization_34_readvariableop_1_resource*
_output_shapes	
:?*
dtype027
5sequential_22/batch_normalization_34/ReadVariableOp_1?
Dsequential_22/batch_normalization_34/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_22_batch_normalization_34_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dsequential_22/batch_normalization_34/FusedBatchNormV3/ReadVariableOp?
Fsequential_22/batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_22_batch_normalization_34_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02H
Fsequential_22/batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1?
5sequential_22/batch_normalization_34/FusedBatchNormV3FusedBatchNormV3;sequential_22/conv2d_transpose_33/conv2d_transpose:output:0;sequential_22/batch_normalization_34/ReadVariableOp:value:0=sequential_22/batch_normalization_34/ReadVariableOp_1:value:0Lsequential_22/batch_normalization_34/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_22/batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 27
5sequential_22/batch_normalization_34/FusedBatchNormV3?
&sequential_22/leaky_re_lu_56/LeakyRelu	LeakyRelu9sequential_22/batch_normalization_34/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2(
&sequential_22/leaky_re_lu_56/LeakyRelu?
'sequential_22/conv2d_transpose_34/ShapeShape4sequential_22/leaky_re_lu_56/LeakyRelu:activations:0*
T0*
_output_shapes
:2)
'sequential_22/conv2d_transpose_34/Shape?
5sequential_22/conv2d_transpose_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_22/conv2d_transpose_34/strided_slice/stack?
7sequential_22/conv2d_transpose_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_22/conv2d_transpose_34/strided_slice/stack_1?
7sequential_22/conv2d_transpose_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_22/conv2d_transpose_34/strided_slice/stack_2?
/sequential_22/conv2d_transpose_34/strided_sliceStridedSlice0sequential_22/conv2d_transpose_34/Shape:output:0>sequential_22/conv2d_transpose_34/strided_slice/stack:output:0@sequential_22/conv2d_transpose_34/strided_slice/stack_1:output:0@sequential_22/conv2d_transpose_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_22/conv2d_transpose_34/strided_slice?
)sequential_22/conv2d_transpose_34/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_22/conv2d_transpose_34/stack/1?
)sequential_22/conv2d_transpose_34/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_22/conv2d_transpose_34/stack/2?
)sequential_22/conv2d_transpose_34/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_22/conv2d_transpose_34/stack/3?
'sequential_22/conv2d_transpose_34/stackPack8sequential_22/conv2d_transpose_34/strided_slice:output:02sequential_22/conv2d_transpose_34/stack/1:output:02sequential_22/conv2d_transpose_34/stack/2:output:02sequential_22/conv2d_transpose_34/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_22/conv2d_transpose_34/stack?
7sequential_22/conv2d_transpose_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_22/conv2d_transpose_34/strided_slice_1/stack?
9sequential_22/conv2d_transpose_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_22/conv2d_transpose_34/strided_slice_1/stack_1?
9sequential_22/conv2d_transpose_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_22/conv2d_transpose_34/strided_slice_1/stack_2?
1sequential_22/conv2d_transpose_34/strided_slice_1StridedSlice0sequential_22/conv2d_transpose_34/stack:output:0@sequential_22/conv2d_transpose_34/strided_slice_1/stack:output:0Bsequential_22/conv2d_transpose_34/strided_slice_1/stack_1:output:0Bsequential_22/conv2d_transpose_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_22/conv2d_transpose_34/strided_slice_1?
Asequential_22/conv2d_transpose_34/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_22_conv2d_transpose_34_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_22/conv2d_transpose_34/conv2d_transpose/ReadVariableOp?
2sequential_22/conv2d_transpose_34/conv2d_transposeConv2DBackpropInput0sequential_22/conv2d_transpose_34/stack:output:0Isequential_22/conv2d_transpose_34/conv2d_transpose/ReadVariableOp:value:04sequential_22/leaky_re_lu_56/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
24
2sequential_22/conv2d_transpose_34/conv2d_transpose?
3sequential_22/batch_normalization_35/ReadVariableOpReadVariableOp<sequential_22_batch_normalization_35_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_22/batch_normalization_35/ReadVariableOp?
5sequential_22/batch_normalization_35/ReadVariableOp_1ReadVariableOp>sequential_22_batch_normalization_35_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_22/batch_normalization_35/ReadVariableOp_1?
Dsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_22_batch_normalization_35_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp?
Fsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_22_batch_normalization_35_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1?
5sequential_22/batch_normalization_35/FusedBatchNormV3FusedBatchNormV3;sequential_22/conv2d_transpose_34/conv2d_transpose:output:0;sequential_22/batch_normalization_35/ReadVariableOp:value:0=sequential_22/batch_normalization_35/ReadVariableOp_1:value:0Lsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_22/batch_normalization_35/FusedBatchNormV3?
&sequential_22/leaky_re_lu_57/LeakyRelu	LeakyRelu9sequential_22/batch_normalization_35/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>2(
&sequential_22/leaky_re_lu_57/LeakyRelu?
'sequential_22/conv2d_transpose_35/ShapeShape4sequential_22/leaky_re_lu_57/LeakyRelu:activations:0*
T0*
_output_shapes
:2)
'sequential_22/conv2d_transpose_35/Shape?
5sequential_22/conv2d_transpose_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_22/conv2d_transpose_35/strided_slice/stack?
7sequential_22/conv2d_transpose_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_22/conv2d_transpose_35/strided_slice/stack_1?
7sequential_22/conv2d_transpose_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_22/conv2d_transpose_35/strided_slice/stack_2?
/sequential_22/conv2d_transpose_35/strided_sliceStridedSlice0sequential_22/conv2d_transpose_35/Shape:output:0>sequential_22/conv2d_transpose_35/strided_slice/stack:output:0@sequential_22/conv2d_transpose_35/strided_slice/stack_1:output:0@sequential_22/conv2d_transpose_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_22/conv2d_transpose_35/strided_slice?
)sequential_22/conv2d_transpose_35/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_22/conv2d_transpose_35/stack/1?
)sequential_22/conv2d_transpose_35/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_22/conv2d_transpose_35/stack/2?
)sequential_22/conv2d_transpose_35/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_22/conv2d_transpose_35/stack/3?
'sequential_22/conv2d_transpose_35/stackPack8sequential_22/conv2d_transpose_35/strided_slice:output:02sequential_22/conv2d_transpose_35/stack/1:output:02sequential_22/conv2d_transpose_35/stack/2:output:02sequential_22/conv2d_transpose_35/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_22/conv2d_transpose_35/stack?
7sequential_22/conv2d_transpose_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_22/conv2d_transpose_35/strided_slice_1/stack?
9sequential_22/conv2d_transpose_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_22/conv2d_transpose_35/strided_slice_1/stack_1?
9sequential_22/conv2d_transpose_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_22/conv2d_transpose_35/strided_slice_1/stack_2?
1sequential_22/conv2d_transpose_35/strided_slice_1StridedSlice0sequential_22/conv2d_transpose_35/stack:output:0@sequential_22/conv2d_transpose_35/strided_slice_1/stack:output:0Bsequential_22/conv2d_transpose_35/strided_slice_1/stack_1:output:0Bsequential_22/conv2d_transpose_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_22/conv2d_transpose_35/strided_slice_1?
Asequential_22/conv2d_transpose_35/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_22_conv2d_transpose_35_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02C
Asequential_22/conv2d_transpose_35/conv2d_transpose/ReadVariableOp?
2sequential_22/conv2d_transpose_35/conv2d_transposeConv2DBackpropInput0sequential_22/conv2d_transpose_35/stack:output:0Isequential_22/conv2d_transpose_35/conv2d_transpose/ReadVariableOp:value:04sequential_22/leaky_re_lu_57/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
24
2sequential_22/conv2d_transpose_35/conv2d_transpose?
&sequential_22/conv2d_transpose_35/TanhTanh;sequential_22/conv2d_transpose_35/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????2(
&sequential_22/conv2d_transpose_35/Tanh?	
IdentityIdentity*sequential_22/conv2d_transpose_35/Tanh:y:0>^sequential_22/batch_normalization_33/batchnorm/ReadVariableOp@^sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_1@^sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_2B^sequential_22/batch_normalization_33/batchnorm/mul/ReadVariableOpE^sequential_22/batch_normalization_34/FusedBatchNormV3/ReadVariableOpG^sequential_22/batch_normalization_34/FusedBatchNormV3/ReadVariableOp_14^sequential_22/batch_normalization_34/ReadVariableOp6^sequential_22/batch_normalization_34/ReadVariableOp_1E^sequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOpG^sequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp_14^sequential_22/batch_normalization_35/ReadVariableOp6^sequential_22/batch_normalization_35/ReadVariableOp_1B^sequential_22/conv2d_transpose_33/conv2d_transpose/ReadVariableOpB^sequential_22/conv2d_transpose_34/conv2d_transpose/ReadVariableOpB^sequential_22/conv2d_transpose_35/conv2d_transpose/ReadVariableOp-^sequential_22/dense_22/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::2~
=sequential_22/batch_normalization_33/batchnorm/ReadVariableOp=sequential_22/batch_normalization_33/batchnorm/ReadVariableOp2?
?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_1?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_12?
?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_2?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_22?
Asequential_22/batch_normalization_33/batchnorm/mul/ReadVariableOpAsequential_22/batch_normalization_33/batchnorm/mul/ReadVariableOp2?
Dsequential_22/batch_normalization_34/FusedBatchNormV3/ReadVariableOpDsequential_22/batch_normalization_34/FusedBatchNormV3/ReadVariableOp2?
Fsequential_22/batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1Fsequential_22/batch_normalization_34/FusedBatchNormV3/ReadVariableOp_12j
3sequential_22/batch_normalization_34/ReadVariableOp3sequential_22/batch_normalization_34/ReadVariableOp2n
5sequential_22/batch_normalization_34/ReadVariableOp_15sequential_22/batch_normalization_34/ReadVariableOp_12?
Dsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOpDsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp2?
Fsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1Fsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp_12j
3sequential_22/batch_normalization_35/ReadVariableOp3sequential_22/batch_normalization_35/ReadVariableOp2n
5sequential_22/batch_normalization_35/ReadVariableOp_15sequential_22/batch_normalization_35/ReadVariableOp_12?
Asequential_22/conv2d_transpose_33/conv2d_transpose/ReadVariableOpAsequential_22/conv2d_transpose_33/conv2d_transpose/ReadVariableOp2?
Asequential_22/conv2d_transpose_34/conv2d_transpose/ReadVariableOpAsequential_22/conv2d_transpose_34/conv2d_transpose/ReadVariableOp2?
Asequential_22/conv2d_transpose_35/conv2d_transpose/ReadVariableOpAsequential_22/conv2d_transpose_35/conv2d_transpose/ReadVariableOp2\
,sequential_22/dense_22/MatMul/ReadVariableOp,sequential_22/dense_22/MatMul/ReadVariableOp:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_22_input
?
f
J__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_457554

inputs
identity
	LeakyRelu	LeakyReluinputs*B
_output_shapes0
.:,????????????????????????????*
alpha%???>2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?I
?

"__inference__traced_restore_458594
file_prefix$
 assignvariableop_dense_22_kernel3
/assignvariableop_1_batch_normalization_33_gamma2
.assignvariableop_2_batch_normalization_33_beta9
5assignvariableop_3_batch_normalization_33_moving_mean=
9assignvariableop_4_batch_normalization_33_moving_variance1
-assignvariableop_5_conv2d_transpose_33_kernel3
/assignvariableop_6_batch_normalization_34_gamma2
.assignvariableop_7_batch_normalization_34_beta9
5assignvariableop_8_batch_normalization_34_moving_mean=
9assignvariableop_9_batch_normalization_34_moving_variance2
.assignvariableop_10_conv2d_transpose_34_kernel4
0assignvariableop_11_batch_normalization_35_gamma3
/assignvariableop_12_batch_normalization_35_beta:
6assignvariableop_13_batch_normalization_35_moving_mean>
:assignvariableop_14_batch_normalization_35_moving_variance2
.assignvariableop_15_conv2d_transpose_35_kernel
identity_17??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_22_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp/assignvariableop_1_batch_normalization_33_gammaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_33_betaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp5assignvariableop_3_batch_normalization_33_moving_meanIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp9assignvariableop_4_batch_normalization_33_moving_varianceIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp-assignvariableop_5_conv2d_transpose_33_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp/assignvariableop_6_batch_normalization_34_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_batch_normalization_34_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp5assignvariableop_8_batch_normalization_34_moving_meanIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp9assignvariableop_9_batch_normalization_34_moving_varianceIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp.assignvariableop_10_conv2d_transpose_34_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp0assignvariableop_11_batch_normalization_35_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_batch_normalization_35_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp6assignvariableop_13_batch_normalization_35_moving_meanIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp:assignvariableop_14_batch_normalization_35_moving_varianceIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp.assignvariableop_15_conv2d_transpose_35_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16?
Identity_17IdentityIdentity_16:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_17"#
identity_17Identity_17:output:0*U
_input_shapesD
B: ::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
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
?;
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_457714

inputs
dense_22_457670!
batch_normalization_33_457673!
batch_normalization_33_457675!
batch_normalization_33_457677!
batch_normalization_33_457679
conv2d_transpose_33_457684!
batch_normalization_34_457687!
batch_normalization_34_457689!
batch_normalization_34_457691!
batch_normalization_34_457693
conv2d_transpose_34_457697!
batch_normalization_35_457700!
batch_normalization_35_457702!
batch_normalization_35_457704!
batch_normalization_35_457706
conv2d_transpose_35_457710
identity??.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?+conv2d_transpose_33/StatefulPartitionedCall?+conv2d_transpose_34/StatefulPartitionedCall?+conv2d_transpose_35/StatefulPartitionedCall? dense_22/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCallinputsdense_22_457670*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_4574292"
 dense_22/StatefulPartitionedCall?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0batch_normalization_33_457673batch_normalization_33_457675batch_normalization_33_457677batch_normalization_33_457679*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_45704820
.batch_normalization_33/StatefulPartitionedCall?
leaky_re_lu_55/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_55_layer_call_and_return_conditional_losses_4574812 
leaky_re_lu_55/PartitionedCall?
reshape_11/PartitionedCallPartitionedCall'leaky_re_lu_55/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_11_layer_call_and_return_conditional_losses_4575032
reshape_11/PartitionedCall?
+conv2d_transpose_33/StatefulPartitionedCallStatefulPartitionedCall#reshape_11/PartitionedCall:output:0conv2d_transpose_33_457684*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_4571232-
+conv2d_transpose_33/StatefulPartitionedCall?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_33/StatefulPartitionedCall:output:0batch_normalization_34_457687batch_normalization_34_457689batch_normalization_34_457691batch_normalization_34_457693*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_45719320
.batch_normalization_34/StatefulPartitionedCall?
leaky_re_lu_56/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_4575542 
leaky_re_lu_56/PartitionedCall?
+conv2d_transpose_34/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_56/PartitionedCall:output:0conv2d_transpose_34_457697*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_4572662-
+conv2d_transpose_34/StatefulPartitionedCall?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_34/StatefulPartitionedCall:output:0batch_normalization_35_457700batch_normalization_35_457702batch_normalization_35_457704batch_normalization_35_457706*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_45733620
.batch_normalization_35/StatefulPartitionedCall?
leaky_re_lu_57/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_57_layer_call_and_return_conditional_losses_4576052 
leaky_re_lu_57/PartitionedCall?
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_57/PartitionedCall:output:0conv2d_transpose_35_457710*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_4574102-
+conv2d_transpose_35/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_35/StatefulPartitionedCall:output:0/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall,^conv2d_transpose_33/StatefulPartitionedCall,^conv2d_transpose_34/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2Z
+conv2d_transpose_33/StatefulPartitionedCall+conv2d_transpose_33/StatefulPartitionedCall2Z
+conv2d_transpose_34/StatefulPartitionedCall+conv2d_transpose_34/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?!
?
O__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_457410

inputs,
(conv2d_transpose_readvariableop_resource
identity??conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
2
conv2d_transpose{
TanhTanhconv2d_transpose:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Tanh?
IdentityIdentityTanh:y:0 ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:+???????????????????????????@:2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_457081

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?b*
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
:?b2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?b2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?b2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????b2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?b*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?b2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?b*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?b2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????b2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????b::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_458337

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
G
+__inference_reshape_11_layer_call_fn_458317

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_11_layer_call_and_return_conditional_losses_4575032
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????b:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
.__inference_sequential_22_layer_call_fn_457833
dense_22_input
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

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_4577982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_22_input
? 
?
O__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_457123

inputs,
(conv2d_transpose_readvariableop_resource
identity??conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:,????????????????????????????:2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_35_layer_call_fn_458442

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
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_4573362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
D__inference_dense_22_layer_call_and_return_conditional_losses_458199

inputs"
matmul_readvariableop_resource
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?b*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b2
MatMul}
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????d:2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
K
/__inference_leaky_re_lu_57_layer_call_fn_458465

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_57_layer_call_and_return_conditional_losses_4576052
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?<
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_457798

inputs
dense_22_457754!
batch_normalization_33_457757!
batch_normalization_33_457759!
batch_normalization_33_457761!
batch_normalization_33_457763
conv2d_transpose_33_457768!
batch_normalization_34_457771!
batch_normalization_34_457773!
batch_normalization_34_457775!
batch_normalization_34_457777
conv2d_transpose_34_457781!
batch_normalization_35_457784!
batch_normalization_35_457786!
batch_normalization_35_457788!
batch_normalization_35_457790
conv2d_transpose_35_457794
identity??.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?+conv2d_transpose_33/StatefulPartitionedCall?+conv2d_transpose_34/StatefulPartitionedCall?+conv2d_transpose_35/StatefulPartitionedCall? dense_22/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCallinputsdense_22_457754*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_4574292"
 dense_22/StatefulPartitionedCall?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0batch_normalization_33_457757batch_normalization_33_457759batch_normalization_33_457761batch_normalization_33_457763*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_45708120
.batch_normalization_33/StatefulPartitionedCall?
leaky_re_lu_55/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_55_layer_call_and_return_conditional_losses_4574812 
leaky_re_lu_55/PartitionedCall?
reshape_11/PartitionedCallPartitionedCall'leaky_re_lu_55/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_11_layer_call_and_return_conditional_losses_4575032
reshape_11/PartitionedCall?
+conv2d_transpose_33/StatefulPartitionedCallStatefulPartitionedCall#reshape_11/PartitionedCall:output:0conv2d_transpose_33_457768*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_4571232-
+conv2d_transpose_33/StatefulPartitionedCall?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_33/StatefulPartitionedCall:output:0batch_normalization_34_457771batch_normalization_34_457773batch_normalization_34_457775batch_normalization_34_457777*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_45722420
.batch_normalization_34/StatefulPartitionedCall?
leaky_re_lu_56/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_4575542 
leaky_re_lu_56/PartitionedCall?
+conv2d_transpose_34/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_56/PartitionedCall:output:0conv2d_transpose_34_457781*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_4572662-
+conv2d_transpose_34/StatefulPartitionedCall?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_34/StatefulPartitionedCall:output:0batch_normalization_35_457784batch_normalization_35_457786batch_normalization_35_457788batch_normalization_35_457790*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_45736720
.batch_normalization_35/StatefulPartitionedCall?
leaky_re_lu_57/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_57_layer_call_and_return_conditional_losses_4576052 
leaky_re_lu_57/PartitionedCall?
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_57/PartitionedCall:output:0conv2d_transpose_35_457794*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_4574102-
+conv2d_transpose_35/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_35/StatefulPartitionedCall:output:0/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall,^conv2d_transpose_33/StatefulPartitionedCall,^conv2d_transpose_34/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2Z
+conv2d_transpose_33/StatefulPartitionedCall+conv2d_transpose_33/StatefulPartitionedCall2Z
+conv2d_transpose_34/StatefulPartitionedCall+conv2d_transpose_34/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
.__inference_sequential_22_layer_call_fn_458155

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

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*,
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_4577142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?0
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_458242

inputs
assignmovingavg_458217
assignmovingavg_1_458223)
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
:	?b*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?b2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????b2
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
:	?b*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?b*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?b*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/458217*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_458217*
_output_shapes	
:?b*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/458217*
_output_shapes	
:?b2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/458217*
_output_shapes	
:?b2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_458217AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/458217*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/458223*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_458223*
_output_shapes	
:?b*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/458223*
_output_shapes	
:?b2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/458223*
_output_shapes	
:?b2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_458223AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/458223*
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
:?b2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?b2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?b2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????b2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?b2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?b*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?b2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????b2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????b::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_55_layer_call_and_return_conditional_losses_457481

inputs
identitye
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????b*
alpha%???>2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????b:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_57_layer_call_and_return_conditional_losses_458460

inputs
identity~
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+???????????????????????????@*
alpha%???>2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_33_layer_call_fn_458275

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
:??????????b*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_4570482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????b::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
b
F__inference_reshape_11_layer_call_and_return_conditional_losses_458312

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
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????b:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?/
?
__inference__traced_save_458536
file_prefix.
*savev2_dense_22_kernel_read_readvariableop;
7savev2_batch_normalization_33_gamma_read_readvariableop:
6savev2_batch_normalization_33_beta_read_readvariableopA
=savev2_batch_normalization_33_moving_mean_read_readvariableopE
Asavev2_batch_normalization_33_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_33_kernel_read_readvariableop;
7savev2_batch_normalization_34_gamma_read_readvariableop:
6savev2_batch_normalization_34_beta_read_readvariableopA
=savev2_batch_normalization_34_moving_mean_read_readvariableopE
Asavev2_batch_normalization_34_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_34_kernel_read_readvariableop;
7savev2_batch_normalization_35_gamma_read_readvariableop:
6savev2_batch_normalization_35_beta_read_readvariableopA
=savev2_batch_normalization_35_moving_mean_read_readvariableopE
Asavev2_batch_normalization_35_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_35_kernel_read_readvariableop
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
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_22_kernel_read_readvariableop7savev2_batch_normalization_33_gamma_read_readvariableop6savev2_batch_normalization_33_beta_read_readvariableop=savev2_batch_normalization_33_moving_mean_read_readvariableopAsavev2_batch_normalization_33_moving_variance_read_readvariableop5savev2_conv2d_transpose_33_kernel_read_readvariableop7savev2_batch_normalization_34_gamma_read_readvariableop6savev2_batch_normalization_34_beta_read_readvariableop=savev2_batch_normalization_34_moving_mean_read_readvariableopAsavev2_batch_normalization_34_moving_variance_read_readvariableop5savev2_conv2d_transpose_34_kernel_read_readvariableop7savev2_batch_normalization_35_gamma_read_readvariableop6savev2_batch_normalization_35_beta_read_readvariableop=savev2_batch_normalization_35_moving_mean_read_readvariableopAsavev2_batch_normalization_35_moving_variance_read_readvariableop5savev2_conv2d_transpose_35_kernel_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
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
?: :	d?b:?b:?b:?b:?b:??:?:?:?:?:@?:@:@:@:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	d?b:!

_output_shapes	
:?b:!

_output_shapes	
:?b:!

_output_shapes	
:?b:!

_output_shapes	
:?b:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!	

_output_shapes	
:?:!


_output_shapes	
:?:-)
'
_output_shapes
:@?: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@:

_output_shapes
: 
?
?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_457193

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_57_layer_call_and_return_conditional_losses_457605

inputs
identity~
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+???????????????????????????@*
alpha%???>2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
b
F__inference_reshape_11_layer_call_and_return_conditional_losses_457503

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
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????b:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
z
4__inference_conv2d_transpose_34_layer_call_fn_457274

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_4572662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:,????????????????????????????:22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_dense_22_layer_call_and_return_conditional_losses_457429

inputs"
matmul_readvariableop_resource
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?b*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b2
MatMul}
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????d:2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_457336

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_458411

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
.__inference_sequential_22_layer_call_fn_458192

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

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_4577982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_457872
dense_22_input
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

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_4569522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_22_input
?
z
4__inference_conv2d_transpose_33_layer_call_fn_457131

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_4571232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:,????????????????????????????:22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_22_layer_call_fn_457749
dense_22_input
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

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*,
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_4577142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_22_input
?
?
7__inference_batch_normalization_33_layer_call_fn_458288

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
:??????????b*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_4570812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????b::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?<
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_457617
dense_22_input
dense_22_457438!
batch_normalization_33_457467!
batch_normalization_33_457469!
batch_normalization_33_457471!
batch_normalization_33_457473
conv2d_transpose_33_457511!
batch_normalization_34_457540!
batch_normalization_34_457542!
batch_normalization_34_457544!
batch_normalization_34_457546
conv2d_transpose_34_457562!
batch_normalization_35_457591!
batch_normalization_35_457593!
batch_normalization_35_457595!
batch_normalization_35_457597
conv2d_transpose_35_457613
identity??.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?+conv2d_transpose_33/StatefulPartitionedCall?+conv2d_transpose_34/StatefulPartitionedCall?+conv2d_transpose_35/StatefulPartitionedCall? dense_22/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCalldense_22_inputdense_22_457438*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_4574292"
 dense_22/StatefulPartitionedCall?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0batch_normalization_33_457467batch_normalization_33_457469batch_normalization_33_457471batch_normalization_33_457473*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_45704820
.batch_normalization_33/StatefulPartitionedCall?
leaky_re_lu_55/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_55_layer_call_and_return_conditional_losses_4574812 
leaky_re_lu_55/PartitionedCall?
reshape_11/PartitionedCallPartitionedCall'leaky_re_lu_55/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_11_layer_call_and_return_conditional_losses_4575032
reshape_11/PartitionedCall?
+conv2d_transpose_33/StatefulPartitionedCallStatefulPartitionedCall#reshape_11/PartitionedCall:output:0conv2d_transpose_33_457511*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_4571232-
+conv2d_transpose_33/StatefulPartitionedCall?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_33/StatefulPartitionedCall:output:0batch_normalization_34_457540batch_normalization_34_457542batch_normalization_34_457544batch_normalization_34_457546*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_45719320
.batch_normalization_34/StatefulPartitionedCall?
leaky_re_lu_56/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_4575542 
leaky_re_lu_56/PartitionedCall?
+conv2d_transpose_34/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_56/PartitionedCall:output:0conv2d_transpose_34_457562*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_4572662-
+conv2d_transpose_34/StatefulPartitionedCall?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_34/StatefulPartitionedCall:output:0batch_normalization_35_457591batch_normalization_35_457593batch_normalization_35_457595batch_normalization_35_457597*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_45733620
.batch_normalization_35/StatefulPartitionedCall?
leaky_re_lu_57/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_57_layer_call_and_return_conditional_losses_4576052 
leaky_re_lu_57/PartitionedCall?
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_57/PartitionedCall:output:0conv2d_transpose_35_457613*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_4574102-
+conv2d_transpose_35/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_35/StatefulPartitionedCall:output:0/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall,^conv2d_transpose_33/StatefulPartitionedCall,^conv2d_transpose_34/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2Z
+conv2d_transpose_33/StatefulPartitionedCall+conv2d_transpose_33/StatefulPartitionedCall2Z
+conv2d_transpose_34/StatefulPartitionedCall+conv2d_transpose_34/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_22_input
?
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_458429

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
I
dense_22_input7
 serving_default_dense_22_input:0?????????dO
conv2d_transpose_358
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?Y
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
	variables
regularization_losses
trainable_variables
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"?U
_tf_keras_sequential?T{"class_name": "Sequential", "name": "sequential_22", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_22", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_22_input"}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 12544, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_33", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_55", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Reshape", "config": {"name": "reshape_11", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 256]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_33", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_34", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_56", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_34", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_35", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_57", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_35", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_22", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_22_input"}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 12544, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_33", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_55", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Reshape", "config": {"name": "reshape_11", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 256]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_33", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_34", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_56", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_34", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_35", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_57", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_35", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}]}}}
?

kernel
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_22", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 12544, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?	
axis
	gamma
beta
moving_mean
moving_variance
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_33", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_33", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 12544}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12544]}}
?
	variables
 regularization_losses
!trainable_variables
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_55", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_55", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}
?
#	variables
$regularization_losses
%trainable_variables
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Reshape", "name": "reshape_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_11", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 256]}}}
?


'kernel
(	variables
)regularization_losses
*trainable_variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_33", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 256]}}
?	
,axis
	-gamma
.beta
/moving_mean
0moving_variance
1	variables
2regularization_losses
3trainable_variables
4	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_34", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_34", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 128]}}
?
5	variables
6regularization_losses
7trainable_variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_56", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_56", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}
?


9kernel
:	variables
;regularization_losses
<trainable_variables
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_34", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 128]}}
?	
>axis
	?gamma
@beta
Amoving_mean
Bmoving_variance
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_35", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_35", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
?
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_57", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_57", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}
?


Kkernel
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_35", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
?
0
1
2
3
4
'5
-6
.7
/8
09
910
?11
@12
A13
B14
K15"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
2
'3
-4
.5
96
?7
@8
K9"
trackable_list_wrapper
?
	variables
Pnon_trainable_variables
Qlayer_metrics
Rmetrics
Slayer_regularization_losses
regularization_losses

Tlayers
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
": 	d?b2dense_22/kernel
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
	variables
Unon_trainable_variables
Vlayer_metrics
Wmetrics
Xlayer_regularization_losses
regularization_losses

Ylayers
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?b2batch_normalization_33/gamma
*:(?b2batch_normalization_33/beta
3:1?b (2"batch_normalization_33/moving_mean
7:5?b (2&batch_normalization_33/moving_variance
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
	variables
Znon_trainable_variables
[layer_metrics
\metrics
]layer_regularization_losses
regularization_losses

^layers
trainable_variables
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
	variables
_non_trainable_variables
`layer_metrics
ametrics
blayer_regularization_losses
 regularization_losses

clayers
!trainable_variables
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
#	variables
dnon_trainable_variables
elayer_metrics
fmetrics
glayer_regularization_losses
$regularization_losses

hlayers
%trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
6:4??2conv2d_transpose_33/kernel
'
'0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
'0"
trackable_list_wrapper
?
(	variables
inon_trainable_variables
jlayer_metrics
kmetrics
llayer_regularization_losses
)regularization_losses

mlayers
*trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_34/gamma
*:(?2batch_normalization_34/beta
3:1? (2"batch_normalization_34/moving_mean
7:5? (2&batch_normalization_34/moving_variance
<
-0
.1
/2
03"
trackable_list_wrapper
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
?
1	variables
nnon_trainable_variables
olayer_metrics
pmetrics
qlayer_regularization_losses
2regularization_losses

rlayers
3trainable_variables
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
5	variables
snon_trainable_variables
tlayer_metrics
umetrics
vlayer_regularization_losses
6regularization_losses

wlayers
7trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5:3@?2conv2d_transpose_34/kernel
'
90"
trackable_list_wrapper
 "
trackable_list_wrapper
'
90"
trackable_list_wrapper
?
:	variables
xnon_trainable_variables
ylayer_metrics
zmetrics
{layer_regularization_losses
;regularization_losses

|layers
<trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_35/gamma
):'@2batch_normalization_35/beta
2:0@ (2"batch_normalization_35/moving_mean
6:4@ (2&batch_normalization_35/moving_variance
<
?0
@1
A2
B3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
?
C	variables
}non_trainable_variables
~layer_metrics
metrics
 ?layer_regularization_losses
Dregularization_losses
?layers
Etrainable_variables
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
G	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Hregularization_losses
?layers
Itrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
4:2@2conv2d_transpose_35/kernel
'
K0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
K0"
trackable_list_wrapper
?
L	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Mregularization_losses
?layers
Ntrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
J
0
1
/2
03
A4
B5"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
n
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
9
10"
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
0
1"
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
.
/0
01"
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
A0
B1"
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
?2?
.__inference_sequential_22_layer_call_fn_457749
.__inference_sequential_22_layer_call_fn_458155
.__inference_sequential_22_layer_call_fn_458192
.__inference_sequential_22_layer_call_fn_457833?
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
I__inference_sequential_22_layer_call_and_return_conditional_losses_457617
I__inference_sequential_22_layer_call_and_return_conditional_losses_458005
I__inference_sequential_22_layer_call_and_return_conditional_losses_458118
I__inference_sequential_22_layer_call_and_return_conditional_losses_457664?
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
!__inference__wrapped_model_456952?
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
annotations? *-?*
(?%
dense_22_input?????????d
?2?
)__inference_dense_22_layer_call_fn_458206?
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
D__inference_dense_22_layer_call_and_return_conditional_losses_458199?
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
7__inference_batch_normalization_33_layer_call_fn_458275
7__inference_batch_normalization_33_layer_call_fn_458288?
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
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_458242
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_458262?
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
/__inference_leaky_re_lu_55_layer_call_fn_458298?
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
J__inference_leaky_re_lu_55_layer_call_and_return_conditional_losses_458293?
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
+__inference_reshape_11_layer_call_fn_458317?
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
F__inference_reshape_11_layer_call_and_return_conditional_losses_458312?
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
4__inference_conv2d_transpose_33_layer_call_fn_457131?
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
annotations? *8?5
3?0,????????????????????????????
?2?
O__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_457123?
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
annotations? *8?5
3?0,????????????????????????????
?2?
7__inference_batch_normalization_34_layer_call_fn_458368
7__inference_batch_normalization_34_layer_call_fn_458381?
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
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_458355
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_458337?
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
/__inference_leaky_re_lu_56_layer_call_fn_458391?
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
J__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_458386?
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
4__inference_conv2d_transpose_34_layer_call_fn_457274?
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
annotations? *8?5
3?0,????????????????????????????
?2?
O__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_457266?
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
annotations? *8?5
3?0,????????????????????????????
?2?
7__inference_batch_normalization_35_layer_call_fn_458455
7__inference_batch_normalization_35_layer_call_fn_458442?
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
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_458429
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_458411?
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
/__inference_leaky_re_lu_57_layer_call_fn_458465?
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
J__inference_leaky_re_lu_57_layer_call_and_return_conditional_losses_458460?
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
4__inference_conv2d_transpose_35_layer_call_fn_457418?
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
annotations? *7?4
2?/+???????????????????????????@
?2?
O__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_457410?
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
annotations? *7?4
2?/+???????????????????????????@
?B?
$__inference_signature_wrapper_457872dense_22_input"?
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
 ?
!__inference__wrapped_model_456952?'-./09?@ABK7?4
-?*
(?%
dense_22_input?????????d
? "Q?N
L
conv2d_transpose_355?2
conv2d_transpose_35??????????
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_458242d4?1
*?'
!?
inputs??????????b
p
? "&?#
?
0??????????b
? ?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_458262d4?1
*?'
!?
inputs??????????b
p 
? "&?#
?
0??????????b
? ?
7__inference_batch_normalization_33_layer_call_fn_458275W4?1
*?'
!?
inputs??????????b
p
? "???????????b?
7__inference_batch_normalization_33_layer_call_fn_458288W4?1
*?'
!?
inputs??????????b
p 
? "???????????b?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_458337?-./0N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_458355?-./0N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
7__inference_batch_normalization_34_layer_call_fn_458368?-./0N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
7__inference_batch_normalization_34_layer_call_fn_458381?-./0N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_458411??@ABM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_458429??@ABM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
7__inference_batch_normalization_35_layer_call_fn_458442??@ABM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
7__inference_batch_normalization_35_layer_call_fn_458455??@ABM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
O__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_457123?'J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
4__inference_conv2d_transpose_33_layer_call_fn_457131?'J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
O__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_457266?9J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
4__inference_conv2d_transpose_34_layer_call_fn_457274?9J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
O__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_457410?KI?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
4__inference_conv2d_transpose_35_layer_call_fn_457418?KI?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
D__inference_dense_22_layer_call_and_return_conditional_losses_458199\/?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????b
? |
)__inference_dense_22_layer_call_fn_458206O/?,
%?"
 ?
inputs?????????d
? "???????????b?
J__inference_leaky_re_lu_55_layer_call_and_return_conditional_losses_458293Z0?-
&?#
!?
inputs??????????b
? "&?#
?
0??????????b
? ?
/__inference_leaky_re_lu_55_layer_call_fn_458298M0?-
&?#
!?
inputs??????????b
? "???????????b?
J__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_458386?J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
/__inference_leaky_re_lu_56_layer_call_fn_458391?J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
J__inference_leaky_re_lu_57_layer_call_and_return_conditional_losses_458460?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
/__inference_leaky_re_lu_57_layer_call_fn_458465I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
F__inference_reshape_11_layer_call_and_return_conditional_losses_458312b0?-
&?#
!?
inputs??????????b
? ".?+
$?!
0??????????
? ?
+__inference_reshape_11_layer_call_fn_458317U0?-
&?#
!?
inputs??????????b
? "!????????????
I__inference_sequential_22_layer_call_and_return_conditional_losses_457617?'-./09?@ABK??<
5?2
(?%
dense_22_input?????????d
p

 
? "??<
5?2
0+???????????????????????????
? ?
I__inference_sequential_22_layer_call_and_return_conditional_losses_457664?'-./09?@ABK??<
5?2
(?%
dense_22_input?????????d
p 

 
? "??<
5?2
0+???????????????????????????
? ?
I__inference_sequential_22_layer_call_and_return_conditional_losses_458005z'-./09?@ABK7?4
-?*
 ?
inputs?????????d
p

 
? "-?*
#? 
0?????????
? ?
I__inference_sequential_22_layer_call_and_return_conditional_losses_458118z'-./09?@ABK7?4
-?*
 ?
inputs?????????d
p 

 
? "-?*
#? 
0?????????
? ?
.__inference_sequential_22_layer_call_fn_457749?'-./09?@ABK??<
5?2
(?%
dense_22_input?????????d
p

 
? "2?/+????????????????????????????
.__inference_sequential_22_layer_call_fn_457833?'-./09?@ABK??<
5?2
(?%
dense_22_input?????????d
p 

 
? "2?/+????????????????????????????
.__inference_sequential_22_layer_call_fn_458155'-./09?@ABK7?4
-?*
 ?
inputs?????????d
p

 
? "2?/+????????????????????????????
.__inference_sequential_22_layer_call_fn_458192'-./09?@ABK7?4
-?*
 ?
inputs?????????d
p 

 
? "2?/+????????????????????????????
$__inference_signature_wrapper_457872?'-./09?@ABKI?F
? 
??<
:
dense_22_input(?%
dense_22_input?????????d"Q?N
L
conv2d_transpose_355?2
conv2d_transpose_35?????????