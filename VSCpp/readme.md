This builds, but hasn't been tested yet.

VisualCppBuildTools_Full.exe is a stub that downloads more files as needed to complete the installation. Network is required.

The resulting virtual size of the image is ~3.5GB. Hopefully it can be trimmed down further.

The logs seem to show there's a lot more being installed than needed just to build a x86 or x64 app.

<pre>
    02/24/2016  05:21 PM           570,113 install.log
    02/24/2016  05:06 PM           426,524 install_066_Msi_BuildTools_MSBuild_amd64.log
    02/24/2016  05:08 PM         1,609,570 install_067_Msi_BuildTools_MSBuild_Res_amd64.log
    02/24/2016  05:09 PM           463,590 install_068_Msi_BuildTools_MSBuild_x86.log
    02/24/2016  05:09 PM         1,711,686 install_069_Msi_BuildTools_MSBuild_Res_x86.log
    02/24/2016  05:09 PM           188,278 install_072_vcRuntimeDebugD14_x86.log
    02/24/2016  05:09 PM           176,696 install_073_vcRuntimeDebugD14_x64.log
    02/24/2016  05:09 PM           147,894 install_074_VC_Tools_X64_ARM.log
    02/24/2016  05:09 PM           325,896 install_075_VC_Tools_X64_Base.log
    02/24/2016  05:10 PM           154,542 install_076_VC_Tools_X64_Nat.log
    02/24/2016  05:10 PM           147,160 install_077_VC_Tools_X64_X86.log
    02/24/2016  05:10 PM           150,540 install_078_VC_Tools_X86_ARM.log
    02/24/2016  05:10 PM           324,216 install_079_VC_Tools_X86_Base.log
    02/24/2016  05:10 PM           153,178 install_080_VC_Tools_X86_Nat.log
    02/24/2016  05:10 PM           146,846 install_081_VC_Tools_X86_X64.log
    02/24/2016  05:10 PM           133,144 install_082_VC_Tools_X64_ARM_Res.log
    02/24/2016  05:10 PM           123,686 install_083_VC_Tools_X64_Base_Res.log
    02/24/2016  05:10 PM           124,214 install_084_VC_Tools_X64_Nat_Res.log
    02/24/2016  05:10 PM           132,990 install_085_VC_Tools_X64_X86_Res.log
    02/24/2016  05:10 PM           132,814 install_086_VC_Tools_X86_ARM_Res.log
    02/24/2016  05:10 PM           120,866 install_087_VC_Tools_X86_Base_Res.log
    02/24/2016  05:10 PM           130,154 install_088_VC_Tools_X86_Nat_Res.log
    02/24/2016  05:10 PM           133,226 install_089_VC_Tools_X86_X64_Res.log
    02/24/2016  05:10 PM           164,226 install_090_VC_Tools_Core.log
    02/24/2016  05:10 PM           114,112 install_091_VC_Tools_Core_Res.log
    02/24/2016  05:10 PM         1,000,766 install_092_VC_CRT_Headers.log
    02/24/2016  05:10 PM         1,232,874 install_093_VC_CRT_Source.log
    02/24/2016  05:10 PM           187,634 install_094_VC_CRT_X86_Desktop.log
    02/24/2016  05:10 PM           400,250 install_095_VC_CRT_X86_Store.log
    02/24/2016  05:11 PM           192,294 install_096_VC_CRT_X64_Desktop.log
    02/24/2016  05:11 PM           358,476 install_097_VC_CRT_X64_Store.log
    02/24/2016  05:11 PM           191,980 install_098_VC_CRT_ARM_Desktop.log
    02/24/2016  05:11 PM           329,942 install_099_VC_CRT_ARM_Store.log
    02/24/2016  05:11 PM           192,658 install_100_VC_CRT_Redist_X86.log
    02/24/2016  05:11 PM           185,946 install_101_VC_CRT_Redist_X64.log
    02/24/2016  05:11 PM           185,652 install_102_VC_CRT_Redist_ARM.log
    02/24/2016  05:11 PM           130,760 install_103_VC_MSBuild_ARM.log
    02/24/2016  05:11 PM           329,174 install_104_VC_MSBuild_Base.log
    02/24/2016  05:11 PM           140,092 install_105_VC_MSBuild_X64.log
    02/24/2016  05:11 PM           144,784 install_106_VC_MSBuild_X86.log
    02/24/2016  05:11 PM           225,458 install_107_VC_MSBuild_Base_Res.log
    02/24/2016  05:13 PM         1,957,238 install_108_Win10_Universal_CRT_SDK.log
    02/24/2016  05:13 PM           151,292 install_109_Win10_Universal_CRT_SDK_Extension_SDK.log
    02/24/2016  05:13 PM           437,820 install_110_Win10_Universal_CRT_SDK_Redistributable.log
    02/24/2016  05:13 PM           104,050 install_111_Win10_Universal_CRT_SDK_Tools_x64.log
    02/24/2016  05:13 PM           104,038 install_112_Win10_Universal_CRT_SDK_Tools_x86.log
    02/24/2016  05:18 PM         9,666,778 install_113_WinBlue_SDK_Desktop.log
    02/24/2016  05:18 PM           152,628 install_115_WinBlue_SDK_DX_Redist_x64.log
    02/24/2016  05:18 PM           154,218 install_117_WinBlue_SDK_DX_Redist_x86.log
    02/24/2016  05:19 PM         4,459,024 install_119_WinBlue_MetroSDK.log
    02/24/2016  05:19 PM           411,312 install_121_WinBlue_SDK_Metro_DX_Redist_x64.log
    02/24/2016  05:19 PM           417,464 install_123_WinBlue_SDK_Metro_DX_Redist_x86.log
    02/24/2016  05:20 PM         3,096,944 install_125_WinBlue_SDK_App_Cert_Kit_x64.log
    02/24/2016  05:20 PM           731,274 install_127_WinBlue_SDK_App_Cert_Kit_Native_x64.log
    02/24/2016  05:20 PM           112,310 install_129_WinBlue_Runtime_Intellisense.log
    02/24/2016  05:20 PM           150,498 install_130_VisualCppBuildTools_Core.log
    02/24/2016  05:21 PM             2,639 install_SecondaryInstaller_UX.log
</pre>