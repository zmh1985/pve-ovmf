#!/bin/bash
#适用于给pve-edk2-firmware里面的edk2打补丁使用，输出ovmf包。直接放本脚本在edk2目录下，在make包之前在edk2目录运行一次本脚本就是，运行后你可以继续使用git工具生成edk2具体版本的patch文件
#作者 李晓流 & 大大帅666 20240824出品 https://space.bilibili.com/565938745
echo "开始sed工作"
sed -i 's/0x20202020324B4445/0x20202020204c5450/g' MdeModulePkg/MdeModulePkg.dec
sed -i 's/QemuFwCfgAcpiPlatform/AsusFwCfgAcpiPlatform/g' OvmfPkg/AcpiPlatformDxe/AcpiPlatformDxe.inf
sed -i 's/= VirtioFdtDxe/= AsusioFdtDxe/g' OvmfPkg/Fdt/VirtioFdtDxe/VirtioFdtDxe.inf
sed -i 's/= QemuKernelLoaderFsDxe/= AsusKernelLoaderFsDxe/g' OvmfPkg/QemuKernelLoaderFsDxe/QemuKernelLoaderFsDxe.inf
sed -i 's/= QemuRamfbDxe/= AsusRamfbDxe/g' OvmfPkg/QemuRamfbDxe/QemuRamfbDxe.inf
sed -i 's/= QemuVideoDxe/= AsusVideoDxe/g' OvmfPkg/QemuVideoDxe/QemuVideoDxe.inf
sed -i 's/= VirtHstiDxe/= AsusHstiDxe/g' OvmfPkg/VirtHstiDxe/VirtHstiDxe.inf
sed -i 's/= Virtio10/= Asusio10/g' OvmfPkg/Virtio10Dxe/Virtio10.inf
sed -i 's/= VirtioBlkDxe/= AsusioBlkDxe/g' OvmfPkg/VirtioBlkDxe/VirtioBlk.inf
sed -i 's/= VirtioFsDxe/= AsusioFsDxe/g' OvmfPkg/VirtioFsDxe/VirtioFsDxe.inf
sed -i 's/= VirtioGpuDxe/= AsusioGpuDxe/g' OvmfPkg/VirtioGpuDxe/VirtioGpu.inf
sed -i 's/= VirtioKeyboardDxe/= AsusioKeyboardDxe/g' OvmfPkg/VirtioKeyboardDxe/VirtioKeyboard.inf
sed -i 's/= VirtioNetDxe/= AsusioNetDxe/g' OvmfPkg/VirtioNetDxe/VirtioNet.inf
sed -i 's/= VirtioPciDeviceDxe/= AsusioPciDeviceDxe/g' OvmfPkg/VirtioPciDeviceDxe/VirtioPciDeviceDxe.inf
sed -i 's/= VirtioRngDxe/= AsusioRngDxe/g' OvmfPkg/VirtioRngDxe/VirtioRng.inf
sed -i 's/= VirtioScsiDxe/= AsusioScsiDxe/g' OvmfPkg/VirtioScsiDxe/VirtioScsi.inf
sed -i 's/= VirtioSerialDxe/= AsusioSerialDxe/g' OvmfPkg/VirtioSerialDxe/VirtioSerial.inf
sed -i 's/= VirtNorFlashDxe/= AsusNorFlashDxe/g' OvmfPkg/VirtNorFlashDxe/VirtNorFlashDxe.inf
sed -i 's/= XenAcpiPlatform/= AsusAcpiPlatform/g' OvmfPkg/XenAcpiPlatformDxe/XenAcpiPlatformDxe.inf
sed -i 's/= XenBusDxe/= AsusBusDxe/g' OvmfPkg/XenBusDxe/XenBusDxe.inf
sed -i 's/= XenIoPciDxe/= AsusIoPciDxe/g' OvmfPkg/XenIoPciDxe/XenIoPciDxe.inf
sed -i 's/= XenIoPvhDxe/= AsusIoPvhDxe/g' OvmfPkg/XenIoPvhDxe/XenIoPvhDxe.inf
sed -i 's/= XenPlatformPei/= AsusPlatformPei/g' OvmfPkg/XenPlatformPei/XenPlatformPei.inf
sed -i 's/= XenPvBlkDxe/= AsusPvBlkDxe/g' OvmfPkg/XenPvBlkDxe/XenPvBlkDxe.inf
sed -i 's/= XenResetVector/= AsusResetVector/g' OvmfPkg/XenResetVector/XenResetVector.inf
echo "结束sed工作"
