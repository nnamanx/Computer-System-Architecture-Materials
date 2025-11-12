.global 
_start: 
	@ Adding 10 to each element in an array 
	ldr r0, =array1 
	mov r1, #0 @ offset 
	mov r2, #0 @ counter 
loop: 
	cmp r0, #6 
	bge end 
	ldr r3, [r0, r1] 
	add r3, r3, #10 
	str r3 [r0, r1] 
	ldr r2, r2, #1 
	lsl r1, r2, 2 
	b loop 
	
end: svc 2 
.data 
array1: .word 2,3,11,4,55,6