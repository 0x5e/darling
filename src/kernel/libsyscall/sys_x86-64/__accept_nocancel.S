#define __SYSCALL_32BIT_ARG_BYTES 12
#include "SYS.h"

#ifndef SYS_accept_nocancel
#error "SYS_accept_nocancel not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__x86_64__)
__SYSCALL2(__accept_nocancel, accept_nocancel, 3, cerror_nocancel)
#endif

#if defined(__x86_64__)
	.globl	accept$NOCANCEL
		accept$NOCANCEL = __accept_nocancel
#endif

