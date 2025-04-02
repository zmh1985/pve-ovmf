#!/bin/bash
#适用于给pve-edk2-firmware里面的edk2打补丁使用，输出ovmf包。直接放本脚本在edk2目录下，在make包之前在edk2目录运行一次本脚本就是，运行后你可以继续使用git工具生成edk2具体版本的patch文件
#作者 李晓流 & 大大帅666 20240824出品 https://space.bilibili.com/565938745
brand="Dell" #这里修改品牌，仅4个大写英文字母
echo "开始sed工作"
sed -i 's/0x20202020324B4445/0x20202020204c5450/g' MdeModulePkg/MdeModulePkg.dec
sed -i 's/QemuFwCfgAcpiPlatform/'${brand}'FwCfgAcpiPlatform/g' OvmfPkg/AcpiPlatformDxe/AcpiPlatformDxe.inf
sed -i 's/= VirtioFdtDxe/= '${brand}'ioFdtDxe/g' OvmfPkg/Fdt/VirtioFdtDxe/VirtioFdtDxe.inf
sed -i 's/BASE_NAME                      = QemuKernelLoaderFsDxe/BASE_NAME                      = '${brand}'KernelLoaderFsDxe/g' OvmfPkg/QemuKernelLoaderFsDxe/QemuKernelLoaderFsDxe.inf
sed -i 's/= QemuRamfbDxe/= '${brand}'RamfbDxe/g' OvmfPkg/QemuRamfbDxe/QemuRamfbDxe.inf
sed -i 's/= QemuVideoDxe/= '${brand}'VideoDxe/g' OvmfPkg/QemuVideoDxe/QemuVideoDxe.inf
sed -i 's/BASE_NAME                      = VirtHstiDxe/BASE_NAME                      = '${brand}'HstiDxe/g' OvmfPkg/VirtHstiDxe/VirtHstiDxe.inf
sed -i 's/BASE_NAME                      = Virtio10/BASE_NAME                      = '${brand}'io10/g' OvmfPkg/Virtio10Dxe/Virtio10.inf
sed -i 's/= VirtioBlkDxe/= '${brand}'ioBlkDxe/g' OvmfPkg/VirtioBlkDxe/VirtioBlk.inf
sed -i 's/= VirtioFsDxe/= '${brand}'ioFsDxe/g' OvmfPkg/VirtioFsDxe/VirtioFsDxe.inf
sed -i 's/= VirtioGpuDxe/= '${brand}'ioGpuDxe/g' OvmfPkg/VirtioGpuDxe/VirtioGpu.inf
sed -i 's/= VirtioKeyboardDxe/= '${brand}'ioKeyboardDxe/g' OvmfPkg/VirtioKeyboardDxe/VirtioKeyboard.inf
sed -i 's/= VirtioNetDxe/= '${brand}'ioNetDxe/g' OvmfPkg/VirtioNetDxe/VirtioNet.inf
sed -i 's/= VirtioPciDeviceDxe/= '${brand}'ioPciDeviceDxe/g' OvmfPkg/VirtioPciDeviceDxe/VirtioPciDeviceDxe.inf
sed -i 's/= VirtioRngDxe/= '${brand}'ioRngDxe/g' OvmfPkg/VirtioRngDxe/VirtioRng.inf
sed -i 's/= VirtioScsiDxe/= '${brand}'ioScsiDxe/g' OvmfPkg/VirtioScsiDxe/VirtioScsi.inf
sed -i 's/= VirtioSerialDxe/= '${brand}'ioSerialDxe/g' OvmfPkg/VirtioSerialDxe/VirtioSerial.inf
sed -i 's/= VirtNorFlashDxe/= '${brand}'NorFlashDxe/g' OvmfPkg/VirtNorFlashDxe/VirtNorFlashDxe.inf
sed -i 's/= XenAcpiPlatform/= '${brand}'AcpiPlatform/g' OvmfPkg/XenAcpiPlatformDxe/XenAcpiPlatformDxe.inf
sed -i 's/BASE_NAME                 = XenBusDxe/BASE_NAME                 = '${brand}'BusDxe/g' OvmfPkg/XenBusDxe/XenBusDxe.inf
sed -i 's/= XenIoPciDxe/= '${brand}'IoPciDxe/g' OvmfPkg/XenIoPciDxe/XenIoPciDxe.inf
sed -i 's/= XenIoPvhDxe/= '${brand}'IoPvhDxe/g' OvmfPkg/XenIoPvhDxe/XenIoPvhDxe.inf
sed -i 's/= XenPlatformPei/= '${brand}'PlatformPei/g' OvmfPkg/XenPlatformPei/XenPlatformPei.inf
sed -i 's/BASE_NAME                 = XenPvBlkDxe/BASE_NAME                 = '${brand}'PvBlkDxe/g' OvmfPkg/XenPvBlkDxe/XenPvBlkDxe.inf
sed -i 's/= XenResetVector/= '${brand}'ResetVector/g' OvmfPkg/XenResetVector/XenResetVector.inf
echo "结束sed工作"
