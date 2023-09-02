# CPU Power Management

Retrieve information about your CPU:
_Requires `cpupower`_

```sh
sudo pacman -S cpupower
cpupower frequency-info
```

Limit the frequency
_Use the values within the limits from the previous command!_

```sh
sudo cpupower frequency-set -g powersave -d 0.8G -u 3.6G
```

Disabling CPU cores
_You can NOT modify the `/sys/devices/system/cpu/cpu0/online` file!_
_You might want to create a custom service to run this on start._

Each CPU core has its own `/sys/devices/system/cpu/cpu$i/` folder with the `online` file inside it!

```sh
# Reset the previous configuration
for ((i=1;i<$(nproc);i++)); do echo 1 | sudo tee /sys/devices/system/cpu/cpu$i/online > /dev/null; done
# Here we are keeping 4 cores online and the rest we are disabling!
for ((i=4;i<$(nproc);i++)); echo 0 | sudo tee /sys/devices/system/cpu/cpu$i/online > /dev/null; done
```
