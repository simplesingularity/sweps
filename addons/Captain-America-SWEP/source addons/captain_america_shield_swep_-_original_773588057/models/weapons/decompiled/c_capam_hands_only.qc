// Created by Crowbar 0.74

$modelname "weapons\c_capam_hands_only.mdl"

$bodygroup "studio"
{
	studio "c_capam_hands_only_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -2.627 -20.946 -9.281

$cdmaterials "models\weapons\c_arms_citizen\"

$cbox 0 0 0 0 0 0

$bbox -9.089 -11.527 -13.175 24.027 7.405 0.169

$definebone "ValveBiped.Bip01_Spine4" "" 0.000006 0 0 -79.749938 -89.999927 -89.999927 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 2.03335 1.000772 1.937684 -73.711593 168.618724 91.480965 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.028214 0.000051 -0.000007 2.738967 -33.527537 -90.50504 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.692621 0.000001 0.000043 0.000113 -3.458602 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 11.481743 -0.000084 0.000026 -6.108244 2.531671 90.136743 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.859722 -0.142371 -1.191973 8.682545 -50.431214 -26.821528 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.312565 -0.000015 0.000004 -0.000408 -25.194258 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.729367 -0.000013 -0.000002 0.000051 -13.996895 -0.000393 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.942356 0.046804 -0.431442 4.194051 -46.466057 -8.696238 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.539093 0.00001 -0.000008 0.000226 -14.197304 -0.000112 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 1.196321 -0.000004 0 -0.000459 -24.683581 -0.000113 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.88372 -0.046731 0.431445 1.251053 -33.681937 4.921765 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.71958 0.000002 0.000009 0.315873 -20.997627 0.000116 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.209179 -0.000006 0.000002 0.176931 -12.398393 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.859882 -0.13791 1.332468 -2.449566 -30.465468 20.308319 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.719431 0.000013 -0.00001 0.233886 -20.798413 -0.000343 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.09967 -0.000004 0.000002 0.148917 -13.998836 0.000287 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.806047 -0.348915 1.321259 -38.916222 -45.195526 -70.05475 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.78978 0.000002 -0.00001 0.000155 13.093176 0.000809 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.207005 0.000009 0.00001 0.00004 20.79064 -0.000801 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Ulna" "ValveBiped.Bip01_L_Forearm" 5.740883 -0.000042 0.000028 -0.000061 0.000401 0.039305 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Wrist" "ValveBiped.Bip01_L_Forearm" 11.48177 -0.000084 0.000058 -0.000003 -0.000401 0.072537 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 2.033357 1.000768 -1.937635 73.71188 168.619079 -95.596291 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.02821 0.000052 0.00001 -0.461689 -33.623348 93.934827 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.692617 0.000089 -0.00004 -0.00006 -3.458602 0.000631 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 11.481758 0.000004 -0.000051 6.107668 2.53213 -89.664408 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.859701 -0.132519 1.193102 -9.056569 -50.3524 26.712779 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.312559 -0.00001 0.000002 -0.000003 -25.191122 0.000108 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.729369 -0.000008 0.000002 0.000111 -13.995811 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.942324 0.050374 0.431037 -4.537136 -46.420933 8.59855 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.539099 -0.000006 0 -0.000229 -14.195888 0.00017 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 1.196321 -0.000013 -0.000003 0.000286 -24.68101 -0.000289 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.883684 -0.050282 -0.431049 -1.512494 -33.672337 -4.922052 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.719584 0.000011 0.000008 -0.45659 -20.995296 0.000058 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.209185 0.000004 0.000011 -0.256226 -12.396691 0.000172 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.85985 -0.148893 -1.331288 2.210184 -30.481826 -20.306885 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.719431 0.000029 0.000022 -0.379123 -20.796254 0.000347 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.099665 0.000004 0.000009 -0.241155 -13.997989 0.00006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.806021 -0.359827 -1.318336 38.596081 -45.467132 69.981346 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.789783 -0.000013 -0.000002 -0.000066 13.094957 -0.000171 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.207005 -0.000005 -0.000006 -0.000123 20.79309 0.000167 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Ulna" "ValveBiped.Bip01_R_Forearm" 5.740875 0.000002 -0.000028 -0.000005 0 0.004355 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Wrist" "ValveBiped.Bip01_R_Forearm" 11.481758 0.000004 -0.000051 -0.000005 0 0.008481 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_L_Wrist"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"
$bonemerge "ValveBiped.Bip01_R_Wrist"

$proceduralbones "c_capam_hands_only.vrd"


$sequence "idle" {
	"c_capam_hands_only_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "Ready"
	snap
	fps 30
	loop
}

$sequence "shoot" {
	"c_capam_hands_only_anims\shoot.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "shoot2" {
	"c_capam_hands_only_anims\shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "reload" {
	"c_capam_hands_only_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "draw" {
	"c_capam_hands_only_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "block" {
	"c_capam_hands_only_anims\block.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}
