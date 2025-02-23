// Created by Crowbar 0.74

$modelname "weapons\rottweiler\v_cap.mdl"

$body "shield" "reference.smd"
$body "arms" "c_arms.smd"
//$body "gloves" "c_arms_citizen_glove.smd"
//$body "hands" "c_arms_citizen_hands.smd"
//$body "arms" "c_arms_citizen.smd"


$surfaceprop "combine_metal"

$contents "solid"

$illumposition 0.007 0.004 3.804

$cdmaterials "models\rottweiler\cshield"
$cdmaterials "modelsrc\weapons\c_arms\"


$cbox 0 0 0 0 0 0

$bbox -12.654 -12.669 -1.821 12.645 12.684 7.608

$definebone "static_prop" "" 0.000000 0.000000 0.000000 -0.000000 -0.000000 -179.999908 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "ValveBiped.Bip01_Spine4" "" 0.000006 0.000000 0.000000 -79.749939 -89.999748 -90.000267 0.000000 0.000000 0.000000 -0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 2.033350 1.000765 1.937646 -73.712082 168.618652 91.481285 0.000000 0.000000 0.000000 -0.000000 0.000000 -0.000001
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.028102 -0.000027 -0.000026 2.739138 -33.528347 -90.505562 -0.000000 0.000000 0.000000 0.000003 -0.000001 0.000001
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.692518 -0.000028 -0.000008 0.000176 -3.458202 0.000230 0.000000 0.000000 0.000000 0.000003 -0.000001 0.000001
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 11.481638 -0.000198 -0.000011 -6.109101 2.531098 90.136742 0.000000 0.000000 0.000000 -0.000000 -0.000003 -0.000001
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.859688 -0.142434 -1.191972 8.682487 -50.431755 -26.821760 0.000000 0.000000 0.000000 0.000003 -0.000004 0.000002
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.312559 -0.000010 0.000004 -0.000341 -25.194447 0.000060 0.000000 0.000000 0.000000 0.000003 -0.000005 0.000003
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.729366 0.000000 0.000002 0.000118 -13.996963 -0.000342 0.000001 0.000000 0.000000 0.000003 -0.000007 0.000002
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.942314 0.046734 -0.431441 4.194107 -46.466545 -8.696468 0.000000 0.000000 0.000000 -0.000001 -0.000008 -0.000001
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.539097 0.000002 -0.000007 0.000343 -14.197442 -0.000001 -0.000001 0.000000 0.000000 -0.000001 -0.000006 0.000000
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 1.196322 -0.000002 0.000002 -0.000402 -24.683653 0.000001 -0.000001 0.000000 0.000000 -0.000001 -0.000002 0.000001
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.883678 -0.046803 0.431445 1.250995 -33.682186 4.921878 0.000000 0.000000 0.000000 -0.000001 -0.000003 -0.000000
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.719572 -0.000017 0.000008 0.315870 -20.997992 0.000114 0.000000 0.000000 0.000000 -0.000001 -0.000005 -0.000001
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.209183 -0.000004 0.000002 0.177099 -12.398523 0.000000 0.000000 0.000000 0.000000 -0.000002 -0.000002 0.000000
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.859837 -0.137980 1.332468 -2.449625 -30.465664 20.308775 0.000000 0.000000 0.000000 -0.000003 -0.000002 -0.000002
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.719427 -0.000004 -0.000006 0.233649 -20.798773 -0.000572 0.000000 0.000002 0.000000 -0.000004 -0.000003 0.000000
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.099672 0.000000 0.000002 0.148737 -13.999079 0.000634 0.000000 0.000000 0.000000 -0.000003 -0.000002 0.000002
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.806038 -0.348927 1.321259 -38.916264 -45.196236 -70.054688 0.000000 0.000000 -0.000002 0.000005 0.000002 -0.000003
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.789782 0.000002 -0.000010 0.000064 13.093408 -0.000058 0.000002 0.000000 0.000000 0.000005 0.000004 -0.000003
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.207001 0.000003 0.000000 -0.000051 20.790522 0.000000 0.000000 0.000000 0.000002 0.000006 0.000001 -0.000002
$definebone "ValveBiped.Bip01_L_Ulna" "ValveBiped.Bip01_L_Forearm" 5.740831 -0.000099 0.000013 0.000003 -0.000803 0.039191 0.000000 0.000000 0.000000 -0.000000 -0.000001 0.000001
$definebone "ValveBiped.Bip01_L_Wrist" "ValveBiped.Bip01_L_Forearm" 11.481665 -0.000198 0.000020 0.000002 -0.002006 0.073340 0.000000 0.000000 0.000000 0.000002 -0.000001 0.000001
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 2.033356 1.000775 -1.937597 73.712318 168.618134 -95.596954 0.000000 0.000000 0.000000 -0.000000 0.000002 0.000000
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.028104 -0.000041 0.000009 -0.462148 -33.624256 93.935173 0.000000 0.000000 0.000000 0.000002 0.000000 0.000001
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.692520 0.000026 0.000003 -0.000113 -3.459462 -0.000228 0.000000 0.000000 0.000000 -0.000000 0.000001 0.000001
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 11.481672 0.000099 -0.000017 6.108073 2.532588 -89.664169 0.000002 0.000000 0.000000 -0.000000 -0.000003 -0.000001
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.859663 -0.132563 1.193109 -9.056684 -50.352566 26.713182 0.000000 0.000002 -0.000001 0.000001 -0.000003 -0.000007
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.312563 -0.000004 -0.000004 0.000229 -25.191690 0.000451 0.000000 0.000002 0.000000 -0.000001 0.000002 -0.000007
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.729365 0.000004 0.000001 0.000169 -13.995982 -0.000007 0.000000 0.000000 0.000000 -0.000002 0.000003 -0.000007
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.942282 0.050326 0.431044 -4.537195 -46.421219 8.598720 0.000000 -0.000002 0.000000 -0.000001 -0.000002 -0.000003
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.539099 0.000002 0.000002 -0.000116 -14.196063 0.000398 0.000000 0.000000 0.000000 -0.000001 -0.000002 -0.000003
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 1.196323 0.000002 -0.000001 -0.000003 -24.681076 -0.000346 0.000000 0.000000 0.000000 -0.000003 -0.000002 -0.000002
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.883646 -0.050323 -0.431042 -1.512609 -33.672390 -4.921995 0.000000 0.000000 0.000000 0.000000 -0.000004 0.000001
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.719582 0.000000 0.000007 -0.456819 -20.995413 0.000058 -0.000002 0.000000 0.000000 0.000000 -0.000002 0.000000
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.209185 0.000010 0.000006 -0.255997 -12.397086 0.000057 0.000001 0.000000 0.000000 0.000000 0.000002 0.000000
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.859819 -0.148935 -1.331281 2.210012 -30.481421 -20.307173 0.000000 0.000000 0.000000 -0.000000 -0.000005 0.000007
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.719431 -0.000002 0.000011 -0.378724 -20.796764 0.000121 0.000000 0.000002 0.000000 0.000001 -0.000000 0.000003
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.099665 0.000006 0.000009 -0.241327 -13.998045 0.000408 -0.000001 0.000000 0.000000 0.000002 0.000002 0.000007
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.806021 -0.359831 -1.318334 38.596085 -45.467129 69.981697 0.000000 0.000000 -0.000002 -0.000007 0.000012 0.000002
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.789782 -0.000010 -0.000004 -0.000122 13.094849 -0.000171 0.000000 0.000000 0.000000 -0.000008 0.000013 0.000003
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.207001 0.000002 -0.000004 -0.000123 20.793331 0.000173 0.000000 0.000000 0.000000 -0.000009 0.000003 0.000001
$definebone "ValveBiped.Bip01_R_Ulna" "ValveBiped.Bip01_R_Forearm" 5.740837 0.000050 -0.000009 -0.000000 0.000402 0.004871 0.000000 0.000000 0.000000 -0.000002 0.000001 0.000001
$definebone "ValveBiped.Bip01_R_Wrist" "ValveBiped.Bip01_R_Forearm" 11.481672 0.000099 -0.000017 -0.000002 0.001605 0.008882 0.000000 0.000000 0.000000 -0.000002 0.000001 0.000001


$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_Neck1"
$bonemerge "ValveBiped.Bip01_Head1"
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
$bonemerge "ValveBiped.Bip01_L_Ulna"


$bonemerge "ValveBiped.Bip01_R_Wrist"
$bonemerge "ValveBiped.Bip01_R_Ulna"
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


$includemodel "weapons/c_arms_animations.mdl"


$sequence "idle" {
	"anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "draw" {
	"anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 25
}

$sequence "stow" {
	"anims\stow.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 25
}


$sequence "shield_idle" {
	"anims\shield_idle.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "throw" {
	"anims\shield_throw.smd"
	activity "ACT_VM_THROW" 1
	fps 35
}

$sequence "catch" {
	"anims\catch.smd"
	activity "ACT_VM_PULLPIN" 1
	fps 35
}


// https://wiki.facepunch.com/gmod/Enums/ACT