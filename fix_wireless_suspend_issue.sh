#!/usr/bin/env bash

# try this
# https://askubuntu.com/questions/1022203/how-to-prevent-wifi-sleep-after-suspend

# the info search
# https://www.google.com/search?ei=nWfTW-XiH4HYtQXiibmYCA&q=ubuntu+18.04+wifi+suspend&oq=ubuntu+18.04+wifi+suspend&gs_l=psy-ab.3..0i22i30l2.13385.14631..14863...0.0..0.88.534.7......0....1..gws-wiz.......0j0i71j35i39j33i22i29i30.YB5YwUV1LLg

# restart network manager
# systemctl restart NetworkManager.service

# this may also work - applied already
# QCA9377
# sudo lshw -class network
# export PRODUCT=`sudo lshw -class network | grep product | awk '{print $2}'`

# export PRODUCT=ath10k_pci

# comment out last line if do
export PRODUCT=iwlwifi

echo "SUSPEND_MODULES=\"$PRODUCT\"" | sudo tee /etc/pm/sleep.d/config
sudo chmod +x /etc/pm/sleep.d/config

# echo "options $PRODUCT fwlps=N" | sudo tee /etc/modprobe.d/$PRODUCT.conf


# get latest firmware from linux kernel.org
# wget -m -e robots=off --no-parent https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/ath10k/QCA9377/hw1.0


# debug trace

