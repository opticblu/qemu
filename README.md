makepkg -si

Install will fail at the end due to conflicts

Manually install output files:

sudo pacman -U qemu-arch-extra-git-20:8.1.0.r1171.gda1034094d-1-x86_64.pkg.tar.zst qemu-block-gluster-git-20:8.1.0.r1171.gda1034094d-1-x86_64.pkg.tar.zst qemu-block-iscsi-git-20:8.1.0.r1171.gda1034094d-1-x86_64.pkg.tar.zst qemu-git-20:8.1.0.r1171.gda1034094d-1-x86_64.pkg.tar.zst qemu-guest-agent-git-20:8.1.0.r1171.gda1034094d-1-x86_64.pkg.tar.zst

Obviously change the versions to whatever your buildpkg outputs

Looking glass users may need to install edk2-ovmf-202208 to get CPU host-passthrough working with IVSHMEM 
