.text    
.globl main    
main:    
    la $a0,input_num_msg 
    li $v0,4    
    syscall    

    la $t6,array     
    move $t7,$zero   
    addi $t8,$zero,10    
    move $t9,$zero  

input:               
    la $a0,input_int_msg  
                          
    li $v0,4
    syscall

    li $v0,5
    syscall

    move $t0,$t7     
    mul $t0,$t0,4    
    addu $t1,$t0,$t6 
    sw $v0,0($t1)   

    addi $t7,$t7,1   
    blt $t7,$t8,input 
    move $t7,$zero  
loop1:
    addu $t9,$t7,1   
    mul $t0,$t7,4    
    addu $t1,$t0,$t6 
    lw $t2,0($t1)  
    move $t5,$t1  
loop2:
    move $t0,$t9 
    mul $t0,$t0,4
    addu $t4,$t0,$t6
    lw $t3,0($t4)

    bge $t2,$t3,skip  
    lw $t2,0($t4)    
    move $t5,$t4       
skip:   
   addi $t9,$t9,1                 
   blt $t9,$t8,loop2  
   lw $t4,0($t1) 
   sw $t4,0($t5)    
   sw $t2,0($t1) 

   addi $t7,$t7,1 
   addi $t4,$t7,1 
   blt $t4,$t8,loop1 
   
output:
   la $a0,output_int_msg  
   li $v0,4
   syscall

   move $t7,$zero   

print:          
   move $t0,$t7
   mul $t0,$t0,4
   addu $t1,$t0,$t6
   lw $a0,0($t1)
   li $v0,1
   syscall

   la $a0,seperate 
   li $v0,4
   syscall

   addi $t7,$t7,1
   blt $t7,$t8,print   
.data 
array:.space 10 
input_num_msg:.asciiz "Please enter 10 unsigned number:\n"
input_int_msg:.asciiz "Please enter an unsigned integers to be sorted:\n"
output_int_msg:.asciiz "The sorted numbers are:\n"
seperate:.asciiz " "