[  172.036295] PM: suspend exit
[  172.077587] IPv6: ADDRCONF(NETDEV_UP): wlp1s0: link is not ready
[  172.115150] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x00080008: -110
[  172.145968] ath10k_pci 0000:01:00.0: failed to wake target for write32 of 0xffffffff at 0x00080008: -110
[  172.202782] ath10k_pci 0000:01:00.0: failed to wake target for write32 of 0xfffffffe at 0x00080008: -110
[  172.258813] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  172.289648] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  172.320483] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  172.351327] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  172.382202] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  172.413016] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  172.443911] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  175.406531] ath10k_pci 0000:01:00.0: failed to read device register, device is gone
[  175.498995] ath10k_pci 0000:01:00.0: firmware crashed! (guid 16926f7d-c59b-47f7-97b5-09bb26f6b46b)
[  175.499002] ath10k_pci 0000:01:00.0: qca9377 hw1.1 target 0x05020001 chip_id 0x003821ff sub 1028:1810
[  175.499004] ath10k_pci 0000:01:00.0: kconfig debug 0 debugfs 1 tracing 1 dfs 0 testmode 0
[  175.499595] ath10k_pci 0000:01:00.0: firmware ver WLAN.TF.2.1-00021-QCARMSWP-1 api 6 features wowlan,ignore-otp crc32 42e41877
[  175.499831] ath10k_pci 0000:01:00.0: board_file api 2 bmi_id N/A crc32 8aedfa4a
[  175.499835] ath10k_pci 0000:01:00.0: htt-ver 3.56 wmi-op 4 htt-op 3 cal otp max-sta 32 raw 0 hwcrypto 1
[  175.973891] ath10k_pci 0000:01:00.0: failed to read firmware dump area: -16
[  175.973894] ath10k_pci 0000:01:00.0: Copy Engine register dump:
[  176.097304] ath10k_pci 0000:01:00.0: [00]: 0x00034400 4294967295 4294967295 4294967295 4294967295
[  176.220668] ath10k_pci 0000:01:00.0: [01]: 0x00034800 4294967295 4294967295 4294967295 4294967295
[  176.343991] ath10k_pci 0000:01:00.0: [02]: 0x00034c00 4294967295 4294967295 4294967295 4294967295
[  176.467431] ath10k_pci 0000:01:00.0: [03]: 0x00035000 4294967295 4294967295 4294967295 4294967295
[  176.590761] ath10k_pci 0000:01:00.0: [04]: 0x00035400 4294967295 4294967295 4294967295 4294967295
[  176.714043] ath10k_pci 0000:01:00.0: [05]: 0x00035800 4294967295 4294967295 4294967295 4294967295
[  176.837338] ath10k_pci 0000:01:00.0: [06]: 0x00035c00 4294967295 4294967295 4294967295 4294967295
[  176.960620] ath10k_pci 0000:01:00.0: [07]: 0x00036000 4294967295 4294967295 4294967295 4294967295
[  176.960646] ath10k_pci 0000:01:00.0: failed to reset chip: -5
[  176.960649] ath10k_pci 0000:01:00.0: Could not init hif: -5
[  177.142438] ath10k_warn: 152 callbacks suppressed
[  177.142444] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  177.173327] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  177.204140] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  177.235075] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  177.265897] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  177.296708] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  177.327512] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  177.358374] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  177.389206] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  177.420028] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  180.286411] ath10k_pci 0000:01:00.0: failed to read device register, device is gone
[  180.378867] ath10k_pci 0000:01:00.0: firmware crashed! (guid 8c185712-a10a-411c-b8f5-d8fa3901535e)
[  180.378873] ath10k_pci 0000:01:00.0: qca9377 hw1.1 target 0x05020001 chip_id 0x003821ff sub 1028:1810
[  180.378875] ath10k_pci 0000:01:00.0: kconfig debug 0 debugfs 1 tracing 1 dfs 0 testmode 0
[  180.379459] ath10k_pci 0000:01:00.0: firmware ver WLAN.TF.2.1-00021-QCARMSWP-1 api 6 features wowlan,ignore-otp crc32 42e41877
[  180.379705] ath10k_pci 0000:01:00.0: board_file api 2 bmi_id N/A crc32 8aedfa4a
[  180.379708] ath10k_pci 0000:01:00.0: htt-ver 3.56 wmi-op 4 htt-op 3 cal otp max-sta 32 raw 0 hwcrypto 1
[  180.379715] ath10k_pci 0000:01:00.0: failed to read firmware dump area: -28
[  180.379718] ath10k_pci 0000:01:00.0: Copy Engine register dump:
[  180.502979] ath10k_pci 0000:01:00.0: [00]: 0x00034400 4294967295 4294967295 4294967295 4294967295
[  180.626256] ath10k_pci 0000:01:00.0: [01]: 0x00034800 4294967295 4294967295 4294967295 4294967295
[  180.749563] ath10k_pci 0000:01:00.0: [02]: 0x00034c00 4294967295 4294967295 4294967295 4294967295
[  180.872841] ath10k_pci 0000:01:00.0: [03]: 0x00035000 4294967295 4294967295 4294967295 4294967295
[  180.996085] ath10k_pci 0000:01:00.0: [04]: 0x00035400 4294967295 4294967295 4294967295 4294967295
[  181.119356] ath10k_pci 0000:01:00.0: [05]: 0x00035800 4294967295 4294967295 4294967295 4294967295
[  181.242632] ath10k_pci 0000:01:00.0: [06]: 0x00035c00 4294967295 4294967295 4294967295 4294967295
[  181.365930] ath10k_pci 0000:01:00.0: [07]: 0x00036000 4294967295 4294967295 4294967295 4294967295
[  181.365937] ath10k_pci 0000:01:00.0: failed to reset chip: -5
[  181.365940] ath10k_pci 0000:01:00.0: Could not init hif: -5
[  181.472769] dell_wmi: Unknown WMI event type 0x12
[  182.148241] ath10k_warn: 154 callbacks suppressed
[  182.148246] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  182.179099] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  182.209923] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  182.240744] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  182.271561] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  182.302392] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  182.333212] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  182.363989] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  182.394816] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  182.425687] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  184.705817] ath10k_pci 0000:01:00.0: failed to read device register, device is gone
[  184.798298] ath10k_pci 0000:01:00.0: firmware crashed! (guid a7dd00d7-ee27-4f87-be1d-fac228460b9d)
[  184.798304] ath10k_pci 0000:01:00.0: qca9377 hw1.1 target 0x05020001 chip_id 0x003821ff sub 1028:1810
[  184.798306] ath10k_pci 0000:01:00.0: kconfig debug 0 debugfs 1 tracing 1 dfs 0 testmode 0
[  184.798889] ath10k_pci 0000:01:00.0: firmware ver WLAN.TF.2.1-00021-QCARMSWP-1 api 6 features wowlan,ignore-otp crc32 42e41877
[  184.799124] ath10k_pci 0000:01:00.0: board_file api 2 bmi_id N/A crc32 8aedfa4a
[  184.799127] ath10k_pci 0000:01:00.0: htt-ver 3.56 wmi-op 4 htt-op 3 cal otp max-sta 32 raw 0 hwcrypto 1
[  184.799133] ath10k_pci 0000:01:00.0: failed to read firmware dump area: -28
[  184.799136] ath10k_pci 0000:01:00.0: Copy Engine register dump:
[  184.922384] ath10k_pci 0000:01:00.0: [00]: 0x00034400 4294967295 4294967295 4294967295 4294967295
[  185.045650] ath10k_pci 0000:01:00.0: [01]: 0x00034800 4294967295 4294967295 4294967295 4294967295
[  185.168911] ath10k_pci 0000:01:00.0: [02]: 0x00034c00 4294967295 4294967295 4294967295 4294967295
[  185.292132] ath10k_pci 0000:01:00.0: [03]: 0x00035000 4294967295 4294967295 4294967295 4294967295
[  185.415446] ath10k_pci 0000:01:00.0: [04]: 0x00035400 4294967295 4294967295 4294967295 4294967295
[  185.538710] ath10k_pci 0000:01:00.0: [05]: 0x00035800 4294967295 4294967295 4294967295 4294967295
[  185.661931] ath10k_pci 0000:01:00.0: [06]: 0x00035c00 4294967295 4294967295 4294967295 4294967295
[  185.785237] ath10k_pci 0000:01:00.0: [07]: 0x00036000 4294967295 4294967295 4294967295 4294967295
[  185.785242] ath10k_pci 0000:01:00.0: failed to reset chip: -5
[  185.785245] ath10k_pci 0000:01:00.0: Could not init hif: -5
[  185.833510] dell_wmi: Unknown WMI event type 0x12
[  196.045427] ath10k_warn: 114 callbacks suppressed
[  196.045435] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x00080008: -110
[  196.076387] ath10k_pci 0000:01:00.0: failed to wake target for write32 of 0xffffffff at 0x00080008: -110
[  196.134988] ath10k_pci 0000:01:00.0: failed to wake target for write32 of 0xfffffffe at 0x00080008: -110
[  196.191058] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  196.222017] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  196.252806] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
[  196.283711] ath10k_pci 0000:01:00.0: failed to wake target for read32 at 0x0003a028: -110
➜  ~
