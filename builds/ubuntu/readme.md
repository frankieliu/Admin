# Get system info
inxi -Faz|nc paste.c-net.org 9999
https://paste.c-net.org/StraitBorealis

# journal
[tips](https://bbs.archlinux.org/viewtopic.php?id=272848)
sudo journalctl -b | grep -e 'deauth\|Deauth'

# system information T490
System:
  Kernel: 6.11.0-26-generic arch: x86_64 bits: 64 compiler: gcc v: 13.3.0 clocksource: tsc
    avail: acpi_pm parameters: BOOT_IMAGE=/boot/vmlinuz-6.11.0-26-generic
    root=UUID=517ab005-c7c1-463b-978c-713651904609 ro quiet splash vt.handoff=7
  Console: tty 2 DM: GDM3 v: 46.2 Distro: Ubuntu 24.04.2 LTS (Noble Numbat)
Machine:
  Type: Laptop System: LENOVO product: 20N3S74300 v: ThinkPad T490 serial: <superuser required>
    Chassis: type: 10 serial: <superuser required>
  Mobo: LENOVO model: 20N3S74300 v: SDK0J40697 WIN serial: <superuser required>
    part-nu: LENOVO_MT_20N3_BU_Think_FM_ThinkPad T490 uuid: <superuser required> UEFI: LENOVO
    v: N2IET90W (1.68 ) date: 07/06/2020
Battery:
  ID-1: BAT0 charge: 43.1 Wh (89.2%) condition: 48.3/49.0 Wh (98.6%) volts: 12.6 min: 11.6
    model: LGC 02DL007 type: Li-poly serial: <filter> status: not charging
CPU:
  Info: model: Intel Core i7-8665U bits: 64 type: MT MCP arch: Comet/Whiskey Lake note: check
    gen: core 8 level: v3 note: check built: 2018 process: Intel 14nm family: 6 model-id: 0x8E (142)
    stepping: 0xC (12) microcode: 0x100
  Topology: cpus: 1x cores: 4 tpc: 2 threads: 8 smt: enabled cache: L1: 256 KiB
    desc: d-4x32 KiB; i-4x32 KiB L2: 1024 KiB desc: 4x256 KiB L3: 8 MiB desc: 1x8 MiB
  Speed (MHz): avg: 550 high: 800 min/max: 400/4800 scaling: driver: intel_pstate
    governor: powersave cores: 1: 800 2: 400 3: 400 4: 400 5: 400 6: 400 7: 800 8: 800
    bogomips: 33599
  Flags: avx avx2 ht lm nx pae sse sse2 sse3 sse4_1 sse4_2 ssse3
  Vulnerabilities:
  Type: gather_data_sampling mitigation: Microcode
  Type: itlb_multihit status: KVM: VMX unsupported
  Type: l1tf status: Not affected
  Type: mds status: Not affected
  Type: meltdown status: Not affected
  Type: mmio_stale_data mitigation: Clear CPU buffers; SMT vulnerable
  Type: reg_file_data_sampling status: Not affected
  Type: retbleed mitigation: Enhanced IBRS
  Type: spec_rstack_overflow status: Not affected
  Type: spec_store_bypass mitigation: Speculative Store Bypass disabled via prctl
  Type: spectre_v1 mitigation: usercopy/swapgs barriers and __user pointer sanitization
  Type: spectre_v2 mitigation: Enhanced / Automatic IBRS; IBPB: conditional; RSB filling;
    PBRSB-eIBRS: SW sequence; BHI: SW loop, KVM: SW loop
  Type: srbds mitigation: Microcode
  Type: tsx_async_abort mitigation: TSX disabled
Graphics:
  Device-1: Intel WhiskeyLake-U GT2 [UHD Graphics 620] vendor: Lenovo driver: i915 v: kernel
    arch: Gen-9.5 process: Intel 14nm built: 2016-20 ports: active: eDP-1 empty: DP-1, DP-2,
    HDMI-A-1, HDMI-A-2 bus-ID: 00:02.0 chip-ID: 8086:3ea0 class-ID: 0300
  Device-2: Chicony ThinkPad T490 Webcam driver: uvcvideo type: USB rev: 2.0 speed: 480 Mb/s
    lanes: 1 mode: 2.0 bus-ID: 1-8:3 chip-ID: 04f2:b681 class-ID: 0e02 serial: <filter>
  Display: server: X.org v: 1.21.1.11 with: Xwayland v: 23.2.6 driver: gpu: i915 tty: 240x67
  Monitor-1: eDP-1 model: InfoVision Optronics/Kunshan 0x057d built: 2018 res: 1920x1080
    dpi: 158 gamma: 1.2 size: 309x174mm (12.17x6.85") diag: 355mm (14") ratio: 16:9 modes: 1920x1080
  API: EGL v: 1.5 hw: drv: intel iris platforms: device: 0 drv: iris device: 1 drv: swrast gbm:
    drv: iris surfaceless: drv: iris inactive: wayland,x11
  API: OpenGL v: 4.6 compat-v: 4.5 vendor: mesa v: 24.2.8-1ubuntu1~24.04.1
    note: console (EGL sourced) renderer: Mesa Intel UHD Graphics 620 (WHL GT2), llvmpipe (LLVM
    19.1.1 256 bits)
Audio:
  Device-1: Intel Cannon Point-LP High Definition Audio vendor: Lenovo driver: snd_hda_intel
    v: kernel alternate: snd_soc_avs,snd_sof_pci_intel_cnl bus-ID: 00:1f.3 chip-ID: 8086:9dc8
    class-ID: 0403
  API: ALSA v: k6.11.0-26-generic status: kernel-api tools: alsactl,alsamixer,amixer
  Server-1: PipeWire v: 1.0.5 status: active with: 1: pipewire-pulse status: active
    2: wireplumber status: active 3: pipewire-alsa type: plugin tools: pw-cat,pw-cli,wpctl
Network:
  Device-1: Intel Cannon Point-LP CNVi [Wireless-AC] driver: iwlwifi v: kernel bus-ID: 00:14.3
    chip-ID: 8086:9df0 class-ID: 0280
  IF: wlp0s20f3 state: up mac: <filter>
  Device-2: Intel Ethernet I219-LM vendor: Lenovo driver: e1000e v: kernel port: N/A
    bus-ID: 00:1f.6 chip-ID: 8086:15bd class-ID: 0200
  IF: enp0s31f6 state: down mac: <filter>
  IF-ID-1: br-321f75d0a1df state: down mac: <filter>
  IF-ID-2: br-8bac717fa724 state: down mac: <filter>
  IF-ID-3: docker0 state: down mac: <filter>
  Info: services: NetworkManager, systemd-timesyncd, wpa_supplicant
Bluetooth:
  Device-1: Intel Bluetooth 9460/9560 Jefferson Peak (JfP) driver: btusb v: 0.8 type: USB rev: 2.0
    speed: 12 Mb/s lanes: 1 mode: 1.1 bus-ID: 1-10:5 chip-ID: 8087:0aaa class-ID: e001
  Report: hciconfig ID: hci0 rfk-id: 1 state: up address: <filter> bt-v: 5.1 lmp-v: 10
    sub-v: 100 hci-v: 10 rev: 100 class-ID: 6c010c
  Info: acl-mtu: 1021:4 sco-mtu: 96:6 link-policy: rswitch sniff link-mode: peripheral accept
    service-classes: rendering, capturing, audio, telephony
Drives:
  Local Storage: total: 238.47 GiB used: 30.72 GiB (12.9%)
  SMART Message: Required tool smartctl not installed. Check --recommends
  ID-1: /dev/nvme0n1 maj-min: 259:0 vendor: Intel model: SSDPEKKF256G8L size: 238.47 GiB
    block-size: physical: 512 B logical: 512 B speed: 31.6 Gb/s lanes: 4 tech: SSD serial: <filter>
    fw-rev: L14P temp: 31.9 C scheme: GPT
Partition:
  ID-1: / raw-size: 237.42 GiB size: 232.64 GiB (97.98%) used: 30.71 GiB (13.2%) fs: ext4
    dev: /dev/nvme0n1p2 maj-min: 259:2
  ID-2: /boot/efi raw-size: 1.05 GiB size: 1.05 GiB (99.80%) used: 6.1 MiB (0.6%) fs: vfat
    dev: /dev/nvme0n1p1 maj-min: 259:1
Swap:
  Kernel: swappiness: 60 (default) cache-pressure: 100 (default) zswap: no
  ID-1: swap-1 type: file size: 8 GiB used: 0 KiB (0.0%) priority: -2 file: /swap.img
Sensors:
  System Temperatures: cpu: 41.0 C mobo: N/A
  Fan Speeds (rpm): N/A
Info:
  Memory: total: 24 GiB available: 23.22 GiB used: 863.1 MiB (3.6%)
  Processes: 206 Power: uptime: 5m states: freeze,mem,disk suspend: deep avail: s2idle
    wakeups: 0 hibernate: platform avail: shutdown, reboot, suspend, test_resume image: 9.26 GiB
    services: power-profiles-daemon Init: systemd v: 255 target: graphical (5) default: graphical
    tool: systemctl
  Packages: 1631 pm: dpkg pkgs: 1621 libs: 863 tools: apt,apt-get pm: snap pkgs: 10
    Compilers: N/A Shell: Bash (login) v: 5.2.21 running-in: tty 2 inxi: 3.3.34