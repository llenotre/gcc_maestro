#!/bin/sh

# Patching binutils

#sed -i 's/^	gnu\* |/	gnu* | maestro* |/' binutils/config.sub
#sed -i '/^  i\[3-7\]86-\*-solaris2\*)/i \ \ i[3-7]86-*-maestro*)\n    targ_defvec=i386_elf32_vec\n    targ_selvecs=\n    targ64_selvecs=x86_64_elf64_vec\n    ;;' binutils/bfd/config.bfd
#sed -i '/^  i386-\*-elf\*)/a \ \ i386-*-maestro*)			fmt=elf em=gnu ;;' binutils/gas/configure.tgt
sed -i '/^i\[3-7\]86-\*-solaris2\*)/i i[3-7]86-*-maestro*)\n			targ_emul=elf_i386_maestro\n			targ_extra_emuls=elf_i386\n			targ64_extra_emuls="elf_x86_64_maestro elf_x86_64"\n			;;' binutils/ld/configure.tgt

# Patching gcc

# TODO
