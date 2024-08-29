<<<<<<< HEAD
NTSTATUS CETC_CreateFile(PHANDLE file, PCWSTR filename);
NTSTATUS CETC_OpenFile(PHANDLE file, PCWSTR filename);

=======
NTSTATUS CETC_CreateFile(PHANDLE file, PCWSTR filename);
NTSTATUS CETC_OpenFile(PHANDLE file, PCWSTR filename);

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
#define CETC_Write(file,buffer,size,iosb) ZwWriteFile(file,NULL,NULL,NULL,iosb,buffer,size,NULL,NULL)