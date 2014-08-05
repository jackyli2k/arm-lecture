	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function


fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
       stmfd sp!,{r7,r8,lr}
       mov r7,r0;
       cmp r7,#1 @check if input arguement x is less or equal(LE) 1
       beq equal1
       blt less1

       sub r0,r7,#1
       bl fibonacci @call
       mov r8,r0

       sub r0,r7,#2
       bl fibonacci @@call

       add r0,r8,r0;
       ldmfd sp!,{r7,r8,pc}


less1: mov r0,#0
       ldmfd sp!,{r7,r8,pc}

equal1: mov r0,#1
        ldmfd sp!,{r7,r8,pc}

       .size fibonacci, .-fibonacci
	.end

          
          
     
