finame: 101-hello_holberton.asm

          global    main
          extern    printf
main:
	  mov   edi, format
	  xor   eax, eax
	  call  printf
	  mov 	eax, 0
	  ret
format: db `Hello, Holberton\n`,0
