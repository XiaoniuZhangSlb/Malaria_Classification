��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
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
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��
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
�
Adam/v/dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_15/bias
y
(Adam/v/dense_15/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_15/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_15/bias
y
(Adam/m/dense_15/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_15/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/v/dense_15/kernel
�
*Adam/v/dense_15/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_15/kernel*
_output_shapes

:@*
dtype0
�
Adam/m/dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/m/dense_15/kernel
�
*Adam/m/dense_15/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_15/kernel*
_output_shapes

:@*
dtype0
�
Adam/v/dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/dense_14/bias
y
(Adam/v/dense_14/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_14/bias*
_output_shapes
:@*
dtype0
�
Adam/m/dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/dense_14/bias
y
(Adam/m/dense_14/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_14/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/v/dense_14/kernel
�
*Adam/v/dense_14/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_14/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/m/dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/m/dense_14/kernel
�
*Adam/m/dense_14/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_14/kernel*
_output_shapes
:	�@*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:�*
dtype0
�
block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock5_conv3/kernel
�
'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:��*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:�*
dtype0
�
block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock5_conv2/kernel
�
'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:��*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:�*
dtype0
�
block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock5_conv1/kernel
�
'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:��*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:�*
dtype0
�
block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock4_conv3/kernel
�
'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:��*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:�*
dtype0
�
block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock4_conv2/kernel
�
'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:��*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:�*
dtype0
�
block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock4_conv1/kernel
�
'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:��*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:�*
dtype0
�
block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock3_conv3/kernel
�
'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:��*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:�*
dtype0
�
block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock3_conv2/kernel
�
'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:��*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:�*
dtype0
�
block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock3_conv1/kernel
�
'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:��*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:�*
dtype0
�
block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock2_conv2/kernel
�
'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:��*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:�*
dtype0
�
block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*$
shared_nameblock2_conv1/kernel
�
'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@�*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0
�
block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel
�
'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0
�
block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel
�
'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:*
dtype0
z
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_15/kernel
s
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes

:@*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:@*
dtype0
{
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@* 
shared_namedense_14/kernel
t
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes
:	�@*
dtype0
�
serving_default_vgg16_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_vgg16_inputblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_signature_wrapper_19717

NoOpNoOp
ޝ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
 layer-18
!layer-19
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses*
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses* 
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses

4kernel
5bias*
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias*
�
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
N16
O17
P18
Q19
R20
S21
T22
U23
V24
W25
426
527
<28
=29*
 
40
51
<2
=3*
* 
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*

]trace_0
^trace_1* 

_trace_0
`trace_1* 
* 
�
a
_variables
b_iterations
c_learning_rate
d_index_dict
e
_momentums
f_velocities
g_update_step_xla*

hserving_default* 
* 
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

>kernel
?bias
 o_jit_compiled_convolution_op*
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

@kernel
Abias
 v_jit_compiled_convolution_op*
�
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses* 
�
}	variables
~trainable_variables
regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Bkernel
Cbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Dkernel
Ebias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Fkernel
Gbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Hkernel
Ibias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Jkernel
Kbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Lkernel
Mbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Nkernel
Obias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Pkernel
Qbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Rkernel
Sbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Tkernel
Ubias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Vkernel
Wbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
N16
O17
P18
Q19
R20
S21
T22
U23
V24
W25*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

40
51*

40
51*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_14/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

<0
=1*

<0
=1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_15/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock1_conv1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock1_conv1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock1_conv2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock1_conv2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock2_conv1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock2_conv1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock2_conv2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock2_conv2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock3_conv1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock3_conv1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock3_conv2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock3_conv2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock3_conv3/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock3_conv3/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv1/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv1/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv2/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv2/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv3/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv3/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv1/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv1/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv2/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv2/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv3/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv3/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
�
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
N16
O17
P18
Q19
R20
S21
T22
U23
V24
W25*
 
0
1
2
3*

�0
�1*
* 
* 
* 
* 
* 
* 
K
b0
�1
�2
�3
�4
�5
�6
�7
�8*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*
$
�0
�1
�2
�3*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 

>0
?1*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

@0
A1*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

B0
C1*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
}	variables
~trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

D0
E1*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

F0
G1*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

H0
I1*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

J0
K1*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

L0
M1*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

N0
O1*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

P0
Q1*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

R0
S1*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

T0
U1*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

V0
W1*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
�
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
N16
O17
P18
Q19
R20
S21
T22
U23
V24
W25*
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
 18
!19*
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
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
a[
VARIABLE_VALUEAdam/m/dense_14/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_14/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_14/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_14/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_15/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_15/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_15/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_15/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

>0
?1*
* 
* 
* 
* 
* 
* 

@0
A1*
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

B0
C1*
* 
* 
* 
* 
* 
* 

D0
E1*
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

F0
G1*
* 
* 
* 
* 
* 
* 

H0
I1*
* 
* 
* 
* 
* 
* 

J0
K1*
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

L0
M1*
* 
* 
* 
* 
* 
* 

N0
O1*
* 
* 
* 
* 
* 
* 

P0
Q1*
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

R0
S1*
* 
* 
* 
* 
* 
* 

T0
U1*
* 
* 
* 
* 
* 
* 

V0
W1*
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

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_14/kerneldense_14/biasdense_15/kerneldense_15/biasblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/bias	iterationlearning_rateAdam/m/dense_14/kernelAdam/v/dense_14/kernelAdam/m/dense_14/biasAdam/v/dense_14/biasAdam/m/dense_15/kernelAdam/v/dense_15/kernelAdam/m/dense_15/biasAdam/v/dense_15/biastotal_1count_1totalcountConst*9
Tin2
02.*
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
GPU2*0J 8� *'
f"R 
__inference__traced_save_20375
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_14/kerneldense_14/biasdense_15/kerneldense_15/biasblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/bias	iterationlearning_rateAdam/m/dense_14/kernelAdam/v/dense_14/kernelAdam/m/dense_14/biasAdam/v/dense_14/biasAdam/m/dense_15/kernelAdam/v/dense_15/kernelAdam/m/dense_15/biasAdam/v/dense_15/biastotal_1count_1totalcount*8
Tin1
/2-*
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
GPU2*0J 8� **
f%R#
!__inference__traced_restore_20516��
�
�
G__inference_block3_conv2_layer_call_and_return_conditional_losses_19908

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y��*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y��Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:���������y��k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:���������y��S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������y��: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:���������y��
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
J
"__inference__update_step_xla_17819
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
,__inference_block2_conv1_layer_call_fn_19827

inputs"
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_18854z
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs:%!

_user_specified_name19821:%!

_user_specified_name19823
�

�
C__inference_dense_15_layer_call_and_return_conditional_losses_19768

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
,__inference_block3_conv3_layer_call_fn_19917

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������y��*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_18919y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:���������y��<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������y��: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:���������y��
 
_user_specified_nameinputs:%!

_user_specified_name19911:%!

_user_specified_name19913
�a
�
@__inference_vgg16_layer_call_and_return_conditional_losses_19026
input_7,
block1_conv1_18822:@ 
block1_conv1_18824:@,
block1_conv2_18838:@@ 
block1_conv2_18840:@-
block2_conv1_18855:@�!
block2_conv1_18857:	�.
block2_conv2_18871:��!
block2_conv2_18873:	�.
block3_conv1_18888:��!
block3_conv1_18890:	�.
block3_conv2_18904:��!
block3_conv2_18906:	�.
block3_conv3_18920:��!
block3_conv3_18922:	�.
block4_conv1_18937:��!
block4_conv1_18939:	�.
block4_conv2_18953:��!
block4_conv2_18955:	�.
block4_conv3_18969:��!
block4_conv3_18971:	�.
block5_conv1_18986:��!
block5_conv1_18988:	�.
block5_conv2_19002:��!
block5_conv2_19004:	�.
block5_conv3_19018:��!
block5_conv3_19020:	�
identity��$block1_conv1/StatefulPartitionedCall�$block1_conv2/StatefulPartitionedCall�$block2_conv1/StatefulPartitionedCall�$block2_conv2/StatefulPartitionedCall�$block3_conv1/StatefulPartitionedCall�$block3_conv2/StatefulPartitionedCall�$block3_conv3/StatefulPartitionedCall�$block4_conv1/StatefulPartitionedCall�$block4_conv2/StatefulPartitionedCall�$block4_conv3/StatefulPartitionedCall�$block5_conv1/StatefulPartitionedCall�$block5_conv2/StatefulPartitionedCall�$block5_conv3/StatefulPartitionedCall�
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_7block1_conv1_18822block1_conv1_18824*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_18821�
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_18838block1_conv2_18840*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_18837�
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_18752�
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_18855block2_conv1_18857*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_18854�
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_18871block2_conv2_18873*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_18870�
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������y��* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_18762�
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_18888block3_conv1_18890*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������y��*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_18887�
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_18904block3_conv2_18906*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������y��*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_18903�
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_18920block3_conv3_18922*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������y��*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_18919�
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������<Q�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_18772�
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_18937block4_conv1_18939*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������<Q�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_18936�
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_18953block4_conv2_18955*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������<Q�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_18952�
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_18969block4_conv3_18971*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������<Q�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_18968�
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������(�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_18782�
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_18986block5_conv1_18988*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������(�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_18985�
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_19002block5_conv2_19004*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������(�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_19001�
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_19018block5_conv3_19020*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������(�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_19017�
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_18792�
&global_max_pooling2d_6/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_global_max_pooling2d_6_layer_call_and_return_conditional_losses_18803
IdentityIdentity/global_max_pooling2d_6/PartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_7:%!

_user_specified_name18822:%!

_user_specified_name18824:%!

_user_specified_name18838:%!

_user_specified_name18840:%!

_user_specified_name18855:%!

_user_specified_name18857:%!

_user_specified_name18871:%!

_user_specified_name18873:%	!

_user_specified_name18888:%
!

_user_specified_name18890:%!

_user_specified_name18904:%!

_user_specified_name18906:%!

_user_specified_name18920:%!

_user_specified_name18922:%!

_user_specified_name18937:%!

_user_specified_name18939:%!

_user_specified_name18953:%!

_user_specified_name18955:%!

_user_specified_name18969:%!

_user_specified_name18971:%!

_user_specified_name18986:%!

_user_specified_name18988:%!

_user_specified_name19002:%!

_user_specified_name19004:%!

_user_specified_name19018:%!

_user_specified_name19020
�
�
G__inference_block5_conv3_layer_call_and_return_conditional_losses_20068

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������(�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������(�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������(�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������(�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
G__inference_block4_conv1_layer_call_and_return_conditional_losses_18936

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������<Q�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������<Q�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������<Q�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������<Q�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
G__inference_block5_conv1_layer_call_and_return_conditional_losses_18985

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������(�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������(�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������(�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������(�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
G__inference_block2_conv1_layer_call_and_return_conditional_losses_19838

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:������������l
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:������������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
,__inference_block3_conv1_layer_call_fn_19877

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������y��*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_18887y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:���������y��<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������y��: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:���������y��
 
_user_specified_nameinputs:%!

_user_specified_name19871:%!

_user_specified_name19873
�
�
G__inference_block3_conv3_layer_call_and_return_conditional_losses_19928

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y��*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y��Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:���������y��k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:���������y��S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������y��: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:���������y��
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
G__inference_block3_conv1_layer_call_and_return_conditional_losses_18887

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y��*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y��Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:���������y��k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:���������y��S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������y��: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:���������y��
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�(
__inference__traced_save_20375
file_prefix9
&read_disablecopyonread_dense_14_kernel:	�@4
&read_1_disablecopyonread_dense_14_bias:@:
(read_2_disablecopyonread_dense_15_kernel:@4
&read_3_disablecopyonread_dense_15_bias:F
,read_4_disablecopyonread_block1_conv1_kernel:@8
*read_5_disablecopyonread_block1_conv1_bias:@F
,read_6_disablecopyonread_block1_conv2_kernel:@@8
*read_7_disablecopyonread_block1_conv2_bias:@G
,read_8_disablecopyonread_block2_conv1_kernel:@�9
*read_9_disablecopyonread_block2_conv1_bias:	�I
-read_10_disablecopyonread_block2_conv2_kernel:��:
+read_11_disablecopyonread_block2_conv2_bias:	�I
-read_12_disablecopyonread_block3_conv1_kernel:��:
+read_13_disablecopyonread_block3_conv1_bias:	�I
-read_14_disablecopyonread_block3_conv2_kernel:��:
+read_15_disablecopyonread_block3_conv2_bias:	�I
-read_16_disablecopyonread_block3_conv3_kernel:��:
+read_17_disablecopyonread_block3_conv3_bias:	�I
-read_18_disablecopyonread_block4_conv1_kernel:��:
+read_19_disablecopyonread_block4_conv1_bias:	�I
-read_20_disablecopyonread_block4_conv2_kernel:��:
+read_21_disablecopyonread_block4_conv2_bias:	�I
-read_22_disablecopyonread_block4_conv3_kernel:��:
+read_23_disablecopyonread_block4_conv3_bias:	�I
-read_24_disablecopyonread_block5_conv1_kernel:��:
+read_25_disablecopyonread_block5_conv1_bias:	�I
-read_26_disablecopyonread_block5_conv2_kernel:��:
+read_27_disablecopyonread_block5_conv2_bias:	�I
-read_28_disablecopyonread_block5_conv3_kernel:��:
+read_29_disablecopyonread_block5_conv3_bias:	�-
#read_30_disablecopyonread_iteration:	 1
'read_31_disablecopyonread_learning_rate: C
0read_32_disablecopyonread_adam_m_dense_14_kernel:	�@C
0read_33_disablecopyonread_adam_v_dense_14_kernel:	�@<
.read_34_disablecopyonread_adam_m_dense_14_bias:@<
.read_35_disablecopyonread_adam_v_dense_14_bias:@B
0read_36_disablecopyonread_adam_m_dense_15_kernel:@B
0read_37_disablecopyonread_adam_v_dense_15_kernel:@<
.read_38_disablecopyonread_adam_m_dense_15_bias:<
.read_39_disablecopyonread_adam_v_dense_15_bias:+
!read_40_disablecopyonread_total_1: +
!read_41_disablecopyonread_count_1: )
read_42_disablecopyonread_total: )
read_43_disablecopyonread_count: 
savev2_const
identity_89��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_14_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_14_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_14_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_14_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_dense_15_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_dense_15_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:@z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_dense_15_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_dense_15_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_4/DisableCopyOnReadDisableCopyOnRead,read_4_disablecopyonread_block1_conv1_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp,read_4_disablecopyonread_block1_conv1_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:@~
Read_5/DisableCopyOnReadDisableCopyOnRead*read_5_disablecopyonread_block1_conv1_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp*read_5_disablecopyonread_block1_conv1_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_6/DisableCopyOnReadDisableCopyOnRead,read_6_disablecopyonread_block1_conv2_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp,read_6_disablecopyonread_block1_conv2_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@~
Read_7/DisableCopyOnReadDisableCopyOnRead*read_7_disablecopyonread_block1_conv2_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp*read_7_disablecopyonread_block1_conv2_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_8/DisableCopyOnReadDisableCopyOnRead,read_8_disablecopyonread_block2_conv1_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp,read_8_disablecopyonread_block2_conv1_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0w
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�n
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�~
Read_9/DisableCopyOnReadDisableCopyOnRead*read_9_disablecopyonread_block2_conv1_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp*read_9_disablecopyonread_block2_conv1_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_10/DisableCopyOnReadDisableCopyOnRead-read_10_disablecopyonread_block2_conv2_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp-read_10_disablecopyonread_block2_conv2_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_11/DisableCopyOnReadDisableCopyOnRead+read_11_disablecopyonread_block2_conv2_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp+read_11_disablecopyonread_block2_conv2_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_12/DisableCopyOnReadDisableCopyOnRead-read_12_disablecopyonread_block3_conv1_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp-read_12_disablecopyonread_block3_conv1_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_13/DisableCopyOnReadDisableCopyOnRead+read_13_disablecopyonread_block3_conv1_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp+read_13_disablecopyonread_block3_conv1_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_14/DisableCopyOnReadDisableCopyOnRead-read_14_disablecopyonread_block3_conv2_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp-read_14_disablecopyonread_block3_conv2_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_15/DisableCopyOnReadDisableCopyOnRead+read_15_disablecopyonread_block3_conv2_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp+read_15_disablecopyonread_block3_conv2_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_16/DisableCopyOnReadDisableCopyOnRead-read_16_disablecopyonread_block3_conv3_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp-read_16_disablecopyonread_block3_conv3_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_17/DisableCopyOnReadDisableCopyOnRead+read_17_disablecopyonread_block3_conv3_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp+read_17_disablecopyonread_block3_conv3_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_18/DisableCopyOnReadDisableCopyOnRead-read_18_disablecopyonread_block4_conv1_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp-read_18_disablecopyonread_block4_conv1_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_19/DisableCopyOnReadDisableCopyOnRead+read_19_disablecopyonread_block4_conv1_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp+read_19_disablecopyonread_block4_conv1_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_20/DisableCopyOnReadDisableCopyOnRead-read_20_disablecopyonread_block4_conv2_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp-read_20_disablecopyonread_block4_conv2_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_21/DisableCopyOnReadDisableCopyOnRead+read_21_disablecopyonread_block4_conv2_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp+read_21_disablecopyonread_block4_conv2_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_22/DisableCopyOnReadDisableCopyOnRead-read_22_disablecopyonread_block4_conv3_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp-read_22_disablecopyonread_block4_conv3_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_23/DisableCopyOnReadDisableCopyOnRead+read_23_disablecopyonread_block4_conv3_bias"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp+read_23_disablecopyonread_block4_conv3_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_24/DisableCopyOnReadDisableCopyOnRead-read_24_disablecopyonread_block5_conv1_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp-read_24_disablecopyonread_block5_conv1_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_25/DisableCopyOnReadDisableCopyOnRead+read_25_disablecopyonread_block5_conv1_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp+read_25_disablecopyonread_block5_conv1_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_26/DisableCopyOnReadDisableCopyOnRead-read_26_disablecopyonread_block5_conv2_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp-read_26_disablecopyonread_block5_conv2_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_27/DisableCopyOnReadDisableCopyOnRead+read_27_disablecopyonread_block5_conv2_bias"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp+read_27_disablecopyonread_block5_conv2_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_28/DisableCopyOnReadDisableCopyOnRead-read_28_disablecopyonread_block5_conv3_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp-read_28_disablecopyonread_block5_conv3_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_29/DisableCopyOnReadDisableCopyOnRead+read_29_disablecopyonread_block5_conv3_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp+read_29_disablecopyonread_block5_conv3_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:�x
Read_30/DisableCopyOnReadDisableCopyOnRead#read_30_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp#read_30_disablecopyonread_iteration^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_31/DisableCopyOnReadDisableCopyOnRead'read_31_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp'read_31_disablecopyonread_learning_rate^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_32/DisableCopyOnReadDisableCopyOnRead0read_32_disablecopyonread_adam_m_dense_14_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp0read_32_disablecopyonread_adam_m_dense_14_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_33/DisableCopyOnReadDisableCopyOnRead0read_33_disablecopyonread_adam_v_dense_14_kernel"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp0read_33_disablecopyonread_adam_v_dense_14_kernel^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_34/DisableCopyOnReadDisableCopyOnRead.read_34_disablecopyonread_adam_m_dense_14_bias"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp.read_34_disablecopyonread_adam_m_dense_14_bias^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_35/DisableCopyOnReadDisableCopyOnRead.read_35_disablecopyonread_adam_v_dense_14_bias"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp.read_35_disablecopyonread_adam_v_dense_14_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_36/DisableCopyOnReadDisableCopyOnRead0read_36_disablecopyonread_adam_m_dense_15_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp0read_36_disablecopyonread_adam_m_dense_15_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_37/DisableCopyOnReadDisableCopyOnRead0read_37_disablecopyonread_adam_v_dense_15_kernel"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp0read_37_disablecopyonread_adam_v_dense_15_kernel^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_38/DisableCopyOnReadDisableCopyOnRead.read_38_disablecopyonread_adam_m_dense_15_bias"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp.read_38_disablecopyonread_adam_m_dense_15_bias^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_39/DisableCopyOnReadDisableCopyOnRead.read_39_disablecopyonread_adam_v_dense_15_bias"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp.read_39_disablecopyonread_adam_v_dense_15_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_40/DisableCopyOnReadDisableCopyOnRead!read_40_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp!read_40_disablecopyonread_total_1^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_41/DisableCopyOnReadDisableCopyOnRead!read_41_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp!read_41_disablecopyonread_count_1^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_42/DisableCopyOnReadDisableCopyOnReadread_42_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOpread_42_disablecopyonread_total^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_43/DisableCopyOnReadDisableCopyOnReadread_43_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOpread_43_disablecopyonread_count^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*�
value�B�-B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *;
dtypes1
/2-	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_88Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_89IdentityIdentity_88:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_89Identity_89:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:/+
)
_user_specified_namedense_14/kernel:-)
'
_user_specified_namedense_14/bias:/+
)
_user_specified_namedense_15/kernel:-)
'
_user_specified_namedense_15/bias:3/
-
_user_specified_nameblock1_conv1/kernel:1-
+
_user_specified_nameblock1_conv1/bias:3/
-
_user_specified_nameblock1_conv2/kernel:1-
+
_user_specified_nameblock1_conv2/bias:3	/
-
_user_specified_nameblock2_conv1/kernel:1
-
+
_user_specified_nameblock2_conv1/bias:3/
-
_user_specified_nameblock2_conv2/kernel:1-
+
_user_specified_nameblock2_conv2/bias:3/
-
_user_specified_nameblock3_conv1/kernel:1-
+
_user_specified_nameblock3_conv1/bias:3/
-
_user_specified_nameblock3_conv2/kernel:1-
+
_user_specified_nameblock3_conv2/bias:3/
-
_user_specified_nameblock3_conv3/kernel:1-
+
_user_specified_nameblock3_conv3/bias:3/
-
_user_specified_nameblock4_conv1/kernel:1-
+
_user_specified_nameblock4_conv1/bias:3/
-
_user_specified_nameblock4_conv2/kernel:1-
+
_user_specified_nameblock4_conv2/bias:3/
-
_user_specified_nameblock4_conv3/kernel:1-
+
_user_specified_nameblock4_conv3/bias:3/
-
_user_specified_nameblock5_conv1/kernel:1-
+
_user_specified_nameblock5_conv1/bias:3/
-
_user_specified_nameblock5_conv2/kernel:1-
+
_user_specified_nameblock5_conv2/bias:3/
-
_user_specified_nameblock5_conv3/kernel:1-
+
_user_specified_nameblock5_conv3/bias:)%
#
_user_specified_name	iteration:- )
'
_user_specified_namelearning_rate:6!2
0
_user_specified_nameAdam/m/dense_14/kernel:6"2
0
_user_specified_nameAdam/v/dense_14/kernel:4#0
.
_user_specified_nameAdam/m/dense_14/bias:4$0
.
_user_specified_nameAdam/v/dense_14/bias:6%2
0
_user_specified_nameAdam/m/dense_15/kernel:6&2
0
_user_specified_nameAdam/v/dense_15/kernel:4'0
.
_user_specified_nameAdam/m/dense_15/bias:4(0
.
_user_specified_nameAdam/v/dense_15/bias:')#
!
_user_specified_name	total_1:'*#
!
_user_specified_name	count_1:%+!

_user_specified_nametotal:%,!

_user_specified_namecount:=-9

_output_shapes
: 

_user_specified_nameConst
�
�
G__inference_block4_conv2_layer_call_and_return_conditional_losses_18952

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������<Q�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������<Q�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������<Q�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������<Q�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
R
6__inference_global_max_pooling2d_6_layer_call_fn_20083

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_global_max_pooling2d_6_layer_call_and_return_conditional_losses_18803i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
F__inference_block2_pool_layer_call_and_return_conditional_losses_19868

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
,__inference_block2_conv2_layer_call_fn_19847

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_18870z
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:������������
 
_user_specified_nameinputs:%!

_user_specified_name19841:%!

_user_specified_name19843
�
�
G__inference_block2_conv2_layer_call_and_return_conditional_losses_19858

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:������������l
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:������������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
`
D__inference_flatten_7_layer_call_and_return_conditional_losses_19728

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_flatten_7_layer_call_and_return_conditional_losses_19393

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
,__inference_block5_conv3_layer_call_fn_20057

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������(�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_19017x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������(�<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������(�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������(�
 
_user_specified_nameinputs:%!

_user_specified_name20051:%!

_user_specified_name20053
�
�
,__inference_block5_conv1_layer_call_fn_20017

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������(�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_18985x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������(�<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������(�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������(�
 
_user_specified_nameinputs:%!

_user_specified_name20011:%!

_user_specified_name20013
�
b
F__inference_block1_pool_layer_call_and_return_conditional_losses_19818

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
F__inference_block4_pool_layer_call_and_return_conditional_losses_20008

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
,__inference_block5_conv2_layer_call_fn_20037

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������(�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_19001x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������(�<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������(�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������(�
 
_user_specified_nameinputs:%!

_user_specified_name20031:%!

_user_specified_name20033
�
�
,__inference_block3_conv2_layer_call_fn_19897

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������y��*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_18903y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:���������y��<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������y��: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:���������y��
 
_user_specified_nameinputs:%!

_user_specified_name19891:%!

_user_specified_name19893
�
�
G__inference_block1_conv2_layer_call_and_return_conditional_losses_18837

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
G__inference_block4_conv3_layer_call_and_return_conditional_losses_18968

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������<Q�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������<Q�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������<Q�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������<Q�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
G__inference_block1_conv1_layer_call_and_return_conditional_losses_19788

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
%__inference_vgg16_layer_call_fn_19158
input_7!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_19026p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_7:%!

_user_specified_name19104:%!

_user_specified_name19106:%!

_user_specified_name19108:%!

_user_specified_name19110:%!

_user_specified_name19112:%!

_user_specified_name19114:%!

_user_specified_name19116:%!

_user_specified_name19118:%	!

_user_specified_name19120:%
!

_user_specified_name19122:%!

_user_specified_name19124:%!

_user_specified_name19126:%!

_user_specified_name19128:%!

_user_specified_name19130:%!

_user_specified_name19132:%!

_user_specified_name19134:%!

_user_specified_name19136:%!

_user_specified_name19138:%!

_user_specified_name19140:%!

_user_specified_name19142:%!

_user_specified_name19144:%!

_user_specified_name19146:%!

_user_specified_name19148:%!

_user_specified_name19150:%!

_user_specified_name19152:%!

_user_specified_name19154
�
E
)__inference_flatten_7_layer_call_fn_19722

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_flatten_7_layer_call_and_return_conditional_losses_19393a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
,__inference_sequential_7_layer_call_fn_19626
vgg16_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�

unknown_25:	�@

unknown_26:@

unknown_27:@

unknown_28:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_19496o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_namevgg16_input:%!

_user_specified_name19564:%!

_user_specified_name19566:%!

_user_specified_name19568:%!

_user_specified_name19570:%!

_user_specified_name19572:%!

_user_specified_name19574:%!

_user_specified_name19576:%!

_user_specified_name19578:%	!

_user_specified_name19580:%
!

_user_specified_name19582:%!

_user_specified_name19584:%!

_user_specified_name19586:%!

_user_specified_name19588:%!

_user_specified_name19590:%!

_user_specified_name19592:%!

_user_specified_name19594:%!

_user_specified_name19596:%!

_user_specified_name19598:%!

_user_specified_name19600:%!

_user_specified_name19602:%!

_user_specified_name19604:%!

_user_specified_name19606:%!

_user_specified_name19608:%!

_user_specified_name19610:%!

_user_specified_name19612:%!

_user_specified_name19614:%!

_user_specified_name19616:%!

_user_specified_name19618:%!

_user_specified_name19620:%!

_user_specified_name19622
�'
�	
G__inference_sequential_7_layer_call_and_return_conditional_losses_19428
vgg16_input%
vgg16_19335:@
vgg16_19337:@%
vgg16_19339:@@
vgg16_19341:@&
vgg16_19343:@�
vgg16_19345:	�'
vgg16_19347:��
vgg16_19349:	�'
vgg16_19351:��
vgg16_19353:	�'
vgg16_19355:��
vgg16_19357:	�'
vgg16_19359:��
vgg16_19361:	�'
vgg16_19363:��
vgg16_19365:	�'
vgg16_19367:��
vgg16_19369:	�'
vgg16_19371:��
vgg16_19373:	�'
vgg16_19375:��
vgg16_19377:	�'
vgg16_19379:��
vgg16_19381:	�'
vgg16_19383:��
vgg16_19385:	�!
dense_14_19406:	�@
dense_14_19408:@ 
dense_15_19422:@
dense_15_19424:
identity�� dense_14/StatefulPartitionedCall� dense_15/StatefulPartitionedCall�vgg16/StatefulPartitionedCall�
vgg16/StatefulPartitionedCallStatefulPartitionedCallvgg16_inputvgg16_19335vgg16_19337vgg16_19339vgg16_19341vgg16_19343vgg16_19345vgg16_19347vgg16_19349vgg16_19351vgg16_19353vgg16_19355vgg16_19357vgg16_19359vgg16_19361vgg16_19363vgg16_19365vgg16_19367vgg16_19369vgg16_19371vgg16_19373vgg16_19375vgg16_19377vgg16_19379vgg16_19381vgg16_19383vgg16_19385*&
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_19026�
flatten_7/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_flatten_7_layer_call_and_return_conditional_losses_19393�
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_14_19406dense_14_19408*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_14_layer_call_and_return_conditional_losses_19405�
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_19422dense_15_19424*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_15_layer_call_and_return_conditional_losses_19421x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_namevgg16_input:%!

_user_specified_name19335:%!

_user_specified_name19337:%!

_user_specified_name19339:%!

_user_specified_name19341:%!

_user_specified_name19343:%!

_user_specified_name19345:%!

_user_specified_name19347:%!

_user_specified_name19349:%	!

_user_specified_name19351:%
!

_user_specified_name19353:%!

_user_specified_name19355:%!

_user_specified_name19357:%!

_user_specified_name19359:%!

_user_specified_name19361:%!

_user_specified_name19363:%!

_user_specified_name19365:%!

_user_specified_name19367:%!

_user_specified_name19369:%!

_user_specified_name19371:%!

_user_specified_name19373:%!

_user_specified_name19375:%!

_user_specified_name19377:%!

_user_specified_name19379:%!

_user_specified_name19381:%!

_user_specified_name19383:%!

_user_specified_name19385:%!

_user_specified_name19406:%!

_user_specified_name19408:%!

_user_specified_name19422:%!

_user_specified_name19424
�

�
C__inference_dense_15_layer_call_and_return_conditional_losses_19421

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
G__inference_block3_conv2_layer_call_and_return_conditional_losses_18903

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y��*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y��Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:���������y��k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:���������y��S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������y��: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:���������y��
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
G__inference_block1_conv1_layer_call_and_return_conditional_losses_18821

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
G__inference_block2_conv1_layer_call_and_return_conditional_losses_18854

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:������������l
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:������������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�
!__inference__traced_restore_20516
file_prefix3
 assignvariableop_dense_14_kernel:	�@.
 assignvariableop_1_dense_14_bias:@4
"assignvariableop_2_dense_15_kernel:@.
 assignvariableop_3_dense_15_bias:@
&assignvariableop_4_block1_conv1_kernel:@2
$assignvariableop_5_block1_conv1_bias:@@
&assignvariableop_6_block1_conv2_kernel:@@2
$assignvariableop_7_block1_conv2_bias:@A
&assignvariableop_8_block2_conv1_kernel:@�3
$assignvariableop_9_block2_conv1_bias:	�C
'assignvariableop_10_block2_conv2_kernel:��4
%assignvariableop_11_block2_conv2_bias:	�C
'assignvariableop_12_block3_conv1_kernel:��4
%assignvariableop_13_block3_conv1_bias:	�C
'assignvariableop_14_block3_conv2_kernel:��4
%assignvariableop_15_block3_conv2_bias:	�C
'assignvariableop_16_block3_conv3_kernel:��4
%assignvariableop_17_block3_conv3_bias:	�C
'assignvariableop_18_block4_conv1_kernel:��4
%assignvariableop_19_block4_conv1_bias:	�C
'assignvariableop_20_block4_conv2_kernel:��4
%assignvariableop_21_block4_conv2_bias:	�C
'assignvariableop_22_block4_conv3_kernel:��4
%assignvariableop_23_block4_conv3_bias:	�C
'assignvariableop_24_block5_conv1_kernel:��4
%assignvariableop_25_block5_conv1_bias:	�C
'assignvariableop_26_block5_conv2_kernel:��4
%assignvariableop_27_block5_conv2_bias:	�C
'assignvariableop_28_block5_conv3_kernel:��4
%assignvariableop_29_block5_conv3_bias:	�'
assignvariableop_30_iteration:	 +
!assignvariableop_31_learning_rate: =
*assignvariableop_32_adam_m_dense_14_kernel:	�@=
*assignvariableop_33_adam_v_dense_14_kernel:	�@6
(assignvariableop_34_adam_m_dense_14_bias:@6
(assignvariableop_35_adam_v_dense_14_bias:@<
*assignvariableop_36_adam_m_dense_15_kernel:@<
*assignvariableop_37_adam_v_dense_15_kernel:@6
(assignvariableop_38_adam_m_dense_15_bias:6
(assignvariableop_39_adam_v_dense_15_bias:%
assignvariableop_40_total_1: %
assignvariableop_41_count_1: #
assignvariableop_42_total: #
assignvariableop_43_count: 
identity_45��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*�
value�B�-B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::*;
dtypes1
/2-	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_dense_14_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_14_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_15_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_15_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp&assignvariableop_4_block1_conv1_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp$assignvariableop_5_block1_conv1_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp&assignvariableop_6_block1_conv2_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp$assignvariableop_7_block1_conv2_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp&assignvariableop_8_block2_conv1_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp$assignvariableop_9_block2_conv1_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp'assignvariableop_10_block2_conv2_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp%assignvariableop_11_block2_conv2_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp'assignvariableop_12_block3_conv1_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp%assignvariableop_13_block3_conv1_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp'assignvariableop_14_block3_conv2_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp%assignvariableop_15_block3_conv2_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp'assignvariableop_16_block3_conv3_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp%assignvariableop_17_block3_conv3_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp'assignvariableop_18_block4_conv1_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp%assignvariableop_19_block4_conv1_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp'assignvariableop_20_block4_conv2_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp%assignvariableop_21_block4_conv2_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp'assignvariableop_22_block4_conv3_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp%assignvariableop_23_block4_conv3_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp'assignvariableop_24_block5_conv1_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp%assignvariableop_25_block5_conv1_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp'assignvariableop_26_block5_conv2_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp%assignvariableop_27_block5_conv2_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp'assignvariableop_28_block5_conv3_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp%assignvariableop_29_block5_conv3_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_iterationIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp!assignvariableop_31_learning_rateIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_m_dense_14_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_v_dense_14_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_m_dense_14_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_v_dense_14_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_m_dense_15_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_v_dense_15_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_m_dense_15_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_v_dense_15_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_total_1Identity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpassignvariableop_41_count_1Identity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpassignvariableop_42_totalIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpassignvariableop_43_countIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_44Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_45IdentityIdentity_44:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_45Identity_45:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_43AssignVariableOp_432(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:/+
)
_user_specified_namedense_14/kernel:-)
'
_user_specified_namedense_14/bias:/+
)
_user_specified_namedense_15/kernel:-)
'
_user_specified_namedense_15/bias:3/
-
_user_specified_nameblock1_conv1/kernel:1-
+
_user_specified_nameblock1_conv1/bias:3/
-
_user_specified_nameblock1_conv2/kernel:1-
+
_user_specified_nameblock1_conv2/bias:3	/
-
_user_specified_nameblock2_conv1/kernel:1
-
+
_user_specified_nameblock2_conv1/bias:3/
-
_user_specified_nameblock2_conv2/kernel:1-
+
_user_specified_nameblock2_conv2/bias:3/
-
_user_specified_nameblock3_conv1/kernel:1-
+
_user_specified_nameblock3_conv1/bias:3/
-
_user_specified_nameblock3_conv2/kernel:1-
+
_user_specified_nameblock3_conv2/bias:3/
-
_user_specified_nameblock3_conv3/kernel:1-
+
_user_specified_nameblock3_conv3/bias:3/
-
_user_specified_nameblock4_conv1/kernel:1-
+
_user_specified_nameblock4_conv1/bias:3/
-
_user_specified_nameblock4_conv2/kernel:1-
+
_user_specified_nameblock4_conv2/bias:3/
-
_user_specified_nameblock4_conv3/kernel:1-
+
_user_specified_nameblock4_conv3/bias:3/
-
_user_specified_nameblock5_conv1/kernel:1-
+
_user_specified_nameblock5_conv1/bias:3/
-
_user_specified_nameblock5_conv2/kernel:1-
+
_user_specified_nameblock5_conv2/bias:3/
-
_user_specified_nameblock5_conv3/kernel:1-
+
_user_specified_nameblock5_conv3/bias:)%
#
_user_specified_name	iteration:- )
'
_user_specified_namelearning_rate:6!2
0
_user_specified_nameAdam/m/dense_14/kernel:6"2
0
_user_specified_nameAdam/v/dense_14/kernel:4#0
.
_user_specified_nameAdam/m/dense_14/bias:4$0
.
_user_specified_nameAdam/v/dense_14/bias:6%2
0
_user_specified_nameAdam/m/dense_15/kernel:6&2
0
_user_specified_nameAdam/v/dense_15/kernel:4'0
.
_user_specified_nameAdam/m/dense_15/bias:4(0
.
_user_specified_nameAdam/v/dense_15/bias:')#
!
_user_specified_name	total_1:'*#
!
_user_specified_name	count_1:%+!

_user_specified_nametotal:%,!

_user_specified_namecount
�
m
Q__inference_global_max_pooling2d_6_layer_call_and_return_conditional_losses_20089

inputs
identityf
Max/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:������������������]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
G__inference_block5_conv2_layer_call_and_return_conditional_losses_20048

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������(�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������(�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������(�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������(�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
,__inference_block1_conv1_layer_call_fn_19777

inputs!
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_18821y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:%!

_user_specified_name19771:%!

_user_specified_name19773
�
�
,__inference_block4_conv3_layer_call_fn_19987

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������<Q�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_18968x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������<Q�<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������<Q�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������<Q�
 
_user_specified_nameinputs:%!

_user_specified_name19981:%!

_user_specified_name19983
�
�
(__inference_dense_15_layer_call_fn_19757

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_15_layer_call_and_return_conditional_losses_19421o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:%!

_user_specified_name19751:%!

_user_specified_name19753
�
�
G__inference_block4_conv2_layer_call_and_return_conditional_losses_19978

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������<Q�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������<Q�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������<Q�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������<Q�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
G__inference_block3_conv1_layer_call_and_return_conditional_losses_19888

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y��*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y��Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:���������y��k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:���������y��S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������y��: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:���������y��
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
,__inference_block4_conv2_layer_call_fn_19967

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������<Q�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_18952x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������<Q�<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������<Q�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������<Q�
 
_user_specified_nameinputs:%!

_user_specified_name19961:%!

_user_specified_name19963
�
�
,__inference_sequential_7_layer_call_fn_19561
vgg16_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�

unknown_25:	�@

unknown_26:@

unknown_27:@

unknown_28:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_19428o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_namevgg16_input:%!

_user_specified_name19499:%!

_user_specified_name19501:%!

_user_specified_name19503:%!

_user_specified_name19505:%!

_user_specified_name19507:%!

_user_specified_name19509:%!

_user_specified_name19511:%!

_user_specified_name19513:%	!

_user_specified_name19515:%
!

_user_specified_name19517:%!

_user_specified_name19519:%!

_user_specified_name19521:%!

_user_specified_name19523:%!

_user_specified_name19525:%!

_user_specified_name19527:%!

_user_specified_name19529:%!

_user_specified_name19531:%!

_user_specified_name19533:%!

_user_specified_name19535:%!

_user_specified_name19537:%!

_user_specified_name19539:%!

_user_specified_name19541:%!

_user_specified_name19543:%!

_user_specified_name19545:%!

_user_specified_name19547:%!

_user_specified_name19549:%!

_user_specified_name19551:%!

_user_specified_name19553:%!

_user_specified_name19555:%!

_user_specified_name19557
�

�
C__inference_dense_14_layer_call_and_return_conditional_losses_19748

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
G
+__inference_block4_pool_layer_call_fn_20003

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_18782�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
G__inference_block1_conv2_layer_call_and_return_conditional_losses_19808

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�a
�
@__inference_vgg16_layer_call_and_return_conditional_losses_19101
input_7,
block1_conv1_19029:@ 
block1_conv1_19031:@,
block1_conv2_19034:@@ 
block1_conv2_19036:@-
block2_conv1_19040:@�!
block2_conv1_19042:	�.
block2_conv2_19045:��!
block2_conv2_19047:	�.
block3_conv1_19051:��!
block3_conv1_19053:	�.
block3_conv2_19056:��!
block3_conv2_19058:	�.
block3_conv3_19061:��!
block3_conv3_19063:	�.
block4_conv1_19067:��!
block4_conv1_19069:	�.
block4_conv2_19072:��!
block4_conv2_19074:	�.
block4_conv3_19077:��!
block4_conv3_19079:	�.
block5_conv1_19083:��!
block5_conv1_19085:	�.
block5_conv2_19088:��!
block5_conv2_19090:	�.
block5_conv3_19093:��!
block5_conv3_19095:	�
identity��$block1_conv1/StatefulPartitionedCall�$block1_conv2/StatefulPartitionedCall�$block2_conv1/StatefulPartitionedCall�$block2_conv2/StatefulPartitionedCall�$block3_conv1/StatefulPartitionedCall�$block3_conv2/StatefulPartitionedCall�$block3_conv3/StatefulPartitionedCall�$block4_conv1/StatefulPartitionedCall�$block4_conv2/StatefulPartitionedCall�$block4_conv3/StatefulPartitionedCall�$block5_conv1/StatefulPartitionedCall�$block5_conv2/StatefulPartitionedCall�$block5_conv3/StatefulPartitionedCall�
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_7block1_conv1_19029block1_conv1_19031*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_18821�
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_19034block1_conv2_19036*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_18837�
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_18752�
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_19040block2_conv1_19042*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_18854�
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_19045block2_conv2_19047*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_18870�
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������y��* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_18762�
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_19051block3_conv1_19053*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������y��*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_18887�
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_19056block3_conv2_19058*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������y��*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_18903�
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_19061block3_conv3_19063*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������y��*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_18919�
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������<Q�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_18772�
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_19067block4_conv1_19069*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������<Q�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_18936�
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_19072block4_conv2_19074*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������<Q�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_18952�
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_19077block4_conv3_19079*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������<Q�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_18968�
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������(�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_18782�
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_19083block5_conv1_19085*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������(�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_18985�
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_19088block5_conv2_19090*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������(�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_19001�
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_19093block5_conv3_19095*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������(�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_19017�
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_18792�
&global_max_pooling2d_6/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_global_max_pooling2d_6_layer_call_and_return_conditional_losses_18803
IdentityIdentity/global_max_pooling2d_6/PartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_7:%!

_user_specified_name19029:%!

_user_specified_name19031:%!

_user_specified_name19034:%!

_user_specified_name19036:%!

_user_specified_name19040:%!

_user_specified_name19042:%!

_user_specified_name19045:%!

_user_specified_name19047:%	!

_user_specified_name19051:%
!

_user_specified_name19053:%!

_user_specified_name19056:%!

_user_specified_name19058:%!

_user_specified_name19061:%!

_user_specified_name19063:%!

_user_specified_name19067:%!

_user_specified_name19069:%!

_user_specified_name19072:%!

_user_specified_name19074:%!

_user_specified_name19077:%!

_user_specified_name19079:%!

_user_specified_name19083:%!

_user_specified_name19085:%!

_user_specified_name19088:%!

_user_specified_name19090:%!

_user_specified_name19093:%!

_user_specified_name19095
�
m
Q__inference_global_max_pooling2d_6_layer_call_and_return_conditional_losses_18803

inputs
identityf
Max/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:������������������]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
G__inference_block5_conv3_layer_call_and_return_conditional_losses_19017

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������(�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������(�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������(�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������(�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
C__inference_dense_14_layer_call_and_return_conditional_losses_19405

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
G
+__inference_block5_pool_layer_call_fn_20073

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_18792�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
G__inference_block3_conv3_layer_call_and_return_conditional_losses_18919

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y��*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y��Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:���������y��k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:���������y��S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������y��: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:���������y��
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
(__inference_dense_14_layer_call_fn_19737

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_14_layer_call_and_return_conditional_losses_19405o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:%!

_user_specified_name19731:%!

_user_specified_name19733
�
b
F__inference_block4_pool_layer_call_and_return_conditional_losses_18782

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
F__inference_block5_pool_layer_call_and_return_conditional_losses_20078

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
,__inference_block1_conv2_layer_call_fn_19797

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_18837y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs:%!

_user_specified_name19791:%!

_user_specified_name19793
�
G
+__inference_block2_pool_layer_call_fn_19863

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_18762�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
G__inference_block5_conv2_layer_call_and_return_conditional_losses_19001

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������(�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������(�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������(�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������(�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
#__inference_signature_wrapper_19717
vgg16_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�

unknown_25:	�@

unknown_26:@

unknown_27:@

unknown_28:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__wrapped_model_18747o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_namevgg16_input:%!

_user_specified_name19655:%!

_user_specified_name19657:%!

_user_specified_name19659:%!

_user_specified_name19661:%!

_user_specified_name19663:%!

_user_specified_name19665:%!

_user_specified_name19667:%!

_user_specified_name19669:%	!

_user_specified_name19671:%
!

_user_specified_name19673:%!

_user_specified_name19675:%!

_user_specified_name19677:%!

_user_specified_name19679:%!

_user_specified_name19681:%!

_user_specified_name19683:%!

_user_specified_name19685:%!

_user_specified_name19687:%!

_user_specified_name19689:%!

_user_specified_name19691:%!

_user_specified_name19693:%!

_user_specified_name19695:%!

_user_specified_name19697:%!

_user_specified_name19699:%!

_user_specified_name19701:%!

_user_specified_name19703:%!

_user_specified_name19705:%!

_user_specified_name19707:%!

_user_specified_name19709:%!

_user_specified_name19711:%!

_user_specified_name19713
�
�
,__inference_block4_conv1_layer_call_fn_19947

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������<Q�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_18936x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������<Q�<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������<Q�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������<Q�
 
_user_specified_nameinputs:%!

_user_specified_name19941:%!

_user_specified_name19943
�
�
G__inference_block5_conv1_layer_call_and_return_conditional_losses_20028

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������(�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������(�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������(�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������(�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
N
"__inference__update_step_xla_17824
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:@: *
	_noinline(:H D

_output_shapes

:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
G
+__inference_block3_pool_layer_call_fn_19933

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_18772�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
G__inference_block4_conv1_layer_call_and_return_conditional_losses_19958

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������<Q�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������<Q�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������<Q�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������<Q�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
G
+__inference_block1_pool_layer_call_fn_19813

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_18752�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_17829
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�'
�	
G__inference_sequential_7_layer_call_and_return_conditional_losses_19496
vgg16_input%
vgg16_19431:@
vgg16_19433:@%
vgg16_19435:@@
vgg16_19437:@&
vgg16_19439:@�
vgg16_19441:	�'
vgg16_19443:��
vgg16_19445:	�'
vgg16_19447:��
vgg16_19449:	�'
vgg16_19451:��
vgg16_19453:	�'
vgg16_19455:��
vgg16_19457:	�'
vgg16_19459:��
vgg16_19461:	�'
vgg16_19463:��
vgg16_19465:	�'
vgg16_19467:��
vgg16_19469:	�'
vgg16_19471:��
vgg16_19473:	�'
vgg16_19475:��
vgg16_19477:	�'
vgg16_19479:��
vgg16_19481:	�!
dense_14_19485:	�@
dense_14_19487:@ 
dense_15_19490:@
dense_15_19492:
identity�� dense_14/StatefulPartitionedCall� dense_15/StatefulPartitionedCall�vgg16/StatefulPartitionedCall�
vgg16/StatefulPartitionedCallStatefulPartitionedCallvgg16_inputvgg16_19431vgg16_19433vgg16_19435vgg16_19437vgg16_19439vgg16_19441vgg16_19443vgg16_19445vgg16_19447vgg16_19449vgg16_19451vgg16_19453vgg16_19455vgg16_19457vgg16_19459vgg16_19461vgg16_19463vgg16_19465vgg16_19467vgg16_19469vgg16_19471vgg16_19473vgg16_19475vgg16_19477vgg16_19479vgg16_19481*&
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_19101�
flatten_7/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_flatten_7_layer_call_and_return_conditional_losses_19393�
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_14_19485dense_14_19487*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_14_layer_call_and_return_conditional_losses_19405�
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_19490dense_15_19492*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_15_layer_call_and_return_conditional_losses_19421x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_namevgg16_input:%!

_user_specified_name19431:%!

_user_specified_name19433:%!

_user_specified_name19435:%!

_user_specified_name19437:%!

_user_specified_name19439:%!

_user_specified_name19441:%!

_user_specified_name19443:%!

_user_specified_name19445:%	!

_user_specified_name19447:%
!

_user_specified_name19449:%!

_user_specified_name19451:%!

_user_specified_name19453:%!

_user_specified_name19455:%!

_user_specified_name19457:%!

_user_specified_name19459:%!

_user_specified_name19461:%!

_user_specified_name19463:%!

_user_specified_name19465:%!

_user_specified_name19467:%!

_user_specified_name19469:%!

_user_specified_name19471:%!

_user_specified_name19473:%!

_user_specified_name19475:%!

_user_specified_name19477:%!

_user_specified_name19479:%!

_user_specified_name19481:%!

_user_specified_name19485:%!

_user_specified_name19487:%!

_user_specified_name19490:%!

_user_specified_name19492
�
�
%__inference_vgg16_layer_call_fn_19215
input_7!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_19101p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_7:%!

_user_specified_name19161:%!

_user_specified_name19163:%!

_user_specified_name19165:%!

_user_specified_name19167:%!

_user_specified_name19169:%!

_user_specified_name19171:%!

_user_specified_name19173:%!

_user_specified_name19175:%	!

_user_specified_name19177:%
!

_user_specified_name19179:%!

_user_specified_name19181:%!

_user_specified_name19183:%!

_user_specified_name19185:%!

_user_specified_name19187:%!

_user_specified_name19189:%!

_user_specified_name19191:%!

_user_specified_name19193:%!

_user_specified_name19195:%!

_user_specified_name19197:%!

_user_specified_name19199:%!

_user_specified_name19201:%!

_user_specified_name19203:%!

_user_specified_name19205:%!

_user_specified_name19207:%!

_user_specified_name19209:%!

_user_specified_name19211
�
b
F__inference_block3_pool_layer_call_and_return_conditional_losses_18772

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
G__inference_block2_conv2_layer_call_and_return_conditional_losses_18870

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:������������l
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:������������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
b
F__inference_block1_pool_layer_call_and_return_conditional_losses_18752

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�!
 __inference__wrapped_model_18747
vgg16_inputX
>sequential_7_vgg16_block1_conv1_conv2d_readvariableop_resource:@M
?sequential_7_vgg16_block1_conv1_biasadd_readvariableop_resource:@X
>sequential_7_vgg16_block1_conv2_conv2d_readvariableop_resource:@@M
?sequential_7_vgg16_block1_conv2_biasadd_readvariableop_resource:@Y
>sequential_7_vgg16_block2_conv1_conv2d_readvariableop_resource:@�N
?sequential_7_vgg16_block2_conv1_biasadd_readvariableop_resource:	�Z
>sequential_7_vgg16_block2_conv2_conv2d_readvariableop_resource:��N
?sequential_7_vgg16_block2_conv2_biasadd_readvariableop_resource:	�Z
>sequential_7_vgg16_block3_conv1_conv2d_readvariableop_resource:��N
?sequential_7_vgg16_block3_conv1_biasadd_readvariableop_resource:	�Z
>sequential_7_vgg16_block3_conv2_conv2d_readvariableop_resource:��N
?sequential_7_vgg16_block3_conv2_biasadd_readvariableop_resource:	�Z
>sequential_7_vgg16_block3_conv3_conv2d_readvariableop_resource:��N
?sequential_7_vgg16_block3_conv3_biasadd_readvariableop_resource:	�Z
>sequential_7_vgg16_block4_conv1_conv2d_readvariableop_resource:��N
?sequential_7_vgg16_block4_conv1_biasadd_readvariableop_resource:	�Z
>sequential_7_vgg16_block4_conv2_conv2d_readvariableop_resource:��N
?sequential_7_vgg16_block4_conv2_biasadd_readvariableop_resource:	�Z
>sequential_7_vgg16_block4_conv3_conv2d_readvariableop_resource:��N
?sequential_7_vgg16_block4_conv3_biasadd_readvariableop_resource:	�Z
>sequential_7_vgg16_block5_conv1_conv2d_readvariableop_resource:��N
?sequential_7_vgg16_block5_conv1_biasadd_readvariableop_resource:	�Z
>sequential_7_vgg16_block5_conv2_conv2d_readvariableop_resource:��N
?sequential_7_vgg16_block5_conv2_biasadd_readvariableop_resource:	�Z
>sequential_7_vgg16_block5_conv3_conv2d_readvariableop_resource:��N
?sequential_7_vgg16_block5_conv3_biasadd_readvariableop_resource:	�G
4sequential_7_dense_14_matmul_readvariableop_resource:	�@C
5sequential_7_dense_14_biasadd_readvariableop_resource:@F
4sequential_7_dense_15_matmul_readvariableop_resource:@C
5sequential_7_dense_15_biasadd_readvariableop_resource:
identity��,sequential_7/dense_14/BiasAdd/ReadVariableOp�+sequential_7/dense_14/MatMul/ReadVariableOp�,sequential_7/dense_15/BiasAdd/ReadVariableOp�+sequential_7/dense_15/MatMul/ReadVariableOp�6sequential_7/vgg16/block1_conv1/BiasAdd/ReadVariableOp�5sequential_7/vgg16/block1_conv1/Conv2D/ReadVariableOp�6sequential_7/vgg16/block1_conv2/BiasAdd/ReadVariableOp�5sequential_7/vgg16/block1_conv2/Conv2D/ReadVariableOp�6sequential_7/vgg16/block2_conv1/BiasAdd/ReadVariableOp�5sequential_7/vgg16/block2_conv1/Conv2D/ReadVariableOp�6sequential_7/vgg16/block2_conv2/BiasAdd/ReadVariableOp�5sequential_7/vgg16/block2_conv2/Conv2D/ReadVariableOp�6sequential_7/vgg16/block3_conv1/BiasAdd/ReadVariableOp�5sequential_7/vgg16/block3_conv1/Conv2D/ReadVariableOp�6sequential_7/vgg16/block3_conv2/BiasAdd/ReadVariableOp�5sequential_7/vgg16/block3_conv2/Conv2D/ReadVariableOp�6sequential_7/vgg16/block3_conv3/BiasAdd/ReadVariableOp�5sequential_7/vgg16/block3_conv3/Conv2D/ReadVariableOp�6sequential_7/vgg16/block4_conv1/BiasAdd/ReadVariableOp�5sequential_7/vgg16/block4_conv1/Conv2D/ReadVariableOp�6sequential_7/vgg16/block4_conv2/BiasAdd/ReadVariableOp�5sequential_7/vgg16/block4_conv2/Conv2D/ReadVariableOp�6sequential_7/vgg16/block4_conv3/BiasAdd/ReadVariableOp�5sequential_7/vgg16/block4_conv3/Conv2D/ReadVariableOp�6sequential_7/vgg16/block5_conv1/BiasAdd/ReadVariableOp�5sequential_7/vgg16/block5_conv1/Conv2D/ReadVariableOp�6sequential_7/vgg16/block5_conv2/BiasAdd/ReadVariableOp�5sequential_7/vgg16/block5_conv2/Conv2D/ReadVariableOp�6sequential_7/vgg16/block5_conv3/BiasAdd/ReadVariableOp�5sequential_7/vgg16/block5_conv3/Conv2D/ReadVariableOp�
5sequential_7/vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp>sequential_7_vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
&sequential_7/vgg16/block1_conv1/Conv2DConv2Dvgg16_input=sequential_7/vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
6sequential_7/vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
'sequential_7/vgg16/block1_conv1/BiasAddBiasAdd/sequential_7/vgg16/block1_conv1/Conv2D:output:0>sequential_7/vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@�
$sequential_7/vgg16/block1_conv1/ReluRelu0sequential_7/vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
5sequential_7/vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp>sequential_7_vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
&sequential_7/vgg16/block1_conv2/Conv2DConv2D2sequential_7/vgg16/block1_conv1/Relu:activations:0=sequential_7/vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
6sequential_7/vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
'sequential_7/vgg16/block1_conv2/BiasAddBiasAdd/sequential_7/vgg16/block1_conv2/Conv2D:output:0>sequential_7/vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@�
$sequential_7/vgg16/block1_conv2/ReluRelu0sequential_7/vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
&sequential_7/vgg16/block1_pool/MaxPoolMaxPool2sequential_7/vgg16/block1_conv2/Relu:activations:0*1
_output_shapes
:�����������@*
ksize
*
paddingVALID*
strides
�
5sequential_7/vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp>sequential_7_vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
&sequential_7/vgg16/block2_conv1/Conv2DConv2D/sequential_7/vgg16/block1_pool/MaxPool:output:0=sequential_7/vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingSAME*
strides
�
6sequential_7/vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'sequential_7/vgg16/block2_conv1/BiasAddBiasAdd/sequential_7/vgg16/block2_conv1/Conv2D:output:0>sequential_7/vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:�������������
$sequential_7/vgg16/block2_conv1/ReluRelu0sequential_7/vgg16/block2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:�������������
5sequential_7/vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp>sequential_7_vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&sequential_7/vgg16/block2_conv2/Conv2DConv2D2sequential_7/vgg16/block2_conv1/Relu:activations:0=sequential_7/vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingSAME*
strides
�
6sequential_7/vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'sequential_7/vgg16/block2_conv2/BiasAddBiasAdd/sequential_7/vgg16/block2_conv2/Conv2D:output:0>sequential_7/vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:�������������
$sequential_7/vgg16/block2_conv2/ReluRelu0sequential_7/vgg16/block2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:�������������
&sequential_7/vgg16/block2_pool/MaxPoolMaxPool2sequential_7/vgg16/block2_conv2/Relu:activations:0*1
_output_shapes
:���������y��*
ksize
*
paddingVALID*
strides
�
5sequential_7/vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp>sequential_7_vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&sequential_7/vgg16/block3_conv1/Conv2DConv2D/sequential_7/vgg16/block2_pool/MaxPool:output:0=sequential_7/vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y��*
paddingSAME*
strides
�
6sequential_7/vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'sequential_7/vgg16/block3_conv1/BiasAddBiasAdd/sequential_7/vgg16/block3_conv1/Conv2D:output:0>sequential_7/vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y���
$sequential_7/vgg16/block3_conv1/ReluRelu0sequential_7/vgg16/block3_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:���������y���
5sequential_7/vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp>sequential_7_vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&sequential_7/vgg16/block3_conv2/Conv2DConv2D2sequential_7/vgg16/block3_conv1/Relu:activations:0=sequential_7/vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y��*
paddingSAME*
strides
�
6sequential_7/vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'sequential_7/vgg16/block3_conv2/BiasAddBiasAdd/sequential_7/vgg16/block3_conv2/Conv2D:output:0>sequential_7/vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y���
$sequential_7/vgg16/block3_conv2/ReluRelu0sequential_7/vgg16/block3_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:���������y���
5sequential_7/vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp>sequential_7_vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&sequential_7/vgg16/block3_conv3/Conv2DConv2D2sequential_7/vgg16/block3_conv2/Relu:activations:0=sequential_7/vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y��*
paddingSAME*
strides
�
6sequential_7/vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'sequential_7/vgg16/block3_conv3/BiasAddBiasAdd/sequential_7/vgg16/block3_conv3/Conv2D:output:0>sequential_7/vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:���������y���
$sequential_7/vgg16/block3_conv3/ReluRelu0sequential_7/vgg16/block3_conv3/BiasAdd:output:0*
T0*1
_output_shapes
:���������y���
&sequential_7/vgg16/block3_pool/MaxPoolMaxPool2sequential_7/vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:���������<Q�*
ksize
*
paddingVALID*
strides
�
5sequential_7/vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp>sequential_7_vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&sequential_7/vgg16/block4_conv1/Conv2DConv2D/sequential_7/vgg16/block3_pool/MaxPool:output:0=sequential_7/vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q�*
paddingSAME*
strides
�
6sequential_7/vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'sequential_7/vgg16/block4_conv1/BiasAddBiasAdd/sequential_7/vgg16/block4_conv1/Conv2D:output:0>sequential_7/vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q��
$sequential_7/vgg16/block4_conv1/ReluRelu0sequential_7/vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������<Q��
5sequential_7/vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp>sequential_7_vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&sequential_7/vgg16/block4_conv2/Conv2DConv2D2sequential_7/vgg16/block4_conv1/Relu:activations:0=sequential_7/vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q�*
paddingSAME*
strides
�
6sequential_7/vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'sequential_7/vgg16/block4_conv2/BiasAddBiasAdd/sequential_7/vgg16/block4_conv2/Conv2D:output:0>sequential_7/vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q��
$sequential_7/vgg16/block4_conv2/ReluRelu0sequential_7/vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������<Q��
5sequential_7/vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp>sequential_7_vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&sequential_7/vgg16/block4_conv3/Conv2DConv2D2sequential_7/vgg16/block4_conv2/Relu:activations:0=sequential_7/vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q�*
paddingSAME*
strides
�
6sequential_7/vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'sequential_7/vgg16/block4_conv3/BiasAddBiasAdd/sequential_7/vgg16/block4_conv3/Conv2D:output:0>sequential_7/vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q��
$sequential_7/vgg16/block4_conv3/ReluRelu0sequential_7/vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:���������<Q��
&sequential_7/vgg16/block4_pool/MaxPoolMaxPool2sequential_7/vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:���������(�*
ksize
*
paddingVALID*
strides
�
5sequential_7/vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp>sequential_7_vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&sequential_7/vgg16/block5_conv1/Conv2DConv2D/sequential_7/vgg16/block4_pool/MaxPool:output:0=sequential_7/vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(�*
paddingSAME*
strides
�
6sequential_7/vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'sequential_7/vgg16/block5_conv1/BiasAddBiasAdd/sequential_7/vgg16/block5_conv1/Conv2D:output:0>sequential_7/vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(��
$sequential_7/vgg16/block5_conv1/ReluRelu0sequential_7/vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������(��
5sequential_7/vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp>sequential_7_vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&sequential_7/vgg16/block5_conv2/Conv2DConv2D2sequential_7/vgg16/block5_conv1/Relu:activations:0=sequential_7/vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(�*
paddingSAME*
strides
�
6sequential_7/vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'sequential_7/vgg16/block5_conv2/BiasAddBiasAdd/sequential_7/vgg16/block5_conv2/Conv2D:output:0>sequential_7/vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(��
$sequential_7/vgg16/block5_conv2/ReluRelu0sequential_7/vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������(��
5sequential_7/vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp>sequential_7_vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&sequential_7/vgg16/block5_conv3/Conv2DConv2D2sequential_7/vgg16/block5_conv2/Relu:activations:0=sequential_7/vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(�*
paddingSAME*
strides
�
6sequential_7/vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'sequential_7/vgg16/block5_conv3/BiasAddBiasAdd/sequential_7/vgg16/block5_conv3/Conv2D:output:0>sequential_7/vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������(��
$sequential_7/vgg16/block5_conv3/ReluRelu0sequential_7/vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:���������(��
&sequential_7/vgg16/block5_pool/MaxPoolMaxPool2sequential_7/vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
?sequential_7/vgg16/global_max_pooling2d_6/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
-sequential_7/vgg16/global_max_pooling2d_6/MaxMax/sequential_7/vgg16/block5_pool/MaxPool:output:0Hsequential_7/vgg16/global_max_pooling2d_6/Max/reduction_indices:output:0*
T0*(
_output_shapes
:����������m
sequential_7/flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
sequential_7/flatten_7/ReshapeReshape6sequential_7/vgg16/global_max_pooling2d_6/Max:output:0%sequential_7/flatten_7/Const:output:0*
T0*(
_output_shapes
:�����������
+sequential_7/dense_14/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_14_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
sequential_7/dense_14/MatMulMatMul'sequential_7/flatten_7/Reshape:output:03sequential_7/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
,sequential_7/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_7/dense_14/BiasAddBiasAdd&sequential_7/dense_14/MatMul:product:04sequential_7/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@|
sequential_7/dense_14/ReluRelu&sequential_7/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
+sequential_7/dense_15/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_15_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
sequential_7/dense_15/MatMulMatMul(sequential_7/dense_14/Relu:activations:03sequential_7/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,sequential_7/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_7/dense_15/BiasAddBiasAdd&sequential_7/dense_15/MatMul:product:04sequential_7/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_7/dense_15/SoftmaxSoftmax&sequential_7/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:���������v
IdentityIdentity'sequential_7/dense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^sequential_7/dense_14/BiasAdd/ReadVariableOp,^sequential_7/dense_14/MatMul/ReadVariableOp-^sequential_7/dense_15/BiasAdd/ReadVariableOp,^sequential_7/dense_15/MatMul/ReadVariableOp7^sequential_7/vgg16/block1_conv1/BiasAdd/ReadVariableOp6^sequential_7/vgg16/block1_conv1/Conv2D/ReadVariableOp7^sequential_7/vgg16/block1_conv2/BiasAdd/ReadVariableOp6^sequential_7/vgg16/block1_conv2/Conv2D/ReadVariableOp7^sequential_7/vgg16/block2_conv1/BiasAdd/ReadVariableOp6^sequential_7/vgg16/block2_conv1/Conv2D/ReadVariableOp7^sequential_7/vgg16/block2_conv2/BiasAdd/ReadVariableOp6^sequential_7/vgg16/block2_conv2/Conv2D/ReadVariableOp7^sequential_7/vgg16/block3_conv1/BiasAdd/ReadVariableOp6^sequential_7/vgg16/block3_conv1/Conv2D/ReadVariableOp7^sequential_7/vgg16/block3_conv2/BiasAdd/ReadVariableOp6^sequential_7/vgg16/block3_conv2/Conv2D/ReadVariableOp7^sequential_7/vgg16/block3_conv3/BiasAdd/ReadVariableOp6^sequential_7/vgg16/block3_conv3/Conv2D/ReadVariableOp7^sequential_7/vgg16/block4_conv1/BiasAdd/ReadVariableOp6^sequential_7/vgg16/block4_conv1/Conv2D/ReadVariableOp7^sequential_7/vgg16/block4_conv2/BiasAdd/ReadVariableOp6^sequential_7/vgg16/block4_conv2/Conv2D/ReadVariableOp7^sequential_7/vgg16/block4_conv3/BiasAdd/ReadVariableOp6^sequential_7/vgg16/block4_conv3/Conv2D/ReadVariableOp7^sequential_7/vgg16/block5_conv1/BiasAdd/ReadVariableOp6^sequential_7/vgg16/block5_conv1/Conv2D/ReadVariableOp7^sequential_7/vgg16/block5_conv2/BiasAdd/ReadVariableOp6^sequential_7/vgg16/block5_conv2/Conv2D/ReadVariableOp7^sequential_7/vgg16/block5_conv3/BiasAdd/ReadVariableOp6^sequential_7/vgg16/block5_conv3/Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2\
,sequential_7/dense_14/BiasAdd/ReadVariableOp,sequential_7/dense_14/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_14/MatMul/ReadVariableOp+sequential_7/dense_14/MatMul/ReadVariableOp2\
,sequential_7/dense_15/BiasAdd/ReadVariableOp,sequential_7/dense_15/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_15/MatMul/ReadVariableOp+sequential_7/dense_15/MatMul/ReadVariableOp2p
6sequential_7/vgg16/block1_conv1/BiasAdd/ReadVariableOp6sequential_7/vgg16/block1_conv1/BiasAdd/ReadVariableOp2n
5sequential_7/vgg16/block1_conv1/Conv2D/ReadVariableOp5sequential_7/vgg16/block1_conv1/Conv2D/ReadVariableOp2p
6sequential_7/vgg16/block1_conv2/BiasAdd/ReadVariableOp6sequential_7/vgg16/block1_conv2/BiasAdd/ReadVariableOp2n
5sequential_7/vgg16/block1_conv2/Conv2D/ReadVariableOp5sequential_7/vgg16/block1_conv2/Conv2D/ReadVariableOp2p
6sequential_7/vgg16/block2_conv1/BiasAdd/ReadVariableOp6sequential_7/vgg16/block2_conv1/BiasAdd/ReadVariableOp2n
5sequential_7/vgg16/block2_conv1/Conv2D/ReadVariableOp5sequential_7/vgg16/block2_conv1/Conv2D/ReadVariableOp2p
6sequential_7/vgg16/block2_conv2/BiasAdd/ReadVariableOp6sequential_7/vgg16/block2_conv2/BiasAdd/ReadVariableOp2n
5sequential_7/vgg16/block2_conv2/Conv2D/ReadVariableOp5sequential_7/vgg16/block2_conv2/Conv2D/ReadVariableOp2p
6sequential_7/vgg16/block3_conv1/BiasAdd/ReadVariableOp6sequential_7/vgg16/block3_conv1/BiasAdd/ReadVariableOp2n
5sequential_7/vgg16/block3_conv1/Conv2D/ReadVariableOp5sequential_7/vgg16/block3_conv1/Conv2D/ReadVariableOp2p
6sequential_7/vgg16/block3_conv2/BiasAdd/ReadVariableOp6sequential_7/vgg16/block3_conv2/BiasAdd/ReadVariableOp2n
5sequential_7/vgg16/block3_conv2/Conv2D/ReadVariableOp5sequential_7/vgg16/block3_conv2/Conv2D/ReadVariableOp2p
6sequential_7/vgg16/block3_conv3/BiasAdd/ReadVariableOp6sequential_7/vgg16/block3_conv3/BiasAdd/ReadVariableOp2n
5sequential_7/vgg16/block3_conv3/Conv2D/ReadVariableOp5sequential_7/vgg16/block3_conv3/Conv2D/ReadVariableOp2p
6sequential_7/vgg16/block4_conv1/BiasAdd/ReadVariableOp6sequential_7/vgg16/block4_conv1/BiasAdd/ReadVariableOp2n
5sequential_7/vgg16/block4_conv1/Conv2D/ReadVariableOp5sequential_7/vgg16/block4_conv1/Conv2D/ReadVariableOp2p
6sequential_7/vgg16/block4_conv2/BiasAdd/ReadVariableOp6sequential_7/vgg16/block4_conv2/BiasAdd/ReadVariableOp2n
5sequential_7/vgg16/block4_conv2/Conv2D/ReadVariableOp5sequential_7/vgg16/block4_conv2/Conv2D/ReadVariableOp2p
6sequential_7/vgg16/block4_conv3/BiasAdd/ReadVariableOp6sequential_7/vgg16/block4_conv3/BiasAdd/ReadVariableOp2n
5sequential_7/vgg16/block4_conv3/Conv2D/ReadVariableOp5sequential_7/vgg16/block4_conv3/Conv2D/ReadVariableOp2p
6sequential_7/vgg16/block5_conv1/BiasAdd/ReadVariableOp6sequential_7/vgg16/block5_conv1/BiasAdd/ReadVariableOp2n
5sequential_7/vgg16/block5_conv1/Conv2D/ReadVariableOp5sequential_7/vgg16/block5_conv1/Conv2D/ReadVariableOp2p
6sequential_7/vgg16/block5_conv2/BiasAdd/ReadVariableOp6sequential_7/vgg16/block5_conv2/BiasAdd/ReadVariableOp2n
5sequential_7/vgg16/block5_conv2/Conv2D/ReadVariableOp5sequential_7/vgg16/block5_conv2/Conv2D/ReadVariableOp2p
6sequential_7/vgg16/block5_conv3/BiasAdd/ReadVariableOp6sequential_7/vgg16/block5_conv3/BiasAdd/ReadVariableOp2n
5sequential_7/vgg16/block5_conv3/Conv2D/ReadVariableOp5sequential_7/vgg16/block5_conv3/Conv2D/ReadVariableOp:^ Z
1
_output_shapes
:�����������
%
_user_specified_namevgg16_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
O
"__inference__update_step_xla_17814
gradient
variable:	�@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	�@: *
	_noinline(:I E

_output_shapes
:	�@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
G__inference_block4_conv3_layer_call_and_return_conditional_losses_19998

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<Q�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������<Q�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������<Q�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������<Q�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������<Q�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
b
F__inference_block5_pool_layer_call_and_return_conditional_losses_18792

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
F__inference_block2_pool_layer_call_and_return_conditional_losses_18762

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
F__inference_block3_pool_layer_call_and_return_conditional_losses_19938

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
vgg16_input>
serving_default_vgg16_input:0�����������<
dense_150
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
 layer-18
!layer-19
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_network
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses

4kernel
5bias"
_tf_keras_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias"
_tf_keras_layer
�
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
N16
O17
P18
Q19
R20
S21
T22
U23
V24
W25
426
527
<28
=29"
trackable_list_wrapper
<
40
51
<2
=3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
�
]trace_0
^trace_12�
,__inference_sequential_7_layer_call_fn_19561
,__inference_sequential_7_layer_call_fn_19626�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z]trace_0z^trace_1
�
_trace_0
`trace_12�
G__inference_sequential_7_layer_call_and_return_conditional_losses_19428
G__inference_sequential_7_layer_call_and_return_conditional_losses_19496�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z_trace_0z`trace_1
�B�
 __inference__wrapped_model_18747vgg16_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
a
_variables
b_iterations
c_learning_rate
d_index_dict
e
_momentums
f_velocities
g_update_step_xla"
experimentalOptimizer
,
hserving_default"
signature_map
"
_tf_keras_input_layer
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

>kernel
?bias
 o_jit_compiled_convolution_op"
_tf_keras_layer
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

@kernel
Abias
 v_jit_compiled_convolution_op"
_tf_keras_layer
�
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
�
}	variables
~trainable_variables
regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Bkernel
Cbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Dkernel
Ebias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Fkernel
Gbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Hkernel
Ibias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Jkernel
Kbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Lkernel
Mbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Nkernel
Obias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Pkernel
Qbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Rkernel
Sbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Tkernel
Ubias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Vkernel
Wbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
N16
O17
P18
Q19
R20
S21
T22
U23
V24
W25"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
%__inference_vgg16_layer_call_fn_19158
%__inference_vgg16_layer_call_fn_19215�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
@__inference_vgg16_layer_call_and_return_conditional_losses_19026
@__inference_vgg16_layer_call_and_return_conditional_losses_19101�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_flatten_7_layer_call_fn_19722�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_flatten_7_layer_call_and_return_conditional_losses_19728�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_14_layer_call_fn_19737�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_14_layer_call_and_return_conditional_losses_19748�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 	�@2dense_14/kernel
:@2dense_14/bias
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_15_layer_call_fn_19757�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_15_layer_call_and_return_conditional_losses_19768�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:@2dense_15/kernel
:2dense_15/bias
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
.:,@�2block2_conv1/kernel
 :�2block2_conv1/bias
/:-��2block2_conv2/kernel
 :�2block2_conv2/bias
/:-��2block3_conv1/kernel
 :�2block3_conv1/bias
/:-��2block3_conv2/kernel
 :�2block3_conv2/bias
/:-��2block3_conv3/kernel
 :�2block3_conv3/bias
/:-��2block4_conv1/kernel
 :�2block4_conv1/bias
/:-��2block4_conv2/kernel
 :�2block4_conv2/bias
/:-��2block4_conv3/kernel
 :�2block4_conv3/bias
/:-��2block5_conv1/kernel
 :�2block5_conv1/bias
/:-��2block5_conv2/kernel
 :�2block5_conv2/bias
/:-��2block5_conv3/kernel
 :�2block5_conv3/bias
�
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
N16
O17
P18
Q19
R20
S21
T22
U23
V24
W25"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_sequential_7_layer_call_fn_19561vgg16_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_7_layer_call_fn_19626vgg16_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_7_layer_call_and_return_conditional_losses_19428vgg16_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_7_layer_call_and_return_conditional_losses_19496vgg16_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
g
b0
�1
�2
�3
�4
�5
�6
�7
�8"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
�
�trace_0
�trace_1
�trace_2
�trace_32�
"__inference__update_step_xla_17814
"__inference__update_step_xla_17819
"__inference__update_step_xla_17824
"__inference__update_step_xla_17829�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0z�trace_0z�trace_1z�trace_2z�trace_3
�B�
#__inference_signature_wrapper_19717vgg16_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_block1_conv1_layer_call_fn_19777�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_block1_conv1_layer_call_and_return_conditional_losses_19788�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_block1_conv2_layer_call_fn_19797�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_block1_conv2_layer_call_and_return_conditional_losses_19808�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_block1_pool_layer_call_fn_19813�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_block1_pool_layer_call_and_return_conditional_losses_19818�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
}	variables
~trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_block2_conv1_layer_call_fn_19827�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_block2_conv1_layer_call_and_return_conditional_losses_19838�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_block2_conv2_layer_call_fn_19847�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_block2_conv2_layer_call_and_return_conditional_losses_19858�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_block2_pool_layer_call_fn_19863�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_block2_pool_layer_call_and_return_conditional_losses_19868�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_block3_conv1_layer_call_fn_19877�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_block3_conv1_layer_call_and_return_conditional_losses_19888�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_block3_conv2_layer_call_fn_19897�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_block3_conv2_layer_call_and_return_conditional_losses_19908�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_block3_conv3_layer_call_fn_19917�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_block3_conv3_layer_call_and_return_conditional_losses_19928�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_block3_pool_layer_call_fn_19933�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_block3_pool_layer_call_and_return_conditional_losses_19938�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_block4_conv1_layer_call_fn_19947�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_block4_conv1_layer_call_and_return_conditional_losses_19958�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_block4_conv2_layer_call_fn_19967�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_block4_conv2_layer_call_and_return_conditional_losses_19978�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_block4_conv3_layer_call_fn_19987�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_block4_conv3_layer_call_and_return_conditional_losses_19998�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_block4_pool_layer_call_fn_20003�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_block4_pool_layer_call_and_return_conditional_losses_20008�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_block5_conv1_layer_call_fn_20017�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_block5_conv1_layer_call_and_return_conditional_losses_20028�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_block5_conv2_layer_call_fn_20037�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_block5_conv2_layer_call_and_return_conditional_losses_20048�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_block5_conv3_layer_call_fn_20057�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_block5_conv3_layer_call_and_return_conditional_losses_20068�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_block5_pool_layer_call_fn_20073�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_block5_pool_layer_call_and_return_conditional_losses_20078�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
6__inference_global_max_pooling2d_6_layer_call_fn_20083�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
Q__inference_global_max_pooling2d_6_layer_call_and_return_conditional_losses_20089�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
N16
O17
P18
Q19
R20
S21
T22
U23
V24
W25"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
 18
!19"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_vgg16_layer_call_fn_19158input_7"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_vgg16_layer_call_fn_19215input_7"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_vgg16_layer_call_and_return_conditional_losses_19026input_7"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_vgg16_layer_call_and_return_conditional_losses_19101input_7"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_flatten_7_layer_call_fn_19722inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_flatten_7_layer_call_and_return_conditional_losses_19728inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_dense_14_layer_call_fn_19737inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_14_layer_call_and_return_conditional_losses_19748inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_dense_15_layer_call_fn_19757inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_15_layer_call_and_return_conditional_losses_19768inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
':%	�@2Adam/m/dense_14/kernel
':%	�@2Adam/v/dense_14/kernel
 :@2Adam/m/dense_14/bias
 :@2Adam/v/dense_14/bias
&:$@2Adam/m/dense_15/kernel
&:$@2Adam/v/dense_15/kernel
 :2Adam/m/dense_15/bias
 :2Adam/v/dense_15/bias
�B�
"__inference__update_step_xla_17814gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_17819gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_17824gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_17829gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_block1_conv1_layer_call_fn_19777inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_block1_conv1_layer_call_and_return_conditional_losses_19788inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_block1_conv2_layer_call_fn_19797inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_block1_conv2_layer_call_and_return_conditional_losses_19808inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_block1_pool_layer_call_fn_19813inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_block1_pool_layer_call_and_return_conditional_losses_19818inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_block2_conv1_layer_call_fn_19827inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_block2_conv1_layer_call_and_return_conditional_losses_19838inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_block2_conv2_layer_call_fn_19847inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_block2_conv2_layer_call_and_return_conditional_losses_19858inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_block2_pool_layer_call_fn_19863inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_block2_pool_layer_call_and_return_conditional_losses_19868inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_block3_conv1_layer_call_fn_19877inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_block3_conv1_layer_call_and_return_conditional_losses_19888inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_block3_conv2_layer_call_fn_19897inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_block3_conv2_layer_call_and_return_conditional_losses_19908inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_block3_conv3_layer_call_fn_19917inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_block3_conv3_layer_call_and_return_conditional_losses_19928inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_block3_pool_layer_call_fn_19933inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_block3_pool_layer_call_and_return_conditional_losses_19938inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_block4_conv1_layer_call_fn_19947inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_block4_conv1_layer_call_and_return_conditional_losses_19958inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_block4_conv2_layer_call_fn_19967inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_block4_conv2_layer_call_and_return_conditional_losses_19978inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_block4_conv3_layer_call_fn_19987inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_block4_conv3_layer_call_and_return_conditional_losses_19998inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_block4_pool_layer_call_fn_20003inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_block4_pool_layer_call_and_return_conditional_losses_20008inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_block5_conv1_layer_call_fn_20017inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_block5_conv1_layer_call_and_return_conditional_losses_20028inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_block5_conv2_layer_call_fn_20037inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_block5_conv2_layer_call_and_return_conditional_losses_20048inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_block5_conv3_layer_call_fn_20057inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_block5_conv3_layer_call_and_return_conditional_losses_20068inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_block5_pool_layer_call_fn_20073inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_block5_pool_layer_call_and_return_conditional_losses_20078inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
6__inference_global_max_pooling2d_6_layer_call_fn_20083inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_global_max_pooling2d_6_layer_call_and_return_conditional_losses_20089inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
"__inference__update_step_xla_17814pj�g
`�]
�
gradient	�@
5�2	�
�	�@
�
p
` VariableSpec 
`����?
� "
 �
"__inference__update_step_xla_17819f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`����?
� "
 �
"__inference__update_step_xla_17824nh�e
^�[
�
gradient@
4�1	�
�@
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_17829f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`ྩ���?
� "
 �
 __inference__wrapped_model_18747�>?@ABCDEFGHIJKLMNOPQRSTUVW45<=>�;
4�1
/�,
vgg16_input�����������
� "3�0
.
dense_15"�
dense_15����������
G__inference_block1_conv1_layer_call_and_return_conditional_losses_19788w>?9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������@
� �
,__inference_block1_conv1_layer_call_fn_19777l>?9�6
/�,
*�'
inputs�����������
� "+�(
unknown�����������@�
G__inference_block1_conv2_layer_call_and_return_conditional_losses_19808w@A9�6
/�,
*�'
inputs�����������@
� "6�3
,�)
tensor_0�����������@
� �
,__inference_block1_conv2_layer_call_fn_19797l@A9�6
/�,
*�'
inputs�����������@
� "+�(
unknown�����������@�
F__inference_block1_pool_layer_call_and_return_conditional_losses_19818�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
+__inference_block1_pool_layer_call_fn_19813�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
G__inference_block2_conv1_layer_call_and_return_conditional_losses_19838xBC9�6
/�,
*�'
inputs�����������@
� "7�4
-�*
tensor_0������������
� �
,__inference_block2_conv1_layer_call_fn_19827mBC9�6
/�,
*�'
inputs�����������@
� ",�)
unknown�������������
G__inference_block2_conv2_layer_call_and_return_conditional_losses_19858yDE:�7
0�-
+�(
inputs������������
� "7�4
-�*
tensor_0������������
� �
,__inference_block2_conv2_layer_call_fn_19847nDE:�7
0�-
+�(
inputs������������
� ",�)
unknown�������������
F__inference_block2_pool_layer_call_and_return_conditional_losses_19868�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
+__inference_block2_pool_layer_call_fn_19863�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
G__inference_block3_conv1_layer_call_and_return_conditional_losses_19888wFG9�6
/�,
*�'
inputs���������y��
� "6�3
,�)
tensor_0���������y��
� �
,__inference_block3_conv1_layer_call_fn_19877lFG9�6
/�,
*�'
inputs���������y��
� "+�(
unknown���������y���
G__inference_block3_conv2_layer_call_and_return_conditional_losses_19908wHI9�6
/�,
*�'
inputs���������y��
� "6�3
,�)
tensor_0���������y��
� �
,__inference_block3_conv2_layer_call_fn_19897lHI9�6
/�,
*�'
inputs���������y��
� "+�(
unknown���������y���
G__inference_block3_conv3_layer_call_and_return_conditional_losses_19928wJK9�6
/�,
*�'
inputs���������y��
� "6�3
,�)
tensor_0���������y��
� �
,__inference_block3_conv3_layer_call_fn_19917lJK9�6
/�,
*�'
inputs���������y��
� "+�(
unknown���������y���
F__inference_block3_pool_layer_call_and_return_conditional_losses_19938�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
+__inference_block3_pool_layer_call_fn_19933�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
G__inference_block4_conv1_layer_call_and_return_conditional_losses_19958uLM8�5
.�+
)�&
inputs���������<Q�
� "5�2
+�(
tensor_0���������<Q�
� �
,__inference_block4_conv1_layer_call_fn_19947jLM8�5
.�+
)�&
inputs���������<Q�
� "*�'
unknown���������<Q��
G__inference_block4_conv2_layer_call_and_return_conditional_losses_19978uNO8�5
.�+
)�&
inputs���������<Q�
� "5�2
+�(
tensor_0���������<Q�
� �
,__inference_block4_conv2_layer_call_fn_19967jNO8�5
.�+
)�&
inputs���������<Q�
� "*�'
unknown���������<Q��
G__inference_block4_conv3_layer_call_and_return_conditional_losses_19998uPQ8�5
.�+
)�&
inputs���������<Q�
� "5�2
+�(
tensor_0���������<Q�
� �
,__inference_block4_conv3_layer_call_fn_19987jPQ8�5
.�+
)�&
inputs���������<Q�
� "*�'
unknown���������<Q��
F__inference_block4_pool_layer_call_and_return_conditional_losses_20008�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
+__inference_block4_pool_layer_call_fn_20003�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
G__inference_block5_conv1_layer_call_and_return_conditional_losses_20028uRS8�5
.�+
)�&
inputs���������(�
� "5�2
+�(
tensor_0���������(�
� �
,__inference_block5_conv1_layer_call_fn_20017jRS8�5
.�+
)�&
inputs���������(�
� "*�'
unknown���������(��
G__inference_block5_conv2_layer_call_and_return_conditional_losses_20048uTU8�5
.�+
)�&
inputs���������(�
� "5�2
+�(
tensor_0���������(�
� �
,__inference_block5_conv2_layer_call_fn_20037jTU8�5
.�+
)�&
inputs���������(�
� "*�'
unknown���������(��
G__inference_block5_conv3_layer_call_and_return_conditional_losses_20068uVW8�5
.�+
)�&
inputs���������(�
� "5�2
+�(
tensor_0���������(�
� �
,__inference_block5_conv3_layer_call_fn_20057jVW8�5
.�+
)�&
inputs���������(�
� "*�'
unknown���������(��
F__inference_block5_pool_layer_call_and_return_conditional_losses_20078�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
+__inference_block5_pool_layer_call_fn_20073�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
C__inference_dense_14_layer_call_and_return_conditional_losses_19748d450�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������@
� �
(__inference_dense_14_layer_call_fn_19737Y450�-
&�#
!�
inputs����������
� "!�
unknown���������@�
C__inference_dense_15_layer_call_and_return_conditional_losses_19768c<=/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0���������
� �
(__inference_dense_15_layer_call_fn_19757X<=/�,
%�"
 �
inputs���������@
� "!�
unknown����������
D__inference_flatten_7_layer_call_and_return_conditional_losses_19728a0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
)__inference_flatten_7_layer_call_fn_19722V0�-
&�#
!�
inputs����������
� ""�
unknown�����������
Q__inference_global_max_pooling2d_6_layer_call_and_return_conditional_losses_20089�R�O
H�E
C�@
inputs4������������������������������������
� "5�2
+�(
tensor_0������������������
� �
6__inference_global_max_pooling2d_6_layer_call_fn_20083�R�O
H�E
C�@
inputs4������������������������������������
� "*�'
unknown�������������������
G__inference_sequential_7_layer_call_and_return_conditional_losses_19428�>?@ABCDEFGHIJKLMNOPQRSTUVW45<=F�C
<�9
/�,
vgg16_input�����������
p

 
� ",�)
"�
tensor_0���������
� �
G__inference_sequential_7_layer_call_and_return_conditional_losses_19496�>?@ABCDEFGHIJKLMNOPQRSTUVW45<=F�C
<�9
/�,
vgg16_input�����������
p 

 
� ",�)
"�
tensor_0���������
� �
,__inference_sequential_7_layer_call_fn_19561�>?@ABCDEFGHIJKLMNOPQRSTUVW45<=F�C
<�9
/�,
vgg16_input�����������
p

 
� "!�
unknown����������
,__inference_sequential_7_layer_call_fn_19626�>?@ABCDEFGHIJKLMNOPQRSTUVW45<=F�C
<�9
/�,
vgg16_input�����������
p 

 
� "!�
unknown����������
#__inference_signature_wrapper_19717�>?@ABCDEFGHIJKLMNOPQRSTUVW45<=M�J
� 
C�@
>
vgg16_input/�,
vgg16_input�����������"3�0
.
dense_15"�
dense_15����������
@__inference_vgg16_layer_call_and_return_conditional_losses_19026�>?@ABCDEFGHIJKLMNOPQRSTUVWB�?
8�5
+�(
input_7�����������
p

 
� "-�*
#� 
tensor_0����������
� �
@__inference_vgg16_layer_call_and_return_conditional_losses_19101�>?@ABCDEFGHIJKLMNOPQRSTUVWB�?
8�5
+�(
input_7�����������
p 

 
� "-�*
#� 
tensor_0����������
� �
%__inference_vgg16_layer_call_fn_19158�>?@ABCDEFGHIJKLMNOPQRSTUVWB�?
8�5
+�(
input_7�����������
p

 
� ""�
unknown�����������
%__inference_vgg16_layer_call_fn_19215�>?@ABCDEFGHIJKLMNOPQRSTUVWB�?
8�5
+�(
input_7�����������
p 

 
� ""�
unknown����������