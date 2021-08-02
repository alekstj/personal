#!/bin/sh -e

sed '/<stdlib.h>/a #include <linux/stddef.h>' \
	tools/objtool/arch/x86/decode.c > _
mv -f _ tools/objtool/arch/x86/decode.c
