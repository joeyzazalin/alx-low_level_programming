Project by: Joseph Anateyi 
Project: 0x15-file_io
Course: ALX SOFTWARE ENGINEERING


Task 0: Read File and Print Letters


int fd = open(filename, O_RDONLY);
Open file for reading only


if (fd == -1)
  return 0;
Check if file open failed


char *buf;
buf = malloc(sizeof(char) * (letters));
if (!buf)
  return (0);
Allocate buffer for reading file


while (letters_read < letters)
{
  num = read(fd, buf + letters_read, letters - letters_read);
  if (num < 0)
    return (0);
  letters_read += num;
}
*(buf + letters_read) = '\0';
Read chunks into buffer until num letters read
Append null byte after buffer


num_written = write(STDOUT_FILENO, buf, letters_read);

free(buf);
close(fd);

return (num_written);
Write buffer to standard output
Free buffer, close file
Return num letters read/written

Task 1: Create File


fd = open(filename, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
Open file write-only, create/truncate


if (fd == -1)
  return -1;
Check for open error


if (text_content)
  write(fd, text_content, strlen(text_content));
Write content if not NULL


close(fd);
return 1;
Close file, return success

Task 2: Append Text to File


fd = open(filename, O_WRONLY | O_APPEND);
if (fd == -1)
  return -1;
Open file append only


if (text_content)
  write(fd, text_content, strlen(text_content));

close(fd);
return 1;
Write content if not NULL
Close file, return success

Task 3: Copy File Contents


int in_fd = open(av[1], O_RDONLY);
int out_fd = open(av[2], O_WRONLY | O_TRUNC | O_CREAT, 0664);
Open input and output files


while (count = read(in_fd, buf, 1024))
{
  if (count == -1)
    dprintf(STDERR_FILENO, "Error: Can't read from file %s\n", av[1]);       

  if (write(out_fd, buf, count) != count)
    dprintf(STDERR_FILENO, "Error: Can't write to %s\n", av[2]);
}
Copy 1KB chunks between files
Print errors to stderr


if (close(in_fd) == -1)
  dprintf(STDERR_FILENO,"Error: Can't close fd %d\n", in_fd);

if (close(out_fd) == -1)
  dprintf(STDERR_FILENO,"Error: Can't close fd %d\n", out_fd);
Close file descriptors
Print errors
This shows properly using read(), write(), open(), close() to copy full contents between two files.

Task 4: Print ELF Header


elf_header header;
read(fd, &header, sizeof(header));
Read ELF header struct

if (header.e_ident[EI_MAG0] != ELFMAG0 || 
    header.e_ident[EI_MAG1] != ELFMAG1 ||
    header.e_ident[EI_MAG2] != ELFMAG2 || 
    header.e_ident[EI_MAG3] != ELFMAG3)
{
  printf("Error: Not an ELF file\n");
  return;
}
Check magic number is valid


printf("ELF Header:\n");
printf("  Magic:   %x\n", header.e_ident[EI_MAG0]);
//... print other header fields
Print specific header fields
This parses an ELF file by reading the header struct and validating the magic number before printing fields.
