#!/bin/bash
set -xue

# QEMUのファイルパス
QEMU=qemu-system-riscv32

# QEMUを起動（OpenSBIが出る）
$QEMU -machine virt -bios default -nographic -serial mon:stdio --no-reboot
