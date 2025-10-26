.data
prompt: .asciiz "Enter 'C' to convert Celsius to Fahrenheit, or 'F' to convert Fahrenheit to Celsius: "  # Menu prompt
input_prompt: .asciiz "Enter the temperature: "  # Prompt for temperature input
c_to_f_message: .asciiz "Temperature in Fahrenheit: "  # Message for Celsius to Fahrenheit result
f_to_c_message: .asciiz "Temperature in Celsius: "  # Message for Fahrenheit to Celsius result
newline: .asciiz "\n"  # Newline character

# Define constants for 9.0, 5.0, and 32.0
nine: .float 9.0
five: .float 5.0
thirty_two: .float 32.0

.text
.globl main

main:
    # Print the menu prompt
    li $v0, 4          # System call for print_string
    la $a0, prompt     # Load address of the prompt string
    syscall

    # Read the user choice (C or F)
    li $v0, 12         # System call for reading a character
    syscall            # Perform the system call
    move $t0, $v0      # Store the user's choice in $t0 (C or F)

    # Check if the user chose 'C' for Celsius to Fahrenheit
    li $t1, 67         # ASCII code for 'C'
    beq $t0, $t1, c_to_f  # If choice is 'C', jump to Celsius to Fahrenheit conversion

    # Check if the user chose 'F' for Fahrenheit to Celsius
    li $t1, 70         # ASCII code for 'F'
    beq $t0, $t1, f_to_c  # If choice is 'F', jump to Fahrenheit to Celsius conversion

    # If neither 'C' nor 'F' is chosen, exit the program
    li $v0, 10         # System call for exit
    syscall

c_to_f:
    # Print the prompt for Celsius input
    li $v0, 4          # System call for print_string
    la $a0, input_prompt  # Load address of the input prompt
    syscall

    # Read the Celsius value (float)
    li $v0, 6          # System call for reading a float
    syscall            # Perform the system call
    # The float will now be stored in $f0 (Celsius)

    # Calculate Fahrenheit: F = (C * 9 / 5) + 32
    la $a0, nine       # Load address of the constant 9.0
    l.s $f2, 0($a0)    # Load 9.0 into $f2
    mul.s $f4, $f0, $f2  # $f4 = C * 9.0

    la $a0, five       # Load address of the constant 5.0
    l.s $f2, 0($a0)    # Load 5.0 into $f2
    div.s $f4, $f4, $f2  # $f4 = (C * 9.0) / 5.0

    la $a0, thirty_two   # Load address of the constant 32.0
    l.s $f2, 0($a0)      # Load 32.0 into $f2
    add.s $f4, $f4, $f2  # $f4 = (C * 9 / 5) + 32.0

    # Print the result message
    li $v0, 4          # System call for print_string
    la $a0, c_to_f_message  # Load address of Celsius to Fahrenheit result message
    syscall

    # Print the Fahrenheit temperature
    li $v0, 2          # System call for print_float
    mov.s $f12, $f4    # Move Fahrenheit result to $f12
    syscall            # Perform the system call

    # Print a newline
    li $v0, 4
    la $a0, newline
    syscall

    # Exit the program
    li $v0, 10         # System call for exit
    syscall

f_to_c:
    # Print the prompt for Fahrenheit input
    li $v0, 4          # System call for print_string
    la $a0, input_prompt  # Load address of the input prompt
    syscall

    # Read the Fahrenheit value (float)
    li $v0, 6          # System call for reading a float
    syscall            # Perform the system call
    # The float will now be stored in $f0 (Fahrenheit)

    # Calculate Celsius: C = (F - 32) * 5 / 9
    la $a0, thirty_two   # Load address of the constant 32.0
    l.s $f2, 0($a0)      # Load 32.0 into $f2
    sub.s $f4, $f0, $f2  # $f4 = F - 32.0

    la $a0, five       # Load address of the constant 5.0
    l.s $f2, 0($a0)    # Load 5.0 into $f2
    mul.s $f4, $f4, $f2  # $f4 = (F - 32) * 5.0

    la $a0, nine       # Load address of the constant 9.0
    l.s $f2, 0($a0)    # Load 9.0 into $f2
    div.s $f4, $f4, $f2  # $f4 = ((F - 32) * 5.0) / 9.0

    # Print the result message
    li $v0, 4          # System call for print_string
    la $a0, f_to_c_message  # Load address of Fahrenheit to Celsius result message
    syscall

    # Print the Celsius temperature
    li $v0, 2          # System call for print_float
    mov.s $f12, $f4    # Move Celsius result to $f12
    syscall            # Perform the system call

    # Print a newline
    li $v0, 4
    la $a0, newline
    syscall

    # Exit the program
    li $v0, 10         # System call for exit
    syscall
