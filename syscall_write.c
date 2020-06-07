#include <unistd.h>
#include <sys/syscall.h>
#include <stdio.h>

// ssize_t write(int fd, const void *buf, size_t count);
// /usr/lib/gcc/x86_64-linux-gnu/9/include
// /usr/local/include
// /usr/include/x86_64-linux-gnu
// /usr/include

// SYS_write 

// ENTRY (syscall)
// 	movq %rdi, %rax		/* Syscall number -> rax.  */
// 	movq %rsi, %rdi		/* shift arg1 - arg5.  */
// 	movq %rdx, %rsi
// 	movq %rcx, %rdx
// 	movq %r8, %r10
// 	movq %r9, %r8
// 	movq 8(%rsp),%r9	/* arg6 is on the stack.  */
// 	syscall			/* Do the system call.  */
// 	cmpq $-4095, %rax	/* Check %rax for error.  */
// 	jae SYSCALL_ERROR_LABEL	/* Jump to error handler if error.  */
// 	ret// 

ssize_t syscall_write(int lable, int fd, const void *buf, size_t count)
{
 	asm("movq %rdi, %rax");		/* Syscall number -> rax.  */
 	asm("movq %rsi, %rdi");		/* shift arg1 - arg5.  */
 	asm("movq %rdx, %rsi");
 	asm("movq %rcx, %rdx");
 	asm("movq %r8, %r10");
 	asm("movq %r9, %r8");
 	asm("movq 8(%rsp),%r9");	/* arg6 is on the stack.  */
 	asm("syscall");			/* Do the system call.  */
 	//asm("cmpq $-4095, %rax");	/* Check %rax for error.  */
 	//asm("jae SYSCALL_ERROR_LABEL");	/* Jump to error handler if error.  */
 	asm("popq %rbp");
        asm("ret");
}


int main(void)
{
        char *buff = "hello, wolrd\n";
        size_t len = 13;

        syscall_write(SYS_write, 1, buff, len);

        //printf("ret=%ld\n", syscall_write(SYS_write, 1, buff, len));

        return 0;
}
