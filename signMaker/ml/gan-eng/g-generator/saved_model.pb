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
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8ђ
{
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?b* 
shared_namedense_12/kernel
t
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes
:	d?b*
dtype0
?
batch_normalization_18/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?b*-
shared_namebatch_normalization_18/gamma
?
0batch_normalization_18/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_18/gamma*
_output_shapes	
:?b*
dtype0
?
batch_normalization_18/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?b*,
shared_namebatch_normalization_18/beta
?
/batch_normalization_18/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_18/beta*
_output_shapes	
:?b*
dtype0
?
"batch_normalization_18/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?b*3
shared_name$"batch_normalization_18/moving_mean
?
6batch_normalization_18/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_18/moving_mean*
_output_shapes	
:?b*
dtype0
?
&batch_normalization_18/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?b*7
shared_name(&batch_normalization_18/moving_variance
?
:batch_normalization_18/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_18/moving_variance*
_output_shapes	
:?b*
dtype0
?
conv2d_transpose_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*+
shared_nameconv2d_transpose_18/kernel
?
.conv2d_transpose_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_18/kernel*(
_output_shapes
:??*
dtype0
?
batch_normalization_19/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_19/gamma
?
0batch_normalization_19/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_19/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_19/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_19/beta
?
/batch_normalization_19/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_19/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_19/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_19/moving_mean
?
6batch_normalization_19/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_19/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_19/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_19/moving_variance
?
:batch_normalization_19/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_19/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*+
shared_nameconv2d_transpose_19/kernel
?
.conv2d_transpose_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_19/kernel*'
_output_shapes
:@?*
dtype0
?
batch_normalization_20/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_20/gamma
?
0batch_normalization_20/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_20/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_20/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_20/beta
?
/batch_normalization_20/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_20/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_20/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_20/moving_mean
?
6batch_normalization_20/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_20/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_20/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_20/moving_variance
?
:batch_normalization_20/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_20/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_transpose_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameconv2d_transpose_20/kernel
?
.conv2d_transpose_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_20/kernel*&
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
trainable_variables
	variables
regularization_losses
	keras_api

signatures
^

kernel
trainable_variables
	variables
regularization_losses
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
 	variables
!regularization_losses
"	keras_api
R
#trainable_variables
$	variables
%regularization_losses
&	keras_api
^

'kernel
(trainable_variables
)	variables
*regularization_losses
+	keras_api
?
,axis
	-gamma
.beta
/moving_mean
0moving_variance
1trainable_variables
2	variables
3regularization_losses
4	keras_api
R
5trainable_variables
6	variables
7regularization_losses
8	keras_api
^

9kernel
:trainable_variables
;	variables
<regularization_losses
=	keras_api
?
>axis
	?gamma
@beta
Amoving_mean
Bmoving_variance
Ctrainable_variables
D	variables
Eregularization_losses
F	keras_api
R
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
^

Kkernel
Ltrainable_variables
M	variables
Nregularization_losses
O	keras_api
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
?

Players
Qlayer_metrics
Rnon_trainable_variables
trainable_variables
	variables
Smetrics
Tlayer_regularization_losses
regularization_losses
 
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?

Ulayers
Vlayer_metrics
Wnon_trainable_variables
trainable_variables
	variables
Xmetrics
Ylayer_regularization_losses
regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_18/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_18/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_18/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_18/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
2
3
 
?

Zlayers
[layer_metrics
\non_trainable_variables
trainable_variables
	variables
]metrics
^layer_regularization_losses
regularization_losses
 
 
 
?

_layers
`layer_metrics
anon_trainable_variables
trainable_variables
 	variables
bmetrics
clayer_regularization_losses
!regularization_losses
 
 
 
?

dlayers
elayer_metrics
fnon_trainable_variables
#trainable_variables
$	variables
gmetrics
hlayer_regularization_losses
%regularization_losses
fd
VARIABLE_VALUEconv2d_transpose_18/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE

'0

'0
 
?

ilayers
jlayer_metrics
knon_trainable_variables
(trainable_variables
)	variables
lmetrics
mlayer_regularization_losses
*regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_19/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_19/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_19/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_19/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

-0
.1

-0
.1
/2
03
 
?

nlayers
olayer_metrics
pnon_trainable_variables
1trainable_variables
2	variables
qmetrics
rlayer_regularization_losses
3regularization_losses
 
 
 
?

slayers
tlayer_metrics
unon_trainable_variables
5trainable_variables
6	variables
vmetrics
wlayer_regularization_losses
7regularization_losses
fd
VARIABLE_VALUEconv2d_transpose_19/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE

90

90
 
?

xlayers
ylayer_metrics
znon_trainable_variables
:trainable_variables
;	variables
{metrics
|layer_regularization_losses
<regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_20/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_20/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_20/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_20/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

?0
@1

?0
@1
A2
B3
 
?

}layers
~layer_metrics
non_trainable_variables
Ctrainable_variables
D	variables
?metrics
 ?layer_regularization_losses
Eregularization_losses
 
 
 
?
?layers
?layer_metrics
?non_trainable_variables
Gtrainable_variables
H	variables
?metrics
 ?layer_regularization_losses
Iregularization_losses
fd
VARIABLE_VALUEconv2d_transpose_20/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE

K0

K0
 
?
?layers
?layer_metrics
?non_trainable_variables
Ltrainable_variables
M	variables
?metrics
 ?layer_regularization_losses
Nregularization_losses
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
 
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
?
serving_default_dense_12_inputPlaceholder*'
_output_shapes
:?????????d*
dtype0*
shape:?????????d
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_12_inputdense_12/kernel&batch_normalization_18/moving_variancebatch_normalization_18/gamma"batch_normalization_18/moving_meanbatch_normalization_18/betaconv2d_transpose_18/kernelbatch_normalization_19/gammabatch_normalization_19/beta"batch_normalization_19/moving_mean&batch_normalization_19/moving_varianceconv2d_transpose_19/kernelbatch_normalization_20/gammabatch_normalization_20/beta"batch_normalization_20/moving_mean&batch_normalization_20/moving_varianceconv2d_transpose_20/kernel*
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
$__inference_signature_wrapper_269859
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_12/kernel/Read/ReadVariableOp0batch_normalization_18/gamma/Read/ReadVariableOp/batch_normalization_18/beta/Read/ReadVariableOp6batch_normalization_18/moving_mean/Read/ReadVariableOp:batch_normalization_18/moving_variance/Read/ReadVariableOp.conv2d_transpose_18/kernel/Read/ReadVariableOp0batch_normalization_19/gamma/Read/ReadVariableOp/batch_normalization_19/beta/Read/ReadVariableOp6batch_normalization_19/moving_mean/Read/ReadVariableOp:batch_normalization_19/moving_variance/Read/ReadVariableOp.conv2d_transpose_19/kernel/Read/ReadVariableOp0batch_normalization_20/gamma/Read/ReadVariableOp/batch_normalization_20/beta/Read/ReadVariableOp6batch_normalization_20/moving_mean/Read/ReadVariableOp:batch_normalization_20/moving_variance/Read/ReadVariableOp.conv2d_transpose_20/kernel/Read/ReadVariableOpConst*
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
__inference__traced_save_270523
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_12/kernelbatch_normalization_18/gammabatch_normalization_18/beta"batch_normalization_18/moving_mean&batch_normalization_18/moving_varianceconv2d_transpose_18/kernelbatch_normalization_19/gammabatch_normalization_19/beta"batch_normalization_19/moving_mean&batch_normalization_19/moving_varianceconv2d_transpose_19/kernelbatch_normalization_20/gammabatch_normalization_20/beta"batch_normalization_20/moving_mean&batch_normalization_20/moving_varianceconv2d_transpose_20/kernel*
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
"__inference__traced_restore_270581??
?
K
/__inference_leaky_re_lu_31_layer_call_fn_270378

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
J__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_2695412
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
?
?
D__inference_dense_12_layer_call_and_return_conditional_losses_270186

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
? 
?
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_269110

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
??
?
!__inference__wrapped_model_268939
dense_12_input9
5sequential_12_dense_12_matmul_readvariableop_resourceJ
Fsequential_12_batch_normalization_18_batchnorm_readvariableop_resourceN
Jsequential_12_batch_normalization_18_batchnorm_mul_readvariableop_resourceL
Hsequential_12_batch_normalization_18_batchnorm_readvariableop_1_resourceL
Hsequential_12_batch_normalization_18_batchnorm_readvariableop_2_resourceN
Jsequential_12_conv2d_transpose_18_conv2d_transpose_readvariableop_resource@
<sequential_12_batch_normalization_19_readvariableop_resourceB
>sequential_12_batch_normalization_19_readvariableop_1_resourceQ
Msequential_12_batch_normalization_19_fusedbatchnormv3_readvariableop_resourceS
Osequential_12_batch_normalization_19_fusedbatchnormv3_readvariableop_1_resourceN
Jsequential_12_conv2d_transpose_19_conv2d_transpose_readvariableop_resource@
<sequential_12_batch_normalization_20_readvariableop_resourceB
>sequential_12_batch_normalization_20_readvariableop_1_resourceQ
Msequential_12_batch_normalization_20_fusedbatchnormv3_readvariableop_resourceS
Osequential_12_batch_normalization_20_fusedbatchnormv3_readvariableop_1_resourceN
Jsequential_12_conv2d_transpose_20_conv2d_transpose_readvariableop_resource
identity??=sequential_12/batch_normalization_18/batchnorm/ReadVariableOp??sequential_12/batch_normalization_18/batchnorm/ReadVariableOp_1??sequential_12/batch_normalization_18/batchnorm/ReadVariableOp_2?Asequential_12/batch_normalization_18/batchnorm/mul/ReadVariableOp?Dsequential_12/batch_normalization_19/FusedBatchNormV3/ReadVariableOp?Fsequential_12/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1?3sequential_12/batch_normalization_19/ReadVariableOp?5sequential_12/batch_normalization_19/ReadVariableOp_1?Dsequential_12/batch_normalization_20/FusedBatchNormV3/ReadVariableOp?Fsequential_12/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1?3sequential_12/batch_normalization_20/ReadVariableOp?5sequential_12/batch_normalization_20/ReadVariableOp_1?Asequential_12/conv2d_transpose_18/conv2d_transpose/ReadVariableOp?Asequential_12/conv2d_transpose_19/conv2d_transpose/ReadVariableOp?Asequential_12/conv2d_transpose_20/conv2d_transpose/ReadVariableOp?,sequential_12/dense_12/MatMul/ReadVariableOp?
,sequential_12/dense_12/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_12_matmul_readvariableop_resource*
_output_shapes
:	d?b*
dtype02.
,sequential_12/dense_12/MatMul/ReadVariableOp?
sequential_12/dense_12/MatMulMatMuldense_12_input4sequential_12/dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b2
sequential_12/dense_12/MatMul?
=sequential_12/batch_normalization_18/batchnorm/ReadVariableOpReadVariableOpFsequential_12_batch_normalization_18_batchnorm_readvariableop_resource*
_output_shapes	
:?b*
dtype02?
=sequential_12/batch_normalization_18/batchnorm/ReadVariableOp?
4sequential_12/batch_normalization_18/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_12/batch_normalization_18/batchnorm/add/y?
2sequential_12/batch_normalization_18/batchnorm/addAddV2Esequential_12/batch_normalization_18/batchnorm/ReadVariableOp:value:0=sequential_12/batch_normalization_18/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?b24
2sequential_12/batch_normalization_18/batchnorm/add?
4sequential_12/batch_normalization_18/batchnorm/RsqrtRsqrt6sequential_12/batch_normalization_18/batchnorm/add:z:0*
T0*
_output_shapes	
:?b26
4sequential_12/batch_normalization_18/batchnorm/Rsqrt?
Asequential_12/batch_normalization_18/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_12_batch_normalization_18_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype02C
Asequential_12/batch_normalization_18/batchnorm/mul/ReadVariableOp?
2sequential_12/batch_normalization_18/batchnorm/mulMul8sequential_12/batch_normalization_18/batchnorm/Rsqrt:y:0Isequential_12/batch_normalization_18/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?b24
2sequential_12/batch_normalization_18/batchnorm/mul?
4sequential_12/batch_normalization_18/batchnorm/mul_1Mul'sequential_12/dense_12/MatMul:product:06sequential_12/batch_normalization_18/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????b26
4sequential_12/batch_normalization_18/batchnorm/mul_1?
?sequential_12/batch_normalization_18/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_12_batch_normalization_18_batchnorm_readvariableop_1_resource*
_output_shapes	
:?b*
dtype02A
?sequential_12/batch_normalization_18/batchnorm/ReadVariableOp_1?
4sequential_12/batch_normalization_18/batchnorm/mul_2MulGsequential_12/batch_normalization_18/batchnorm/ReadVariableOp_1:value:06sequential_12/batch_normalization_18/batchnorm/mul:z:0*
T0*
_output_shapes	
:?b26
4sequential_12/batch_normalization_18/batchnorm/mul_2?
?sequential_12/batch_normalization_18/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_12_batch_normalization_18_batchnorm_readvariableop_2_resource*
_output_shapes	
:?b*
dtype02A
?sequential_12/batch_normalization_18/batchnorm/ReadVariableOp_2?
2sequential_12/batch_normalization_18/batchnorm/subSubGsequential_12/batch_normalization_18/batchnorm/ReadVariableOp_2:value:08sequential_12/batch_normalization_18/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?b24
2sequential_12/batch_normalization_18/batchnorm/sub?
4sequential_12/batch_normalization_18/batchnorm/add_1AddV28sequential_12/batch_normalization_18/batchnorm/mul_1:z:06sequential_12/batch_normalization_18/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????b26
4sequential_12/batch_normalization_18/batchnorm/add_1?
&sequential_12/leaky_re_lu_30/LeakyRelu	LeakyRelu8sequential_12/batch_normalization_18/batchnorm/add_1:z:0*(
_output_shapes
:??????????b*
alpha%???>2(
&sequential_12/leaky_re_lu_30/LeakyRelu?
sequential_12/reshape_6/ShapeShape4sequential_12/leaky_re_lu_30/LeakyRelu:activations:0*
T0*
_output_shapes
:2
sequential_12/reshape_6/Shape?
+sequential_12/reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_12/reshape_6/strided_slice/stack?
-sequential_12/reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_12/reshape_6/strided_slice/stack_1?
-sequential_12/reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_12/reshape_6/strided_slice/stack_2?
%sequential_12/reshape_6/strided_sliceStridedSlice&sequential_12/reshape_6/Shape:output:04sequential_12/reshape_6/strided_slice/stack:output:06sequential_12/reshape_6/strided_slice/stack_1:output:06sequential_12/reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_12/reshape_6/strided_slice?
'sequential_12/reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_12/reshape_6/Reshape/shape/1?
'sequential_12/reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_12/reshape_6/Reshape/shape/2?
'sequential_12/reshape_6/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_12/reshape_6/Reshape/shape/3?
%sequential_12/reshape_6/Reshape/shapePack.sequential_12/reshape_6/strided_slice:output:00sequential_12/reshape_6/Reshape/shape/1:output:00sequential_12/reshape_6/Reshape/shape/2:output:00sequential_12/reshape_6/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_12/reshape_6/Reshape/shape?
sequential_12/reshape_6/ReshapeReshape4sequential_12/leaky_re_lu_30/LeakyRelu:activations:0.sequential_12/reshape_6/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2!
sequential_12/reshape_6/Reshape?
'sequential_12/conv2d_transpose_18/ShapeShape(sequential_12/reshape_6/Reshape:output:0*
T0*
_output_shapes
:2)
'sequential_12/conv2d_transpose_18/Shape?
5sequential_12/conv2d_transpose_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_12/conv2d_transpose_18/strided_slice/stack?
7sequential_12/conv2d_transpose_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_12/conv2d_transpose_18/strided_slice/stack_1?
7sequential_12/conv2d_transpose_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_12/conv2d_transpose_18/strided_slice/stack_2?
/sequential_12/conv2d_transpose_18/strided_sliceStridedSlice0sequential_12/conv2d_transpose_18/Shape:output:0>sequential_12/conv2d_transpose_18/strided_slice/stack:output:0@sequential_12/conv2d_transpose_18/strided_slice/stack_1:output:0@sequential_12/conv2d_transpose_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_12/conv2d_transpose_18/strided_slice?
)sequential_12/conv2d_transpose_18/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_12/conv2d_transpose_18/stack/1?
)sequential_12/conv2d_transpose_18/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_12/conv2d_transpose_18/stack/2?
)sequential_12/conv2d_transpose_18/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_12/conv2d_transpose_18/stack/3?
'sequential_12/conv2d_transpose_18/stackPack8sequential_12/conv2d_transpose_18/strided_slice:output:02sequential_12/conv2d_transpose_18/stack/1:output:02sequential_12/conv2d_transpose_18/stack/2:output:02sequential_12/conv2d_transpose_18/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_12/conv2d_transpose_18/stack?
7sequential_12/conv2d_transpose_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_12/conv2d_transpose_18/strided_slice_1/stack?
9sequential_12/conv2d_transpose_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_12/conv2d_transpose_18/strided_slice_1/stack_1?
9sequential_12/conv2d_transpose_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_12/conv2d_transpose_18/strided_slice_1/stack_2?
1sequential_12/conv2d_transpose_18/strided_slice_1StridedSlice0sequential_12/conv2d_transpose_18/stack:output:0@sequential_12/conv2d_transpose_18/strided_slice_1/stack:output:0Bsequential_12/conv2d_transpose_18/strided_slice_1/stack_1:output:0Bsequential_12/conv2d_transpose_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_12/conv2d_transpose_18/strided_slice_1?
Asequential_12/conv2d_transpose_18/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_12_conv2d_transpose_18_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_12/conv2d_transpose_18/conv2d_transpose/ReadVariableOp?
2sequential_12/conv2d_transpose_18/conv2d_transposeConv2DBackpropInput0sequential_12/conv2d_transpose_18/stack:output:0Isequential_12/conv2d_transpose_18/conv2d_transpose/ReadVariableOp:value:0(sequential_12/reshape_6/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
24
2sequential_12/conv2d_transpose_18/conv2d_transpose?
3sequential_12/batch_normalization_19/ReadVariableOpReadVariableOp<sequential_12_batch_normalization_19_readvariableop_resource*
_output_shapes	
:?*
dtype025
3sequential_12/batch_normalization_19/ReadVariableOp?
5sequential_12/batch_normalization_19/ReadVariableOp_1ReadVariableOp>sequential_12_batch_normalization_19_readvariableop_1_resource*
_output_shapes	
:?*
dtype027
5sequential_12/batch_normalization_19/ReadVariableOp_1?
Dsequential_12/batch_normalization_19/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_12_batch_normalization_19_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dsequential_12/batch_normalization_19/FusedBatchNormV3/ReadVariableOp?
Fsequential_12/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_12_batch_normalization_19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02H
Fsequential_12/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1?
5sequential_12/batch_normalization_19/FusedBatchNormV3FusedBatchNormV3;sequential_12/conv2d_transpose_18/conv2d_transpose:output:0;sequential_12/batch_normalization_19/ReadVariableOp:value:0=sequential_12/batch_normalization_19/ReadVariableOp_1:value:0Lsequential_12/batch_normalization_19/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_12/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 27
5sequential_12/batch_normalization_19/FusedBatchNormV3?
&sequential_12/leaky_re_lu_31/LeakyRelu	LeakyRelu9sequential_12/batch_normalization_19/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2(
&sequential_12/leaky_re_lu_31/LeakyRelu?
'sequential_12/conv2d_transpose_19/ShapeShape4sequential_12/leaky_re_lu_31/LeakyRelu:activations:0*
T0*
_output_shapes
:2)
'sequential_12/conv2d_transpose_19/Shape?
5sequential_12/conv2d_transpose_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_12/conv2d_transpose_19/strided_slice/stack?
7sequential_12/conv2d_transpose_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_12/conv2d_transpose_19/strided_slice/stack_1?
7sequential_12/conv2d_transpose_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_12/conv2d_transpose_19/strided_slice/stack_2?
/sequential_12/conv2d_transpose_19/strided_sliceStridedSlice0sequential_12/conv2d_transpose_19/Shape:output:0>sequential_12/conv2d_transpose_19/strided_slice/stack:output:0@sequential_12/conv2d_transpose_19/strided_slice/stack_1:output:0@sequential_12/conv2d_transpose_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_12/conv2d_transpose_19/strided_slice?
)sequential_12/conv2d_transpose_19/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_12/conv2d_transpose_19/stack/1?
)sequential_12/conv2d_transpose_19/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_12/conv2d_transpose_19/stack/2?
)sequential_12/conv2d_transpose_19/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_12/conv2d_transpose_19/stack/3?
'sequential_12/conv2d_transpose_19/stackPack8sequential_12/conv2d_transpose_19/strided_slice:output:02sequential_12/conv2d_transpose_19/stack/1:output:02sequential_12/conv2d_transpose_19/stack/2:output:02sequential_12/conv2d_transpose_19/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_12/conv2d_transpose_19/stack?
7sequential_12/conv2d_transpose_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_12/conv2d_transpose_19/strided_slice_1/stack?
9sequential_12/conv2d_transpose_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_12/conv2d_transpose_19/strided_slice_1/stack_1?
9sequential_12/conv2d_transpose_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_12/conv2d_transpose_19/strided_slice_1/stack_2?
1sequential_12/conv2d_transpose_19/strided_slice_1StridedSlice0sequential_12/conv2d_transpose_19/stack:output:0@sequential_12/conv2d_transpose_19/strided_slice_1/stack:output:0Bsequential_12/conv2d_transpose_19/strided_slice_1/stack_1:output:0Bsequential_12/conv2d_transpose_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_12/conv2d_transpose_19/strided_slice_1?
Asequential_12/conv2d_transpose_19/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_12_conv2d_transpose_19_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_12/conv2d_transpose_19/conv2d_transpose/ReadVariableOp?
2sequential_12/conv2d_transpose_19/conv2d_transposeConv2DBackpropInput0sequential_12/conv2d_transpose_19/stack:output:0Isequential_12/conv2d_transpose_19/conv2d_transpose/ReadVariableOp:value:04sequential_12/leaky_re_lu_31/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
24
2sequential_12/conv2d_transpose_19/conv2d_transpose?
3sequential_12/batch_normalization_20/ReadVariableOpReadVariableOp<sequential_12_batch_normalization_20_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_12/batch_normalization_20/ReadVariableOp?
5sequential_12/batch_normalization_20/ReadVariableOp_1ReadVariableOp>sequential_12_batch_normalization_20_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_12/batch_normalization_20/ReadVariableOp_1?
Dsequential_12/batch_normalization_20/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_12_batch_normalization_20_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_12/batch_normalization_20/FusedBatchNormV3/ReadVariableOp?
Fsequential_12/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_12_batch_normalization_20_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_12/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1?
5sequential_12/batch_normalization_20/FusedBatchNormV3FusedBatchNormV3;sequential_12/conv2d_transpose_19/conv2d_transpose:output:0;sequential_12/batch_normalization_20/ReadVariableOp:value:0=sequential_12/batch_normalization_20/ReadVariableOp_1:value:0Lsequential_12/batch_normalization_20/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_12/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_12/batch_normalization_20/FusedBatchNormV3?
&sequential_12/leaky_re_lu_32/LeakyRelu	LeakyRelu9sequential_12/batch_normalization_20/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>2(
&sequential_12/leaky_re_lu_32/LeakyRelu?
'sequential_12/conv2d_transpose_20/ShapeShape4sequential_12/leaky_re_lu_32/LeakyRelu:activations:0*
T0*
_output_shapes
:2)
'sequential_12/conv2d_transpose_20/Shape?
5sequential_12/conv2d_transpose_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_12/conv2d_transpose_20/strided_slice/stack?
7sequential_12/conv2d_transpose_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_12/conv2d_transpose_20/strided_slice/stack_1?
7sequential_12/conv2d_transpose_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_12/conv2d_transpose_20/strided_slice/stack_2?
/sequential_12/conv2d_transpose_20/strided_sliceStridedSlice0sequential_12/conv2d_transpose_20/Shape:output:0>sequential_12/conv2d_transpose_20/strided_slice/stack:output:0@sequential_12/conv2d_transpose_20/strided_slice/stack_1:output:0@sequential_12/conv2d_transpose_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_12/conv2d_transpose_20/strided_slice?
)sequential_12/conv2d_transpose_20/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_12/conv2d_transpose_20/stack/1?
)sequential_12/conv2d_transpose_20/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_12/conv2d_transpose_20/stack/2?
)sequential_12/conv2d_transpose_20/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_12/conv2d_transpose_20/stack/3?
'sequential_12/conv2d_transpose_20/stackPack8sequential_12/conv2d_transpose_20/strided_slice:output:02sequential_12/conv2d_transpose_20/stack/1:output:02sequential_12/conv2d_transpose_20/stack/2:output:02sequential_12/conv2d_transpose_20/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_12/conv2d_transpose_20/stack?
7sequential_12/conv2d_transpose_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_12/conv2d_transpose_20/strided_slice_1/stack?
9sequential_12/conv2d_transpose_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_12/conv2d_transpose_20/strided_slice_1/stack_1?
9sequential_12/conv2d_transpose_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_12/conv2d_transpose_20/strided_slice_1/stack_2?
1sequential_12/conv2d_transpose_20/strided_slice_1StridedSlice0sequential_12/conv2d_transpose_20/stack:output:0@sequential_12/conv2d_transpose_20/strided_slice_1/stack:output:0Bsequential_12/conv2d_transpose_20/strided_slice_1/stack_1:output:0Bsequential_12/conv2d_transpose_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_12/conv2d_transpose_20/strided_slice_1?
Asequential_12/conv2d_transpose_20/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_12_conv2d_transpose_20_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02C
Asequential_12/conv2d_transpose_20/conv2d_transpose/ReadVariableOp?
2sequential_12/conv2d_transpose_20/conv2d_transposeConv2DBackpropInput0sequential_12/conv2d_transpose_20/stack:output:0Isequential_12/conv2d_transpose_20/conv2d_transpose/ReadVariableOp:value:04sequential_12/leaky_re_lu_32/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
24
2sequential_12/conv2d_transpose_20/conv2d_transpose?
&sequential_12/conv2d_transpose_20/TanhTanh;sequential_12/conv2d_transpose_20/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????2(
&sequential_12/conv2d_transpose_20/Tanh?	
IdentityIdentity*sequential_12/conv2d_transpose_20/Tanh:y:0>^sequential_12/batch_normalization_18/batchnorm/ReadVariableOp@^sequential_12/batch_normalization_18/batchnorm/ReadVariableOp_1@^sequential_12/batch_normalization_18/batchnorm/ReadVariableOp_2B^sequential_12/batch_normalization_18/batchnorm/mul/ReadVariableOpE^sequential_12/batch_normalization_19/FusedBatchNormV3/ReadVariableOpG^sequential_12/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_14^sequential_12/batch_normalization_19/ReadVariableOp6^sequential_12/batch_normalization_19/ReadVariableOp_1E^sequential_12/batch_normalization_20/FusedBatchNormV3/ReadVariableOpG^sequential_12/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_14^sequential_12/batch_normalization_20/ReadVariableOp6^sequential_12/batch_normalization_20/ReadVariableOp_1B^sequential_12/conv2d_transpose_18/conv2d_transpose/ReadVariableOpB^sequential_12/conv2d_transpose_19/conv2d_transpose/ReadVariableOpB^sequential_12/conv2d_transpose_20/conv2d_transpose/ReadVariableOp-^sequential_12/dense_12/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::2~
=sequential_12/batch_normalization_18/batchnorm/ReadVariableOp=sequential_12/batch_normalization_18/batchnorm/ReadVariableOp2?
?sequential_12/batch_normalization_18/batchnorm/ReadVariableOp_1?sequential_12/batch_normalization_18/batchnorm/ReadVariableOp_12?
?sequential_12/batch_normalization_18/batchnorm/ReadVariableOp_2?sequential_12/batch_normalization_18/batchnorm/ReadVariableOp_22?
Asequential_12/batch_normalization_18/batchnorm/mul/ReadVariableOpAsequential_12/batch_normalization_18/batchnorm/mul/ReadVariableOp2?
Dsequential_12/batch_normalization_19/FusedBatchNormV3/ReadVariableOpDsequential_12/batch_normalization_19/FusedBatchNormV3/ReadVariableOp2?
Fsequential_12/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1Fsequential_12/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_12j
3sequential_12/batch_normalization_19/ReadVariableOp3sequential_12/batch_normalization_19/ReadVariableOp2n
5sequential_12/batch_normalization_19/ReadVariableOp_15sequential_12/batch_normalization_19/ReadVariableOp_12?
Dsequential_12/batch_normalization_20/FusedBatchNormV3/ReadVariableOpDsequential_12/batch_normalization_20/FusedBatchNormV3/ReadVariableOp2?
Fsequential_12/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1Fsequential_12/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_12j
3sequential_12/batch_normalization_20/ReadVariableOp3sequential_12/batch_normalization_20/ReadVariableOp2n
5sequential_12/batch_normalization_20/ReadVariableOp_15sequential_12/batch_normalization_20/ReadVariableOp_12?
Asequential_12/conv2d_transpose_18/conv2d_transpose/ReadVariableOpAsequential_12/conv2d_transpose_18/conv2d_transpose/ReadVariableOp2?
Asequential_12/conv2d_transpose_19/conv2d_transpose/ReadVariableOpAsequential_12/conv2d_transpose_19/conv2d_transpose/ReadVariableOp2?
Asequential_12/conv2d_transpose_20/conv2d_transpose/ReadVariableOpAsequential_12/conv2d_transpose_20/conv2d_transpose/ReadVariableOp2\
,sequential_12/dense_12/MatMul/ReadVariableOp,sequential_12/dense_12/MatMul/ReadVariableOp:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_12_input
?
?
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_270416

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
?
?
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_270249

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
?
f
J__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_270447

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

?
.__inference_sequential_12_layer_call_fn_269736
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

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_12_layer_call_and_return_conditional_losses_2697012
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
_user_specified_namedense_12_input
?
f
J__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_269541

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
?0
?
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_269035

inputs
assignmovingavg_269010
assignmovingavg_1_269016)
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
loc:@AssignMovingAvg/269010*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_269010*
_output_shapes	
:?b*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/269010*
_output_shapes	
:?b2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/269010*
_output_shapes	
:?b2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_269010AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/269010*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/269016*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_269016*
_output_shapes	
:?b*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/269016*
_output_shapes	
:?b2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/269016*
_output_shapes	
:?b2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_269016AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/269016*
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
?
?
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_270324

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
?
?
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_270398

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
?;
?
I__inference_sequential_12_layer_call_and_return_conditional_losses_269701

inputs
dense_12_269657!
batch_normalization_18_269660!
batch_normalization_18_269662!
batch_normalization_18_269664!
batch_normalization_18_269666
conv2d_transpose_18_269671!
batch_normalization_19_269674!
batch_normalization_19_269676!
batch_normalization_19_269678!
batch_normalization_19_269680
conv2d_transpose_19_269684!
batch_normalization_20_269687!
batch_normalization_20_269689!
batch_normalization_20_269691!
batch_normalization_20_269693
conv2d_transpose_20_269697
identity??.batch_normalization_18/StatefulPartitionedCall?.batch_normalization_19/StatefulPartitionedCall?.batch_normalization_20/StatefulPartitionedCall?+conv2d_transpose_18/StatefulPartitionedCall?+conv2d_transpose_19/StatefulPartitionedCall?+conv2d_transpose_20/StatefulPartitionedCall? dense_12/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCallinputsdense_12_269657*
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
D__inference_dense_12_layer_call_and_return_conditional_losses_2694162"
 dense_12/StatefulPartitionedCall?
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0batch_normalization_18_269660batch_normalization_18_269662batch_normalization_18_269664batch_normalization_18_269666*
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
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_26903520
.batch_normalization_18/StatefulPartitionedCall?
leaky_re_lu_30/PartitionedCallPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0*
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
J__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_2694682 
leaky_re_lu_30/PartitionedCall?
reshape_6/PartitionedCallPartitionedCall'leaky_re_lu_30/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_reshape_6_layer_call_and_return_conditional_losses_2694902
reshape_6/PartitionedCall?
+conv2d_transpose_18/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0conv2d_transpose_18_269671*
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
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_2691102-
+conv2d_transpose_18/StatefulPartitionedCall?
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_18/StatefulPartitionedCall:output:0batch_normalization_19_269674batch_normalization_19_269676batch_normalization_19_269678batch_normalization_19_269680*
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
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_26918020
.batch_normalization_19/StatefulPartitionedCall?
leaky_re_lu_31/PartitionedCallPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0*
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
J__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_2695412 
leaky_re_lu_31/PartitionedCall?
+conv2d_transpose_19/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_31/PartitionedCall:output:0conv2d_transpose_19_269684*
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
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_2692532-
+conv2d_transpose_19/StatefulPartitionedCall?
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_19/StatefulPartitionedCall:output:0batch_normalization_20_269687batch_normalization_20_269689batch_normalization_20_269691batch_normalization_20_269693*
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
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_26932320
.batch_normalization_20/StatefulPartitionedCall?
leaky_re_lu_32/PartitionedCallPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0*
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
J__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_2695922 
leaky_re_lu_32/PartitionedCall?
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_32/PartitionedCall:output:0conv2d_transpose_20_269697*
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
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_2693972-
+conv2d_transpose_20/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_20/StatefulPartitionedCall:output:0/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall/^batch_normalization_20/StatefulPartitionedCall,^conv2d_transpose_18/StatefulPartitionedCall,^conv2d_transpose_19/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2Z
+conv2d_transpose_18/StatefulPartitionedCall+conv2d_transpose_18/StatefulPartitionedCall2Z
+conv2d_transpose_19/StatefulPartitionedCall+conv2d_transpose_19/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_269068

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
?;
?
I__inference_sequential_12_layer_call_and_return_conditional_losses_269785

inputs
dense_12_269741!
batch_normalization_18_269744!
batch_normalization_18_269746!
batch_normalization_18_269748!
batch_normalization_18_269750
conv2d_transpose_18_269755!
batch_normalization_19_269758!
batch_normalization_19_269760!
batch_normalization_19_269762!
batch_normalization_19_269764
conv2d_transpose_19_269768!
batch_normalization_20_269771!
batch_normalization_20_269773!
batch_normalization_20_269775!
batch_normalization_20_269777
conv2d_transpose_20_269781
identity??.batch_normalization_18/StatefulPartitionedCall?.batch_normalization_19/StatefulPartitionedCall?.batch_normalization_20/StatefulPartitionedCall?+conv2d_transpose_18/StatefulPartitionedCall?+conv2d_transpose_19/StatefulPartitionedCall?+conv2d_transpose_20/StatefulPartitionedCall? dense_12/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCallinputsdense_12_269741*
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
D__inference_dense_12_layer_call_and_return_conditional_losses_2694162"
 dense_12/StatefulPartitionedCall?
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0batch_normalization_18_269744batch_normalization_18_269746batch_normalization_18_269748batch_normalization_18_269750*
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
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_26906820
.batch_normalization_18/StatefulPartitionedCall?
leaky_re_lu_30/PartitionedCallPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0*
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
J__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_2694682 
leaky_re_lu_30/PartitionedCall?
reshape_6/PartitionedCallPartitionedCall'leaky_re_lu_30/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_reshape_6_layer_call_and_return_conditional_losses_2694902
reshape_6/PartitionedCall?
+conv2d_transpose_18/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0conv2d_transpose_18_269755*
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
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_2691102-
+conv2d_transpose_18/StatefulPartitionedCall?
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_18/StatefulPartitionedCall:output:0batch_normalization_19_269758batch_normalization_19_269760batch_normalization_19_269762batch_normalization_19_269764*
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
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_26921120
.batch_normalization_19/StatefulPartitionedCall?
leaky_re_lu_31/PartitionedCallPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0*
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
J__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_2695412 
leaky_re_lu_31/PartitionedCall?
+conv2d_transpose_19/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_31/PartitionedCall:output:0conv2d_transpose_19_269768*
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
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_2692532-
+conv2d_transpose_19/StatefulPartitionedCall?
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_19/StatefulPartitionedCall:output:0batch_normalization_20_269771batch_normalization_20_269773batch_normalization_20_269775batch_normalization_20_269777*
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
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_26935420
.batch_normalization_20/StatefulPartitionedCall?
leaky_re_lu_32/PartitionedCallPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0*
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
J__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_2695922 
leaky_re_lu_32/PartitionedCall?
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_32/PartitionedCall:output:0conv2d_transpose_20_269781*
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
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_2693972-
+conv2d_transpose_20/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_20/StatefulPartitionedCall:output:0/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall/^batch_normalization_20/StatefulPartitionedCall,^conv2d_transpose_18/StatefulPartitionedCall,^conv2d_transpose_19/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2Z
+conv2d_transpose_18/StatefulPartitionedCall+conv2d_transpose_18/StatefulPartitionedCall2Z
+conv2d_transpose_19/StatefulPartitionedCall+conv2d_transpose_19/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
D__inference_dense_12_layer_call_and_return_conditional_losses_269416

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
?
?
7__inference_batch_normalization_18_layer_call_fn_270275

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
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_2690682
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
?/
?
__inference__traced_save_270523
file_prefix.
*savev2_dense_12_kernel_read_readvariableop;
7savev2_batch_normalization_18_gamma_read_readvariableop:
6savev2_batch_normalization_18_beta_read_readvariableopA
=savev2_batch_normalization_18_moving_mean_read_readvariableopE
Asavev2_batch_normalization_18_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_18_kernel_read_readvariableop;
7savev2_batch_normalization_19_gamma_read_readvariableop:
6savev2_batch_normalization_19_beta_read_readvariableopA
=savev2_batch_normalization_19_moving_mean_read_readvariableopE
Asavev2_batch_normalization_19_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_19_kernel_read_readvariableop;
7savev2_batch_normalization_20_gamma_read_readvariableop:
6savev2_batch_normalization_20_beta_read_readvariableopA
=savev2_batch_normalization_20_moving_mean_read_readvariableopE
Asavev2_batch_normalization_20_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_20_kernel_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_12_kernel_read_readvariableop7savev2_batch_normalization_18_gamma_read_readvariableop6savev2_batch_normalization_18_beta_read_readvariableop=savev2_batch_normalization_18_moving_mean_read_readvariableopAsavev2_batch_normalization_18_moving_variance_read_readvariableop5savev2_conv2d_transpose_18_kernel_read_readvariableop7savev2_batch_normalization_19_gamma_read_readvariableop6savev2_batch_normalization_19_beta_read_readvariableop=savev2_batch_normalization_19_moving_mean_read_readvariableopAsavev2_batch_normalization_19_moving_variance_read_readvariableop5savev2_conv2d_transpose_19_kernel_read_readvariableop7savev2_batch_normalization_20_gamma_read_readvariableop6savev2_batch_normalization_20_beta_read_readvariableop=savev2_batch_normalization_20_moving_mean_read_readvariableopAsavev2_batch_normalization_20_moving_variance_read_readvariableop5savev2_conv2d_transpose_20_kernel_read_readvariableopsavev2_const"/device:CPU:0*
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
?
f
J__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_270280

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
?
?
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_269354

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
7__inference_batch_normalization_19_layer_call_fn_270355

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
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_2691802
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
?
?
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_269323

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
a
E__inference_reshape_6_layer_call_and_return_conditional_losses_269490

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
?

?
.__inference_sequential_12_layer_call_fn_270142

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
I__inference_sequential_12_layer_call_and_return_conditional_losses_2697012
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
??
?
I__inference_sequential_12_layer_call_and_return_conditional_losses_269992

inputs+
'dense_12_matmul_readvariableop_resource1
-batch_normalization_18_assignmovingavg_2698733
/batch_normalization_18_assignmovingavg_1_269879@
<batch_normalization_18_batchnorm_mul_readvariableop_resource<
8batch_normalization_18_batchnorm_readvariableop_resource@
<conv2d_transpose_18_conv2d_transpose_readvariableop_resource2
.batch_normalization_19_readvariableop_resource4
0batch_normalization_19_readvariableop_1_resourceC
?batch_normalization_19_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource@
<conv2d_transpose_19_conv2d_transpose_readvariableop_resource2
.batch_normalization_20_readvariableop_resource4
0batch_normalization_20_readvariableop_1_resourceC
?batch_normalization_20_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_20_fusedbatchnormv3_readvariableop_1_resource@
<conv2d_transpose_20_conv2d_transpose_readvariableop_resource
identity??:batch_normalization_18/AssignMovingAvg/AssignSubVariableOp?5batch_normalization_18/AssignMovingAvg/ReadVariableOp?<batch_normalization_18/AssignMovingAvg_1/AssignSubVariableOp?7batch_normalization_18/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_18/batchnorm/ReadVariableOp?3batch_normalization_18/batchnorm/mul/ReadVariableOp?%batch_normalization_19/AssignNewValue?'batch_normalization_19/AssignNewValue_1?6batch_normalization_19/FusedBatchNormV3/ReadVariableOp?8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_19/ReadVariableOp?'batch_normalization_19/ReadVariableOp_1?%batch_normalization_20/AssignNewValue?'batch_normalization_20/AssignNewValue_1?6batch_normalization_20/FusedBatchNormV3/ReadVariableOp?8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_20/ReadVariableOp?'batch_normalization_20/ReadVariableOp_1?3conv2d_transpose_18/conv2d_transpose/ReadVariableOp?3conv2d_transpose_19/conv2d_transpose/ReadVariableOp?3conv2d_transpose_20/conv2d_transpose/ReadVariableOp?dense_12/MatMul/ReadVariableOp?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	d?b*
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMulinputs&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b2
dense_12/MatMul?
5batch_normalization_18/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_18/moments/mean/reduction_indices?
#batch_normalization_18/moments/meanMeandense_12/MatMul:product:0>batch_normalization_18/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?b*
	keep_dims(2%
#batch_normalization_18/moments/mean?
+batch_normalization_18/moments/StopGradientStopGradient,batch_normalization_18/moments/mean:output:0*
T0*
_output_shapes
:	?b2-
+batch_normalization_18/moments/StopGradient?
0batch_normalization_18/moments/SquaredDifferenceSquaredDifferencedense_12/MatMul:product:04batch_normalization_18/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????b22
0batch_normalization_18/moments/SquaredDifference?
9batch_normalization_18/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_18/moments/variance/reduction_indices?
'batch_normalization_18/moments/varianceMean4batch_normalization_18/moments/SquaredDifference:z:0Bbatch_normalization_18/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?b*
	keep_dims(2)
'batch_normalization_18/moments/variance?
&batch_normalization_18/moments/SqueezeSqueeze,batch_normalization_18/moments/mean:output:0*
T0*
_output_shapes	
:?b*
squeeze_dims
 2(
&batch_normalization_18/moments/Squeeze?
(batch_normalization_18/moments/Squeeze_1Squeeze0batch_normalization_18/moments/variance:output:0*
T0*
_output_shapes	
:?b*
squeeze_dims
 2*
(batch_normalization_18/moments/Squeeze_1?
,batch_normalization_18/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_18/AssignMovingAvg/269873*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_18/AssignMovingAvg/decay?
5batch_normalization_18/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_18_assignmovingavg_269873*
_output_shapes	
:?b*
dtype027
5batch_normalization_18/AssignMovingAvg/ReadVariableOp?
*batch_normalization_18/AssignMovingAvg/subSub=batch_normalization_18/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_18/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_18/AssignMovingAvg/269873*
_output_shapes	
:?b2,
*batch_normalization_18/AssignMovingAvg/sub?
*batch_normalization_18/AssignMovingAvg/mulMul.batch_normalization_18/AssignMovingAvg/sub:z:05batch_normalization_18/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_18/AssignMovingAvg/269873*
_output_shapes	
:?b2,
*batch_normalization_18/AssignMovingAvg/mul?
:batch_normalization_18/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_18_assignmovingavg_269873.batch_normalization_18/AssignMovingAvg/mul:z:06^batch_normalization_18/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_18/AssignMovingAvg/269873*
_output_shapes
 *
dtype02<
:batch_normalization_18/AssignMovingAvg/AssignSubVariableOp?
.batch_normalization_18/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_18/AssignMovingAvg_1/269879*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_18/AssignMovingAvg_1/decay?
7batch_normalization_18/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_18_assignmovingavg_1_269879*
_output_shapes	
:?b*
dtype029
7batch_normalization_18/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_18/AssignMovingAvg_1/subSub?batch_normalization_18/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_18/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_18/AssignMovingAvg_1/269879*
_output_shapes	
:?b2.
,batch_normalization_18/AssignMovingAvg_1/sub?
,batch_normalization_18/AssignMovingAvg_1/mulMul0batch_normalization_18/AssignMovingAvg_1/sub:z:07batch_normalization_18/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_18/AssignMovingAvg_1/269879*
_output_shapes	
:?b2.
,batch_normalization_18/AssignMovingAvg_1/mul?
<batch_normalization_18/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_18_assignmovingavg_1_2698790batch_normalization_18/AssignMovingAvg_1/mul:z:08^batch_normalization_18/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_18/AssignMovingAvg_1/269879*
_output_shapes
 *
dtype02>
<batch_normalization_18/AssignMovingAvg_1/AssignSubVariableOp?
&batch_normalization_18/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_18/batchnorm/add/y?
$batch_normalization_18/batchnorm/addAddV21batch_normalization_18/moments/Squeeze_1:output:0/batch_normalization_18/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?b2&
$batch_normalization_18/batchnorm/add?
&batch_normalization_18/batchnorm/RsqrtRsqrt(batch_normalization_18/batchnorm/add:z:0*
T0*
_output_shapes	
:?b2(
&batch_normalization_18/batchnorm/Rsqrt?
3batch_normalization_18/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_18_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype025
3batch_normalization_18/batchnorm/mul/ReadVariableOp?
$batch_normalization_18/batchnorm/mulMul*batch_normalization_18/batchnorm/Rsqrt:y:0;batch_normalization_18/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?b2&
$batch_normalization_18/batchnorm/mul?
&batch_normalization_18/batchnorm/mul_1Muldense_12/MatMul:product:0(batch_normalization_18/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????b2(
&batch_normalization_18/batchnorm/mul_1?
&batch_normalization_18/batchnorm/mul_2Mul/batch_normalization_18/moments/Squeeze:output:0(batch_normalization_18/batchnorm/mul:z:0*
T0*
_output_shapes	
:?b2(
&batch_normalization_18/batchnorm/mul_2?
/batch_normalization_18/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_18_batchnorm_readvariableop_resource*
_output_shapes	
:?b*
dtype021
/batch_normalization_18/batchnorm/ReadVariableOp?
$batch_normalization_18/batchnorm/subSub7batch_normalization_18/batchnorm/ReadVariableOp:value:0*batch_normalization_18/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?b2&
$batch_normalization_18/batchnorm/sub?
&batch_normalization_18/batchnorm/add_1AddV2*batch_normalization_18/batchnorm/mul_1:z:0(batch_normalization_18/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????b2(
&batch_normalization_18/batchnorm/add_1?
leaky_re_lu_30/LeakyRelu	LeakyRelu*batch_normalization_18/batchnorm/add_1:z:0*(
_output_shapes
:??????????b*
alpha%???>2
leaky_re_lu_30/LeakyRelux
reshape_6/ShapeShape&leaky_re_lu_30/LeakyRelu:activations:0*
T0*
_output_shapes
:2
reshape_6/Shape?
reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_6/strided_slice/stack?
reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_1?
reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_2?
reshape_6/strided_sliceStridedSlicereshape_6/Shape:output:0&reshape_6/strided_slice/stack:output:0(reshape_6/strided_slice/stack_1:output:0(reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_6/strided_slicex
reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/1x
reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/2y
reshape_6/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_6/Reshape/shape/3?
reshape_6/Reshape/shapePack reshape_6/strided_slice:output:0"reshape_6/Reshape/shape/1:output:0"reshape_6/Reshape/shape/2:output:0"reshape_6/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_6/Reshape/shape?
reshape_6/ReshapeReshape&leaky_re_lu_30/LeakyRelu:activations:0 reshape_6/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_6/Reshape?
conv2d_transpose_18/ShapeShapereshape_6/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_18/Shape?
'conv2d_transpose_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_18/strided_slice/stack?
)conv2d_transpose_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_18/strided_slice/stack_1?
)conv2d_transpose_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_18/strided_slice/stack_2?
!conv2d_transpose_18/strided_sliceStridedSlice"conv2d_transpose_18/Shape:output:00conv2d_transpose_18/strided_slice/stack:output:02conv2d_transpose_18/strided_slice/stack_1:output:02conv2d_transpose_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_18/strided_slice|
conv2d_transpose_18/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_18/stack/1|
conv2d_transpose_18/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_18/stack/2}
conv2d_transpose_18/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_18/stack/3?
conv2d_transpose_18/stackPack*conv2d_transpose_18/strided_slice:output:0$conv2d_transpose_18/stack/1:output:0$conv2d_transpose_18/stack/2:output:0$conv2d_transpose_18/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_18/stack?
)conv2d_transpose_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_18/strided_slice_1/stack?
+conv2d_transpose_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_18/strided_slice_1/stack_1?
+conv2d_transpose_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_18/strided_slice_1/stack_2?
#conv2d_transpose_18/strided_slice_1StridedSlice"conv2d_transpose_18/stack:output:02conv2d_transpose_18/strided_slice_1/stack:output:04conv2d_transpose_18/strided_slice_1/stack_1:output:04conv2d_transpose_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_18/strided_slice_1?
3conv2d_transpose_18/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_18_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_18/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_18/conv2d_transposeConv2DBackpropInput"conv2d_transpose_18/stack:output:0;conv2d_transpose_18/conv2d_transpose/ReadVariableOp:value:0reshape_6/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$conv2d_transpose_18/conv2d_transpose?
%batch_normalization_19/ReadVariableOpReadVariableOp.batch_normalization_19_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_19/ReadVariableOp?
'batch_normalization_19/ReadVariableOp_1ReadVariableOp0batch_normalization_19_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_19/ReadVariableOp_1?
6batch_normalization_19/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_19_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_19/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_19/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_18/conv2d_transpose:output:0-batch_normalization_19/ReadVariableOp:value:0/batch_normalization_19/ReadVariableOp_1:value:0>batch_normalization_19/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_19/FusedBatchNormV3?
%batch_normalization_19/AssignNewValueAssignVariableOp?batch_normalization_19_fusedbatchnormv3_readvariableop_resource4batch_normalization_19/FusedBatchNormV3:batch_mean:07^batch_normalization_19/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*R
_classH
FDloc:@batch_normalization_19/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_19/AssignNewValue?
'batch_normalization_19/AssignNewValue_1AssignVariableOpAbatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_19/FusedBatchNormV3:batch_variance:09^batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*T
_classJ
HFloc:@batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_19/AssignNewValue_1?
leaky_re_lu_31/LeakyRelu	LeakyRelu+batch_normalization_19/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_31/LeakyRelu?
conv2d_transpose_19/ShapeShape&leaky_re_lu_31/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_19/Shape?
'conv2d_transpose_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_19/strided_slice/stack?
)conv2d_transpose_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_19/strided_slice/stack_1?
)conv2d_transpose_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_19/strided_slice/stack_2?
!conv2d_transpose_19/strided_sliceStridedSlice"conv2d_transpose_19/Shape:output:00conv2d_transpose_19/strided_slice/stack:output:02conv2d_transpose_19/strided_slice/stack_1:output:02conv2d_transpose_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_19/strided_slice|
conv2d_transpose_19/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_19/stack/1|
conv2d_transpose_19/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_19/stack/2|
conv2d_transpose_19/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_19/stack/3?
conv2d_transpose_19/stackPack*conv2d_transpose_19/strided_slice:output:0$conv2d_transpose_19/stack/1:output:0$conv2d_transpose_19/stack/2:output:0$conv2d_transpose_19/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_19/stack?
)conv2d_transpose_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_19/strided_slice_1/stack?
+conv2d_transpose_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_19/strided_slice_1/stack_1?
+conv2d_transpose_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_19/strided_slice_1/stack_2?
#conv2d_transpose_19/strided_slice_1StridedSlice"conv2d_transpose_19/stack:output:02conv2d_transpose_19/strided_slice_1/stack:output:04conv2d_transpose_19/strided_slice_1/stack_1:output:04conv2d_transpose_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_19/strided_slice_1?
3conv2d_transpose_19/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_19_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_19/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_19/conv2d_transposeConv2DBackpropInput"conv2d_transpose_19/stack:output:0;conv2d_transpose_19/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_31/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2&
$conv2d_transpose_19/conv2d_transpose?
%batch_normalization_20/ReadVariableOpReadVariableOp.batch_normalization_20_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_20/ReadVariableOp?
'batch_normalization_20/ReadVariableOp_1ReadVariableOp0batch_normalization_20_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_20/ReadVariableOp_1?
6batch_normalization_20/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_20_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_20/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_20_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_20/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_19/conv2d_transpose:output:0-batch_normalization_20/ReadVariableOp:value:0/batch_normalization_20/ReadVariableOp_1:value:0>batch_normalization_20/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_20/FusedBatchNormV3?
%batch_normalization_20/AssignNewValueAssignVariableOp?batch_normalization_20_fusedbatchnormv3_readvariableop_resource4batch_normalization_20/FusedBatchNormV3:batch_mean:07^batch_normalization_20/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*R
_classH
FDloc:@batch_normalization_20/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_20/AssignNewValue?
'batch_normalization_20/AssignNewValue_1AssignVariableOpAbatch_normalization_20_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_20/FusedBatchNormV3:batch_variance:09^batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*T
_classJ
HFloc:@batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_20/AssignNewValue_1?
leaky_re_lu_32/LeakyRelu	LeakyRelu+batch_normalization_20/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>2
leaky_re_lu_32/LeakyRelu?
conv2d_transpose_20/ShapeShape&leaky_re_lu_32/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_20/Shape?
'conv2d_transpose_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_20/strided_slice/stack?
)conv2d_transpose_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_20/strided_slice/stack_1?
)conv2d_transpose_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_20/strided_slice/stack_2?
!conv2d_transpose_20/strided_sliceStridedSlice"conv2d_transpose_20/Shape:output:00conv2d_transpose_20/strided_slice/stack:output:02conv2d_transpose_20/strided_slice/stack_1:output:02conv2d_transpose_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_20/strided_slice|
conv2d_transpose_20/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_20/stack/1|
conv2d_transpose_20/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_20/stack/2|
conv2d_transpose_20/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_20/stack/3?
conv2d_transpose_20/stackPack*conv2d_transpose_20/strided_slice:output:0$conv2d_transpose_20/stack/1:output:0$conv2d_transpose_20/stack/2:output:0$conv2d_transpose_20/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_20/stack?
)conv2d_transpose_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_20/strided_slice_1/stack?
+conv2d_transpose_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_20/strided_slice_1/stack_1?
+conv2d_transpose_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_20/strided_slice_1/stack_2?
#conv2d_transpose_20/strided_slice_1StridedSlice"conv2d_transpose_20/stack:output:02conv2d_transpose_20/strided_slice_1/stack:output:04conv2d_transpose_20/strided_slice_1/stack_1:output:04conv2d_transpose_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_20/strided_slice_1?
3conv2d_transpose_20/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_20_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_transpose_20/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_20/conv2d_transposeConv2DBackpropInput"conv2d_transpose_20/stack:output:0;conv2d_transpose_20/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_32/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2&
$conv2d_transpose_20/conv2d_transpose?
conv2d_transpose_20/TanhTanh-conv2d_transpose_20/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????2
conv2d_transpose_20/Tanh?	
IdentityIdentityconv2d_transpose_20/Tanh:y:0;^batch_normalization_18/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_18/AssignMovingAvg/ReadVariableOp=^batch_normalization_18/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_18/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_18/batchnorm/ReadVariableOp4^batch_normalization_18/batchnorm/mul/ReadVariableOp&^batch_normalization_19/AssignNewValue(^batch_normalization_19/AssignNewValue_17^batch_normalization_19/FusedBatchNormV3/ReadVariableOp9^batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_19/ReadVariableOp(^batch_normalization_19/ReadVariableOp_1&^batch_normalization_20/AssignNewValue(^batch_normalization_20/AssignNewValue_17^batch_normalization_20/FusedBatchNormV3/ReadVariableOp9^batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_20/ReadVariableOp(^batch_normalization_20/ReadVariableOp_14^conv2d_transpose_18/conv2d_transpose/ReadVariableOp4^conv2d_transpose_19/conv2d_transpose/ReadVariableOp4^conv2d_transpose_20/conv2d_transpose/ReadVariableOp^dense_12/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::2x
:batch_normalization_18/AssignMovingAvg/AssignSubVariableOp:batch_normalization_18/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_18/AssignMovingAvg/ReadVariableOp5batch_normalization_18/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_18/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_18/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_18/AssignMovingAvg_1/ReadVariableOp7batch_normalization_18/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_18/batchnorm/ReadVariableOp/batch_normalization_18/batchnorm/ReadVariableOp2j
3batch_normalization_18/batchnorm/mul/ReadVariableOp3batch_normalization_18/batchnorm/mul/ReadVariableOp2N
%batch_normalization_19/AssignNewValue%batch_normalization_19/AssignNewValue2R
'batch_normalization_19/AssignNewValue_1'batch_normalization_19/AssignNewValue_12p
6batch_normalization_19/FusedBatchNormV3/ReadVariableOp6batch_normalization_19/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_18batch_normalization_19/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_19/ReadVariableOp%batch_normalization_19/ReadVariableOp2R
'batch_normalization_19/ReadVariableOp_1'batch_normalization_19/ReadVariableOp_12N
%batch_normalization_20/AssignNewValue%batch_normalization_20/AssignNewValue2R
'batch_normalization_20/AssignNewValue_1'batch_normalization_20/AssignNewValue_12p
6batch_normalization_20/FusedBatchNormV3/ReadVariableOp6batch_normalization_20/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_18batch_normalization_20/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_20/ReadVariableOp%batch_normalization_20/ReadVariableOp2R
'batch_normalization_20/ReadVariableOp_1'batch_normalization_20/ReadVariableOp_12j
3conv2d_transpose_18/conv2d_transpose/ReadVariableOp3conv2d_transpose_18/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_19/conv2d_transpose/ReadVariableOp3conv2d_transpose_19/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_20/conv2d_transpose/ReadVariableOp3conv2d_transpose_20/conv2d_transpose/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_20_layer_call_fn_270442

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
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_2693542
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
?<
?
I__inference_sequential_12_layer_call_and_return_conditional_losses_269651
dense_12_input
dense_12_269607!
batch_normalization_18_269610!
batch_normalization_18_269612!
batch_normalization_18_269614!
batch_normalization_18_269616
conv2d_transpose_18_269621!
batch_normalization_19_269624!
batch_normalization_19_269626!
batch_normalization_19_269628!
batch_normalization_19_269630
conv2d_transpose_19_269634!
batch_normalization_20_269637!
batch_normalization_20_269639!
batch_normalization_20_269641!
batch_normalization_20_269643
conv2d_transpose_20_269647
identity??.batch_normalization_18/StatefulPartitionedCall?.batch_normalization_19/StatefulPartitionedCall?.batch_normalization_20/StatefulPartitionedCall?+conv2d_transpose_18/StatefulPartitionedCall?+conv2d_transpose_19/StatefulPartitionedCall?+conv2d_transpose_20/StatefulPartitionedCall? dense_12/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCalldense_12_inputdense_12_269607*
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
D__inference_dense_12_layer_call_and_return_conditional_losses_2694162"
 dense_12/StatefulPartitionedCall?
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0batch_normalization_18_269610batch_normalization_18_269612batch_normalization_18_269614batch_normalization_18_269616*
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
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_26906820
.batch_normalization_18/StatefulPartitionedCall?
leaky_re_lu_30/PartitionedCallPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0*
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
J__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_2694682 
leaky_re_lu_30/PartitionedCall?
reshape_6/PartitionedCallPartitionedCall'leaky_re_lu_30/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_reshape_6_layer_call_and_return_conditional_losses_2694902
reshape_6/PartitionedCall?
+conv2d_transpose_18/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0conv2d_transpose_18_269621*
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
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_2691102-
+conv2d_transpose_18/StatefulPartitionedCall?
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_18/StatefulPartitionedCall:output:0batch_normalization_19_269624batch_normalization_19_269626batch_normalization_19_269628batch_normalization_19_269630*
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
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_26921120
.batch_normalization_19/StatefulPartitionedCall?
leaky_re_lu_31/PartitionedCallPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0*
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
J__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_2695412 
leaky_re_lu_31/PartitionedCall?
+conv2d_transpose_19/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_31/PartitionedCall:output:0conv2d_transpose_19_269634*
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
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_2692532-
+conv2d_transpose_19/StatefulPartitionedCall?
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_19/StatefulPartitionedCall:output:0batch_normalization_20_269637batch_normalization_20_269639batch_normalization_20_269641batch_normalization_20_269643*
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
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_26935420
.batch_normalization_20/StatefulPartitionedCall?
leaky_re_lu_32/PartitionedCallPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0*
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
J__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_2695922 
leaky_re_lu_32/PartitionedCall?
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_32/PartitionedCall:output:0conv2d_transpose_20_269647*
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
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_2693972-
+conv2d_transpose_20/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_20/StatefulPartitionedCall:output:0/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall/^batch_normalization_20/StatefulPartitionedCall,^conv2d_transpose_18/StatefulPartitionedCall,^conv2d_transpose_19/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2Z
+conv2d_transpose_18/StatefulPartitionedCall+conv2d_transpose_18/StatefulPartitionedCall2Z
+conv2d_transpose_19/StatefulPartitionedCall+conv2d_transpose_19/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_12_input
?

?
.__inference_sequential_12_layer_call_fn_270179

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
I__inference_sequential_12_layer_call_and_return_conditional_losses_2697852
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
?
o
)__inference_dense_12_layer_call_fn_270193

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
D__inference_dense_12_layer_call_and_return_conditional_losses_2694162
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
?
?
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_269180

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
?0
?
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_270229

inputs
assignmovingavg_270204
assignmovingavg_1_270210)
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
loc:@AssignMovingAvg/270204*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_270204*
_output_shapes	
:?b*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/270204*
_output_shapes	
:?b2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/270204*
_output_shapes	
:?b2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_270204AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/270204*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/270210*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_270210*
_output_shapes	
:?b*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/270210*
_output_shapes	
:?b2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/270210*
_output_shapes	
:?b2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_270210AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/270210*
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
?
K
/__inference_leaky_re_lu_30_layer_call_fn_270285

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
J__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_2694682
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
?
?
7__inference_batch_normalization_18_layer_call_fn_270262

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
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_2690352
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
?I
?

"__inference__traced_restore_270581
file_prefix$
 assignvariableop_dense_12_kernel3
/assignvariableop_1_batch_normalization_18_gamma2
.assignvariableop_2_batch_normalization_18_beta9
5assignvariableop_3_batch_normalization_18_moving_mean=
9assignvariableop_4_batch_normalization_18_moving_variance1
-assignvariableop_5_conv2d_transpose_18_kernel3
/assignvariableop_6_batch_normalization_19_gamma2
.assignvariableop_7_batch_normalization_19_beta9
5assignvariableop_8_batch_normalization_19_moving_mean=
9assignvariableop_9_batch_normalization_19_moving_variance2
.assignvariableop_10_conv2d_transpose_19_kernel4
0assignvariableop_11_batch_normalization_20_gamma3
/assignvariableop_12_batch_normalization_20_beta:
6assignvariableop_13_batch_normalization_20_moving_mean>
:assignvariableop_14_batch_normalization_20_moving_variance2
.assignvariableop_15_conv2d_transpose_20_kernel
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
AssignVariableOpAssignVariableOp assignvariableop_dense_12_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp/assignvariableop_1_batch_normalization_18_gammaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_18_betaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp5assignvariableop_3_batch_normalization_18_moving_meanIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp9assignvariableop_4_batch_normalization_18_moving_varianceIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp-assignvariableop_5_conv2d_transpose_18_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp/assignvariableop_6_batch_normalization_19_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_batch_normalization_19_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp5assignvariableop_8_batch_normalization_19_moving_meanIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp9assignvariableop_9_batch_normalization_19_moving_varianceIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp.assignvariableop_10_conv2d_transpose_19_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp0assignvariableop_11_batch_normalization_20_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_batch_normalization_20_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp6assignvariableop_13_batch_normalization_20_moving_meanIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp:assignvariableop_14_batch_normalization_20_moving_varianceIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp.assignvariableop_15_conv2d_transpose_20_kernelIdentity_15:output:0"/device:CPU:0*
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
?<
?
I__inference_sequential_12_layer_call_and_return_conditional_losses_269604
dense_12_input
dense_12_269425!
batch_normalization_18_269454!
batch_normalization_18_269456!
batch_normalization_18_269458!
batch_normalization_18_269460
conv2d_transpose_18_269498!
batch_normalization_19_269527!
batch_normalization_19_269529!
batch_normalization_19_269531!
batch_normalization_19_269533
conv2d_transpose_19_269549!
batch_normalization_20_269578!
batch_normalization_20_269580!
batch_normalization_20_269582!
batch_normalization_20_269584
conv2d_transpose_20_269600
identity??.batch_normalization_18/StatefulPartitionedCall?.batch_normalization_19/StatefulPartitionedCall?.batch_normalization_20/StatefulPartitionedCall?+conv2d_transpose_18/StatefulPartitionedCall?+conv2d_transpose_19/StatefulPartitionedCall?+conv2d_transpose_20/StatefulPartitionedCall? dense_12/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCalldense_12_inputdense_12_269425*
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
D__inference_dense_12_layer_call_and_return_conditional_losses_2694162"
 dense_12/StatefulPartitionedCall?
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0batch_normalization_18_269454batch_normalization_18_269456batch_normalization_18_269458batch_normalization_18_269460*
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
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_26903520
.batch_normalization_18/StatefulPartitionedCall?
leaky_re_lu_30/PartitionedCallPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0*
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
J__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_2694682 
leaky_re_lu_30/PartitionedCall?
reshape_6/PartitionedCallPartitionedCall'leaky_re_lu_30/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_reshape_6_layer_call_and_return_conditional_losses_2694902
reshape_6/PartitionedCall?
+conv2d_transpose_18/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0conv2d_transpose_18_269498*
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
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_2691102-
+conv2d_transpose_18/StatefulPartitionedCall?
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_18/StatefulPartitionedCall:output:0batch_normalization_19_269527batch_normalization_19_269529batch_normalization_19_269531batch_normalization_19_269533*
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
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_26918020
.batch_normalization_19/StatefulPartitionedCall?
leaky_re_lu_31/PartitionedCallPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0*
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
J__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_2695412 
leaky_re_lu_31/PartitionedCall?
+conv2d_transpose_19/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_31/PartitionedCall:output:0conv2d_transpose_19_269549*
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
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_2692532-
+conv2d_transpose_19/StatefulPartitionedCall?
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_19/StatefulPartitionedCall:output:0batch_normalization_20_269578batch_normalization_20_269580batch_normalization_20_269582batch_normalization_20_269584*
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
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_26932320
.batch_normalization_20/StatefulPartitionedCall?
leaky_re_lu_32/PartitionedCallPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0*
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
J__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_2695922 
leaky_re_lu_32/PartitionedCall?
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_32/PartitionedCall:output:0conv2d_transpose_20_269600*
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
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_2693972-
+conv2d_transpose_20/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_20/StatefulPartitionedCall:output:0/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall/^batch_normalization_20/StatefulPartitionedCall,^conv2d_transpose_18/StatefulPartitionedCall,^conv2d_transpose_19/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2Z
+conv2d_transpose_18/StatefulPartitionedCall+conv2d_transpose_18/StatefulPartitionedCall2Z
+conv2d_transpose_19/StatefulPartitionedCall+conv2d_transpose_19/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_12_input
?
f
J__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_269468

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
?!
?
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_269397

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
?
?
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_269211

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
? 
?
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_269253

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
?
?
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_270342

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
?
a
E__inference_reshape_6_layer_call_and_return_conditional_losses_270299

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
?
F
*__inference_reshape_6_layer_call_fn_270304

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
GPU2*0J 8? *N
fIRG
E__inference_reshape_6_layer_call_and_return_conditional_losses_2694902
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
?
z
4__inference_conv2d_transpose_20_layer_call_fn_269405

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
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_2693972
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
?
?
7__inference_batch_normalization_19_layer_call_fn_270368

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
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_2692112
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
??
?
I__inference_sequential_12_layer_call_and_return_conditional_losses_270105

inputs+
'dense_12_matmul_readvariableop_resource<
8batch_normalization_18_batchnorm_readvariableop_resource@
<batch_normalization_18_batchnorm_mul_readvariableop_resource>
:batch_normalization_18_batchnorm_readvariableop_1_resource>
:batch_normalization_18_batchnorm_readvariableop_2_resource@
<conv2d_transpose_18_conv2d_transpose_readvariableop_resource2
.batch_normalization_19_readvariableop_resource4
0batch_normalization_19_readvariableop_1_resourceC
?batch_normalization_19_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource@
<conv2d_transpose_19_conv2d_transpose_readvariableop_resource2
.batch_normalization_20_readvariableop_resource4
0batch_normalization_20_readvariableop_1_resourceC
?batch_normalization_20_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_20_fusedbatchnormv3_readvariableop_1_resource@
<conv2d_transpose_20_conv2d_transpose_readvariableop_resource
identity??/batch_normalization_18/batchnorm/ReadVariableOp?1batch_normalization_18/batchnorm/ReadVariableOp_1?1batch_normalization_18/batchnorm/ReadVariableOp_2?3batch_normalization_18/batchnorm/mul/ReadVariableOp?6batch_normalization_19/FusedBatchNormV3/ReadVariableOp?8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_19/ReadVariableOp?'batch_normalization_19/ReadVariableOp_1?6batch_normalization_20/FusedBatchNormV3/ReadVariableOp?8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_20/ReadVariableOp?'batch_normalization_20/ReadVariableOp_1?3conv2d_transpose_18/conv2d_transpose/ReadVariableOp?3conv2d_transpose_19/conv2d_transpose/ReadVariableOp?3conv2d_transpose_20/conv2d_transpose/ReadVariableOp?dense_12/MatMul/ReadVariableOp?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	d?b*
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMulinputs&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b2
dense_12/MatMul?
/batch_normalization_18/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_18_batchnorm_readvariableop_resource*
_output_shapes	
:?b*
dtype021
/batch_normalization_18/batchnorm/ReadVariableOp?
&batch_normalization_18/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_18/batchnorm/add/y?
$batch_normalization_18/batchnorm/addAddV27batch_normalization_18/batchnorm/ReadVariableOp:value:0/batch_normalization_18/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?b2&
$batch_normalization_18/batchnorm/add?
&batch_normalization_18/batchnorm/RsqrtRsqrt(batch_normalization_18/batchnorm/add:z:0*
T0*
_output_shapes	
:?b2(
&batch_normalization_18/batchnorm/Rsqrt?
3batch_normalization_18/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_18_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype025
3batch_normalization_18/batchnorm/mul/ReadVariableOp?
$batch_normalization_18/batchnorm/mulMul*batch_normalization_18/batchnorm/Rsqrt:y:0;batch_normalization_18/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?b2&
$batch_normalization_18/batchnorm/mul?
&batch_normalization_18/batchnorm/mul_1Muldense_12/MatMul:product:0(batch_normalization_18/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????b2(
&batch_normalization_18/batchnorm/mul_1?
1batch_normalization_18/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_18_batchnorm_readvariableop_1_resource*
_output_shapes	
:?b*
dtype023
1batch_normalization_18/batchnorm/ReadVariableOp_1?
&batch_normalization_18/batchnorm/mul_2Mul9batch_normalization_18/batchnorm/ReadVariableOp_1:value:0(batch_normalization_18/batchnorm/mul:z:0*
T0*
_output_shapes	
:?b2(
&batch_normalization_18/batchnorm/mul_2?
1batch_normalization_18/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_18_batchnorm_readvariableop_2_resource*
_output_shapes	
:?b*
dtype023
1batch_normalization_18/batchnorm/ReadVariableOp_2?
$batch_normalization_18/batchnorm/subSub9batch_normalization_18/batchnorm/ReadVariableOp_2:value:0*batch_normalization_18/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?b2&
$batch_normalization_18/batchnorm/sub?
&batch_normalization_18/batchnorm/add_1AddV2*batch_normalization_18/batchnorm/mul_1:z:0(batch_normalization_18/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????b2(
&batch_normalization_18/batchnorm/add_1?
leaky_re_lu_30/LeakyRelu	LeakyRelu*batch_normalization_18/batchnorm/add_1:z:0*(
_output_shapes
:??????????b*
alpha%???>2
leaky_re_lu_30/LeakyRelux
reshape_6/ShapeShape&leaky_re_lu_30/LeakyRelu:activations:0*
T0*
_output_shapes
:2
reshape_6/Shape?
reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_6/strided_slice/stack?
reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_1?
reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_2?
reshape_6/strided_sliceStridedSlicereshape_6/Shape:output:0&reshape_6/strided_slice/stack:output:0(reshape_6/strided_slice/stack_1:output:0(reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_6/strided_slicex
reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/1x
reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/2y
reshape_6/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_6/Reshape/shape/3?
reshape_6/Reshape/shapePack reshape_6/strided_slice:output:0"reshape_6/Reshape/shape/1:output:0"reshape_6/Reshape/shape/2:output:0"reshape_6/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_6/Reshape/shape?
reshape_6/ReshapeReshape&leaky_re_lu_30/LeakyRelu:activations:0 reshape_6/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_6/Reshape?
conv2d_transpose_18/ShapeShapereshape_6/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_18/Shape?
'conv2d_transpose_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_18/strided_slice/stack?
)conv2d_transpose_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_18/strided_slice/stack_1?
)conv2d_transpose_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_18/strided_slice/stack_2?
!conv2d_transpose_18/strided_sliceStridedSlice"conv2d_transpose_18/Shape:output:00conv2d_transpose_18/strided_slice/stack:output:02conv2d_transpose_18/strided_slice/stack_1:output:02conv2d_transpose_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_18/strided_slice|
conv2d_transpose_18/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_18/stack/1|
conv2d_transpose_18/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_18/stack/2}
conv2d_transpose_18/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_18/stack/3?
conv2d_transpose_18/stackPack*conv2d_transpose_18/strided_slice:output:0$conv2d_transpose_18/stack/1:output:0$conv2d_transpose_18/stack/2:output:0$conv2d_transpose_18/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_18/stack?
)conv2d_transpose_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_18/strided_slice_1/stack?
+conv2d_transpose_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_18/strided_slice_1/stack_1?
+conv2d_transpose_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_18/strided_slice_1/stack_2?
#conv2d_transpose_18/strided_slice_1StridedSlice"conv2d_transpose_18/stack:output:02conv2d_transpose_18/strided_slice_1/stack:output:04conv2d_transpose_18/strided_slice_1/stack_1:output:04conv2d_transpose_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_18/strided_slice_1?
3conv2d_transpose_18/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_18_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_18/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_18/conv2d_transposeConv2DBackpropInput"conv2d_transpose_18/stack:output:0;conv2d_transpose_18/conv2d_transpose/ReadVariableOp:value:0reshape_6/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$conv2d_transpose_18/conv2d_transpose?
%batch_normalization_19/ReadVariableOpReadVariableOp.batch_normalization_19_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_19/ReadVariableOp?
'batch_normalization_19/ReadVariableOp_1ReadVariableOp0batch_normalization_19_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_19/ReadVariableOp_1?
6batch_normalization_19/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_19_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_19/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_19/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_18/conv2d_transpose:output:0-batch_normalization_19/ReadVariableOp:value:0/batch_normalization_19/ReadVariableOp_1:value:0>batch_normalization_19/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_19/FusedBatchNormV3?
leaky_re_lu_31/LeakyRelu	LeakyRelu+batch_normalization_19/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_31/LeakyRelu?
conv2d_transpose_19/ShapeShape&leaky_re_lu_31/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_19/Shape?
'conv2d_transpose_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_19/strided_slice/stack?
)conv2d_transpose_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_19/strided_slice/stack_1?
)conv2d_transpose_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_19/strided_slice/stack_2?
!conv2d_transpose_19/strided_sliceStridedSlice"conv2d_transpose_19/Shape:output:00conv2d_transpose_19/strided_slice/stack:output:02conv2d_transpose_19/strided_slice/stack_1:output:02conv2d_transpose_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_19/strided_slice|
conv2d_transpose_19/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_19/stack/1|
conv2d_transpose_19/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_19/stack/2|
conv2d_transpose_19/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_19/stack/3?
conv2d_transpose_19/stackPack*conv2d_transpose_19/strided_slice:output:0$conv2d_transpose_19/stack/1:output:0$conv2d_transpose_19/stack/2:output:0$conv2d_transpose_19/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_19/stack?
)conv2d_transpose_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_19/strided_slice_1/stack?
+conv2d_transpose_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_19/strided_slice_1/stack_1?
+conv2d_transpose_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_19/strided_slice_1/stack_2?
#conv2d_transpose_19/strided_slice_1StridedSlice"conv2d_transpose_19/stack:output:02conv2d_transpose_19/strided_slice_1/stack:output:04conv2d_transpose_19/strided_slice_1/stack_1:output:04conv2d_transpose_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_19/strided_slice_1?
3conv2d_transpose_19/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_19_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_19/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_19/conv2d_transposeConv2DBackpropInput"conv2d_transpose_19/stack:output:0;conv2d_transpose_19/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_31/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2&
$conv2d_transpose_19/conv2d_transpose?
%batch_normalization_20/ReadVariableOpReadVariableOp.batch_normalization_20_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_20/ReadVariableOp?
'batch_normalization_20/ReadVariableOp_1ReadVariableOp0batch_normalization_20_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_20/ReadVariableOp_1?
6batch_normalization_20/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_20_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_20/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_20_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_20/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_19/conv2d_transpose:output:0-batch_normalization_20/ReadVariableOp:value:0/batch_normalization_20/ReadVariableOp_1:value:0>batch_normalization_20/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_20/FusedBatchNormV3?
leaky_re_lu_32/LeakyRelu	LeakyRelu+batch_normalization_20/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>2
leaky_re_lu_32/LeakyRelu?
conv2d_transpose_20/ShapeShape&leaky_re_lu_32/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_20/Shape?
'conv2d_transpose_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_20/strided_slice/stack?
)conv2d_transpose_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_20/strided_slice/stack_1?
)conv2d_transpose_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_20/strided_slice/stack_2?
!conv2d_transpose_20/strided_sliceStridedSlice"conv2d_transpose_20/Shape:output:00conv2d_transpose_20/strided_slice/stack:output:02conv2d_transpose_20/strided_slice/stack_1:output:02conv2d_transpose_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_20/strided_slice|
conv2d_transpose_20/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_20/stack/1|
conv2d_transpose_20/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_20/stack/2|
conv2d_transpose_20/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_20/stack/3?
conv2d_transpose_20/stackPack*conv2d_transpose_20/strided_slice:output:0$conv2d_transpose_20/stack/1:output:0$conv2d_transpose_20/stack/2:output:0$conv2d_transpose_20/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_20/stack?
)conv2d_transpose_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_20/strided_slice_1/stack?
+conv2d_transpose_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_20/strided_slice_1/stack_1?
+conv2d_transpose_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_20/strided_slice_1/stack_2?
#conv2d_transpose_20/strided_slice_1StridedSlice"conv2d_transpose_20/stack:output:02conv2d_transpose_20/strided_slice_1/stack:output:04conv2d_transpose_20/strided_slice_1/stack_1:output:04conv2d_transpose_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_20/strided_slice_1?
3conv2d_transpose_20/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_20_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_transpose_20/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_20/conv2d_transposeConv2DBackpropInput"conv2d_transpose_20/stack:output:0;conv2d_transpose_20/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_32/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2&
$conv2d_transpose_20/conv2d_transpose?
conv2d_transpose_20/TanhTanh-conv2d_transpose_20/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????2
conv2d_transpose_20/Tanh?
IdentityIdentityconv2d_transpose_20/Tanh:y:00^batch_normalization_18/batchnorm/ReadVariableOp2^batch_normalization_18/batchnorm/ReadVariableOp_12^batch_normalization_18/batchnorm/ReadVariableOp_24^batch_normalization_18/batchnorm/mul/ReadVariableOp7^batch_normalization_19/FusedBatchNormV3/ReadVariableOp9^batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_19/ReadVariableOp(^batch_normalization_19/ReadVariableOp_17^batch_normalization_20/FusedBatchNormV3/ReadVariableOp9^batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_20/ReadVariableOp(^batch_normalization_20/ReadVariableOp_14^conv2d_transpose_18/conv2d_transpose/ReadVariableOp4^conv2d_transpose_19/conv2d_transpose/ReadVariableOp4^conv2d_transpose_20/conv2d_transpose/ReadVariableOp^dense_12/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????d::::::::::::::::2b
/batch_normalization_18/batchnorm/ReadVariableOp/batch_normalization_18/batchnorm/ReadVariableOp2f
1batch_normalization_18/batchnorm/ReadVariableOp_11batch_normalization_18/batchnorm/ReadVariableOp_12f
1batch_normalization_18/batchnorm/ReadVariableOp_21batch_normalization_18/batchnorm/ReadVariableOp_22j
3batch_normalization_18/batchnorm/mul/ReadVariableOp3batch_normalization_18/batchnorm/mul/ReadVariableOp2p
6batch_normalization_19/FusedBatchNormV3/ReadVariableOp6batch_normalization_19/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_18batch_normalization_19/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_19/ReadVariableOp%batch_normalization_19/ReadVariableOp2R
'batch_normalization_19/ReadVariableOp_1'batch_normalization_19/ReadVariableOp_12p
6batch_normalization_20/FusedBatchNormV3/ReadVariableOp6batch_normalization_20/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_18batch_normalization_20/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_20/ReadVariableOp%batch_normalization_20/ReadVariableOp2R
'batch_normalization_20/ReadVariableOp_1'batch_normalization_20/ReadVariableOp_12j
3conv2d_transpose_18/conv2d_transpose/ReadVariableOp3conv2d_transpose_18/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_19/conv2d_transpose/ReadVariableOp3conv2d_transpose_19/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_20/conv2d_transpose/ReadVariableOp3conv2d_transpose_20/conv2d_transpose/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
K
/__inference_leaky_re_lu_32_layer_call_fn_270452

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
J__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_2695922
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
?

?
$__inference_signature_wrapper_269859
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

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_2689392
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
_user_specified_namedense_12_input
?
f
J__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_269592

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
z
4__inference_conv2d_transpose_19_layer_call_fn_269261

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
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_2692532
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
?
f
J__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_270373

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
?
z
4__inference_conv2d_transpose_18_layer_call_fn_269118

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
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_2691102
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
.__inference_sequential_12_layer_call_fn_269820
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

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_12_layer_call_and_return_conditional_losses_2697852
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
_user_specified_namedense_12_input
?
?
7__inference_batch_normalization_20_layer_call_fn_270429

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
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_2693232
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
dense_12_input7
 serving_default_dense_12_input:0?????????dO
conv2d_transpose_208
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
trainable_variables
	variables
regularization_losses
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"?U
_tf_keras_sequential?T{"class_name": "Sequential", "name": "sequential_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_12", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_12_input"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 12544, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_18", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_30", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Reshape", "config": {"name": "reshape_6", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 256]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_19", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_31", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_19", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_20", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_32", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_20", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_12", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_12_input"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 12544, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_18", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_30", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Reshape", "config": {"name": "reshape_6", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 256]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_19", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_31", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_19", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_20", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_32", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_20", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}]}}}
?

kernel
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 12544, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?	
axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_18", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_18", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 12544}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12544]}}
?
trainable_variables
 	variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_30", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}
?
#trainable_variables
$	variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Reshape", "name": "reshape_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_6", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 256]}}}
?


'kernel
(trainable_variables
)	variables
*regularization_losses
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 256]}}
?	
,axis
	-gamma
.beta
/moving_mean
0moving_variance
1trainable_variables
2	variables
3regularization_losses
4	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_19", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_19", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 128]}}
?
5trainable_variables
6	variables
7regularization_losses
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_31", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}
?


9kernel
:trainable_variables
;	variables
<regularization_losses
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_19", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 128]}}
?	
>axis
	?gamma
@beta
Amoving_mean
Bmoving_variance
Ctrainable_variables
D	variables
Eregularization_losses
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_20", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_20", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
?
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LeakyReLU", "name": "leaky_re_lu_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu_32", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}
?


Kkernel
Ltrainable_variables
M	variables
Nregularization_losses
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_20", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
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
?

Players
Qlayer_metrics
Rnon_trainable_variables
trainable_variables
	variables
Smetrics
Tlayer_regularization_losses
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
": 	d?b2dense_12/kernel
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Ulayers
Vlayer_metrics
Wnon_trainable_variables
trainable_variables
	variables
Xmetrics
Ylayer_regularization_losses
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?b2batch_normalization_18/gamma
*:(?b2batch_normalization_18/beta
3:1?b (2"batch_normalization_18/moving_mean
7:5?b (2&batch_normalization_18/moving_variance
.
0
1"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Zlayers
[layer_metrics
\non_trainable_variables
trainable_variables
	variables
]metrics
^layer_regularization_losses
regularization_losses
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

_layers
`layer_metrics
anon_trainable_variables
trainable_variables
 	variables
bmetrics
clayer_regularization_losses
!regularization_losses
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

dlayers
elayer_metrics
fnon_trainable_variables
#trainable_variables
$	variables
gmetrics
hlayer_regularization_losses
%regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
6:4??2conv2d_transpose_18/kernel
'
'0"
trackable_list_wrapper
'
'0"
trackable_list_wrapper
 "
trackable_list_wrapper
?

ilayers
jlayer_metrics
knon_trainable_variables
(trainable_variables
)	variables
lmetrics
mlayer_regularization_losses
*regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_19/gamma
*:(?2batch_normalization_19/beta
3:1? (2"batch_normalization_19/moving_mean
7:5? (2&batch_normalization_19/moving_variance
.
-0
.1"
trackable_list_wrapper
<
-0
.1
/2
03"
trackable_list_wrapper
 "
trackable_list_wrapper
?

nlayers
olayer_metrics
pnon_trainable_variables
1trainable_variables
2	variables
qmetrics
rlayer_regularization_losses
3regularization_losses
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

slayers
tlayer_metrics
unon_trainable_variables
5trainable_variables
6	variables
vmetrics
wlayer_regularization_losses
7regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5:3@?2conv2d_transpose_19/kernel
'
90"
trackable_list_wrapper
'
90"
trackable_list_wrapper
 "
trackable_list_wrapper
?

xlayers
ylayer_metrics
znon_trainable_variables
:trainable_variables
;	variables
{metrics
|layer_regularization_losses
<regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_20/gamma
):'@2batch_normalization_20/beta
2:0@ (2"batch_normalization_20/moving_mean
6:4@ (2&batch_normalization_20/moving_variance
.
?0
@1"
trackable_list_wrapper
<
?0
@1
A2
B3"
trackable_list_wrapper
 "
trackable_list_wrapper
?

}layers
~layer_metrics
non_trainable_variables
Ctrainable_variables
D	variables
?metrics
 ?layer_regularization_losses
Eregularization_losses
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
?layers
?layer_metrics
?non_trainable_variables
Gtrainable_variables
H	variables
?metrics
 ?layer_regularization_losses
Iregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
4:2@2conv2d_transpose_20/kernel
'
K0"
trackable_list_wrapper
'
K0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?non_trainable_variables
Ltrainable_variables
M	variables
?metrics
 ?layer_regularization_losses
Nregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_dict_wrapper
J
0
1
/2
03
A4
B5"
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
0
1"
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
.
/0
01"
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
A0
B1"
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
?2?
!__inference__wrapped_model_268939?
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
dense_12_input?????????d
?2?
.__inference_sequential_12_layer_call_fn_269736
.__inference_sequential_12_layer_call_fn_270142
.__inference_sequential_12_layer_call_fn_269820
.__inference_sequential_12_layer_call_fn_270179?
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
I__inference_sequential_12_layer_call_and_return_conditional_losses_269992
I__inference_sequential_12_layer_call_and_return_conditional_losses_270105
I__inference_sequential_12_layer_call_and_return_conditional_losses_269651
I__inference_sequential_12_layer_call_and_return_conditional_losses_269604?
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
)__inference_dense_12_layer_call_fn_270193?
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
D__inference_dense_12_layer_call_and_return_conditional_losses_270186?
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
7__inference_batch_normalization_18_layer_call_fn_270275
7__inference_batch_normalization_18_layer_call_fn_270262?
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
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_270229
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_270249?
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
/__inference_leaky_re_lu_30_layer_call_fn_270285?
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
J__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_270280?
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
*__inference_reshape_6_layer_call_fn_270304?
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
E__inference_reshape_6_layer_call_and_return_conditional_losses_270299?
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
4__inference_conv2d_transpose_18_layer_call_fn_269118?
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
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_269110?
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
7__inference_batch_normalization_19_layer_call_fn_270355
7__inference_batch_normalization_19_layer_call_fn_270368?
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
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_270324
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_270342?
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
/__inference_leaky_re_lu_31_layer_call_fn_270378?
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
J__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_270373?
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
4__inference_conv2d_transpose_19_layer_call_fn_269261?
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
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_269253?
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
7__inference_batch_normalization_20_layer_call_fn_270429
7__inference_batch_normalization_20_layer_call_fn_270442?
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
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_270416
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_270398?
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
/__inference_leaky_re_lu_32_layer_call_fn_270452?
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
J__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_270447?
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
4__inference_conv2d_transpose_20_layer_call_fn_269405?
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
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_269397?
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
$__inference_signature_wrapper_269859dense_12_input"?
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
!__inference__wrapped_model_268939?'-./09?@ABK7?4
-?*
(?%
dense_12_input?????????d
? "Q?N
L
conv2d_transpose_205?2
conv2d_transpose_20??????????
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_270229d4?1
*?'
!?
inputs??????????b
p
? "&?#
?
0??????????b
? ?
R__inference_batch_normalization_18_layer_call_and_return_conditional_losses_270249d4?1
*?'
!?
inputs??????????b
p 
? "&?#
?
0??????????b
? ?
7__inference_batch_normalization_18_layer_call_fn_270262W4?1
*?'
!?
inputs??????????b
p
? "???????????b?
7__inference_batch_normalization_18_layer_call_fn_270275W4?1
*?'
!?
inputs??????????b
p 
? "???????????b?
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_270324?-./0N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
R__inference_batch_normalization_19_layer_call_and_return_conditional_losses_270342?-./0N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
7__inference_batch_normalization_19_layer_call_fn_270355?-./0N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
7__inference_batch_normalization_19_layer_call_fn_270368?-./0N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_270398??@ABM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_270416??@ABM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
7__inference_batch_normalization_20_layer_call_fn_270429??@ABM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
7__inference_batch_normalization_20_layer_call_fn_270442??@ABM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_269110?'J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
4__inference_conv2d_transpose_18_layer_call_fn_269118?'J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_269253?9J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
4__inference_conv2d_transpose_19_layer_call_fn_269261?9J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_269397?KI?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
4__inference_conv2d_transpose_20_layer_call_fn_269405?KI?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
D__inference_dense_12_layer_call_and_return_conditional_losses_270186\/?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????b
? |
)__inference_dense_12_layer_call_fn_270193O/?,
%?"
 ?
inputs?????????d
? "???????????b?
J__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_270280Z0?-
&?#
!?
inputs??????????b
? "&?#
?
0??????????b
? ?
/__inference_leaky_re_lu_30_layer_call_fn_270285M0?-
&?#
!?
inputs??????????b
? "???????????b?
J__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_270373?J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
/__inference_leaky_re_lu_31_layer_call_fn_270378?J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
J__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_270447?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
/__inference_leaky_re_lu_32_layer_call_fn_270452I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
E__inference_reshape_6_layer_call_and_return_conditional_losses_270299b0?-
&?#
!?
inputs??????????b
? ".?+
$?!
0??????????
? ?
*__inference_reshape_6_layer_call_fn_270304U0?-
&?#
!?
inputs??????????b
? "!????????????
I__inference_sequential_12_layer_call_and_return_conditional_losses_269604?'-./09?@ABK??<
5?2
(?%
dense_12_input?????????d
p

 
? "??<
5?2
0+???????????????????????????
? ?
I__inference_sequential_12_layer_call_and_return_conditional_losses_269651?'-./09?@ABK??<
5?2
(?%
dense_12_input?????????d
p 

 
? "??<
5?2
0+???????????????????????????
? ?
I__inference_sequential_12_layer_call_and_return_conditional_losses_269992z'-./09?@ABK7?4
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
I__inference_sequential_12_layer_call_and_return_conditional_losses_270105z'-./09?@ABK7?4
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
.__inference_sequential_12_layer_call_fn_269736?'-./09?@ABK??<
5?2
(?%
dense_12_input?????????d
p

 
? "2?/+????????????????????????????
.__inference_sequential_12_layer_call_fn_269820?'-./09?@ABK??<
5?2
(?%
dense_12_input?????????d
p 

 
? "2?/+????????????????????????????
.__inference_sequential_12_layer_call_fn_270142'-./09?@ABK7?4
-?*
 ?
inputs?????????d
p

 
? "2?/+????????????????????????????
.__inference_sequential_12_layer_call_fn_270179'-./09?@ABK7?4
-?*
 ?
inputs?????????d
p 

 
? "2?/+????????????????????????????
$__inference_signature_wrapper_269859?'-./09?@ABKI?F
? 
??<
:
dense_12_input(?%
dense_12_input?????????d"Q?N
L
conv2d_transpose_205?2
conv2d_transpose_20?????????