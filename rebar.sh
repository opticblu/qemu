##you can probably dump this in qemu hooks ALSO THIS PROBABLY (definitely) WILL NOT WORK WITH A DISPLAY MANAGER AND WILL MAKE LIFE UNPLEASANT. Obviously, you need to change this according to your GPU's address, yours might not be at 0000:03:00.0

echo "un-bind 69420XT from amdgpu module"
echo 0000:03:00.0 > /sys/bus/pci/drivers/amdgpu/unbind
sleep 3

echo "Setting ReBAR 0 size to 8GB, change 13 to 14 for a 16gb GPU"
echo 13 > /sys/bus/pci/devices/0000:03:00.0/resource0_resize
sleep 1

echo "aaaand ReBAR 2 to 8MB"
echo 3 > /sys/bus/pci/devices/0000:03:00.0/resource2_resize

sleep 2
echo 1002 73bf > /sys/bus/pci/drivers/vfio-pci/new_id || echo -n "0000:03:00.0" > /sys/bus/pci/drivers/vfio-pci/bind
echo done
sleep 2

echo "un-bind GPU sound thingy"
echo 0000:03:00.1 > /sys/bus/pci/drivers/snd_hda_intel/unbind
sleep 2
echo 1002 ab28 > /sys/bus/pci/drivers/vfio-pci/new_id || echo -n "0000:03:00.1" > /sys/bus/pci/drivers/vfio-pci/bind
echo done
sleep 1

echo "lol done ig, good luck"
