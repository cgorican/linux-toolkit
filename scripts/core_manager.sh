#!/bin/bash

## Requires cpupower
# sudo pacman -S cpupower
# Check your cpu limits: cpupower frequency-info
# For me the info says: The frequency should be between 800MHz and 2.60GHz
if command -v cpupower &> /dev/null; then
    cpupower frequency-set -g powersave -d 0.8G -u 2.4G
else
    echo "cpupower is not installed, skipping CPU frequency configuration."
fi

# Reset the previous configuration
for ((i=1;i<$(nproc);i++)); do
    echo 1 | sudo tee /sys/devices/system/cpu/cpu$i/online > /dev/null;
done

# Here we are keeping 4 cores online and the rest we are disabling!
for ((i=4;i<$(nproc);i++)); do
    echo 0 | sudo tee /sys/devices/system/cpu/cpu$i/online > /dev/null;
done

# Disable turbo
echo 1 | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo > /dev/null;
