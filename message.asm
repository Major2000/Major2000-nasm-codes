segment .text 
	global _start
_start:

	mov edx,len
	mov ecx,msg
	mov ebx,1
	mov eax,4	;system call number (sys_write)
	int 0x80	;call the kernel

	mov eax,1	;system call number (sys_exit)
	int 0x80 	;call the kernel

segment .data 
msg db 'This is the messsge', 0xa	;string to be printed
len equ $ - msg				;length of the message
 


