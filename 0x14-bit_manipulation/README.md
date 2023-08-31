Project by: Joseph Anateyi 
Project: 0x14-bit_manipulation
Course: ALX SOFTWARE ENGINEERING


overview

Task 0


unsigned int binary_to_uint(const char *b) 
{
  unsigned int dec = 0;

  if (b == NULL)
    return (0);

  while (*b)
    {
      if (*b == '0')
	{
	  b++;
	  continue ;
	}
      if (*b == '1') 
	{
	  dec = (dec << 1) | 1;
	  b++;
	  continue; 
	}
      else
	return (0);
    }

  return (dec);
}
Initialize decimal number to 0
Check if binary string is NULL, return 0
Loop through each char
If '0', increment pointer only
If '1', left shift dec and OR with 1
Else invalid char, return 0
Return final decimal number
This handles NULL string, shifts and inserts 1's to build decimal value, and returns 0 on invalid char.

Task 1


void print_binary(unsigned long int n)
{
  int len, i, count = 0;

  if (n == 0)
    {
      _putchar('0');
      return ;
    }

  len = 0;
  while (n > 0)
    {
      len++;
      n = n >> 1;
    }

  for (i = len - 1; i >= 0; i--)
    {
      if ((n >> i) & 1)
	_putchar('1');
      else
	_putchar ('0');
    }
}
Handle 0 input case
Get length by shifting to highest set bit
Loop length times
Isolate each bit with shift and mask
Print '1' or '0' based on bit
Prints binary representation
This calculates the number of bits, then prints each bit from highest to lowest.
Task 2


int get_bit(unsigned long int n, unsigned int index)
{
  if (index >= (sizeof(unsigned long int) * 8))
      return (-1);

  if ((n >> index) & 1)
      return (1);

  return (0);
}
Check for invalid index
Right shift number by index
Isolate bit at index with AND
Return 1 if bit is set, 0 if not
This first validates the index, then isolates and returns the bit value.

Task 3


int set_bit(unsigned long int *n, unsigned int index)
{
  if (index >= (sizeof(unsigned long int) * 8))
    return (-1);
    
  *n |= (1 << index);  
  return (1);
}
Check for invalid index
Use OR assignment to set bit at index
1 is left shifted by index then OR'd to set that bit
Return 1 success
OR assignment flips the bit at the index to 1 to set it.

Task 4


int clear_bit(unsigned long int *n, unsigned int index)
{
  if (index >= (sizeof(unsigned long int) * 8))
    return (-1);
  
  *n &= ~(1 << index);
  return (1); 
}
Check invalid index
AND assignment to clear bit
1 shifted left is inverted then AND'd to clear
Return 1 on success
AND'ing with the inverted mask clears the bit at the index.

Task 5


unsigned int flip_bits(unsigned long int n, unsigned long int m)
{
  unsigned long int xor = n ^ m;
  int bits = 0;

  while (xor > 0)
    {
      bits += (xor & 1);
      xor >>= 1;
    }

  return (bits);
}
XOR the two numbers
Loop through each bit
Add current bit to count (1 or 0)
Right shift to move to next bit
Return total bits set (flipped bits)
XOR'ing isolates the different bits. Counting the 1's gives the flipped count.

Task 6


int get_endianness(void)
{
  int num = 1;
  char *endian = (char*) &num;

  if (*endian == 1)
    return (1);
  
  return (0);
}
Set int to 1 which in binary is 0000 0001
Get char pointer to int
Check lowest byte pointed to
1 means little endian
0 means big endian
Lowest byte of 1 indicates little endian.

Task 7


101-password
2002
Contains the cracked password for the binary.
