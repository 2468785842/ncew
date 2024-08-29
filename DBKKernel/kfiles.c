<<<<<<< HEAD
#include "ntifs.h"
#include <windef.h>

NTSTATUS CETC_CreateFile(PHANDLE file, PCWSTR filename)
{
	UNICODE_STRING usFile;	
	OBJECT_ATTRIBUTES oaFile;
	IO_STATUS_BLOCK iosb;

	RtlInitUnicodeString(&usFile, filename);
	InitializeObjectAttributes(&oaFile,&usFile, OBJ_CASE_INSENSITIVE | OBJ_KERNEL_HANDLE, NULL,NULL);


	return ZwCreateFile(file,SYNCHRONIZE|FILE_READ_DATA|FILE_WRITE_DATA|FILE_APPEND_DATA | GENERIC_ALL,&oaFile,&iosb,0,FILE_ATTRIBUTE_NORMAL,0,FILE_SUPERSEDE,FILE_SYNCHRONOUS_IO_NONALERT,NULL,0);
}

NTSTATUS CETC_OpenFile(PHANDLE file, PCWSTR filename)
{
	UNICODE_STRING usFile;	
	OBJECT_ATTRIBUTES oaFile;
	IO_STATUS_BLOCK iosb;

	RtlInitUnicodeString(&usFile, filename);
	InitializeObjectAttributes(&oaFile,&usFile, OBJ_CASE_INSENSITIVE | OBJ_KERNEL_HANDLE, NULL,NULL);

	return ZwCreateFile(file,SYNCHRONIZE|FILE_READ_DATA|FILE_WRITE_DATA|FILE_APPEND_DATA | GENERIC_ALL,&oaFile,&iosb,0,FILE_ATTRIBUTE_NORMAL,0,FILE_OPEN,FILE_SYNCHRONOUS_IO_NONALERT,NULL,0);
}



		
=======
#include "ntifs.h"
#include <windef.h>

NTSTATUS CETC_CreateFile(PHANDLE file, PCWSTR filename)
{
	UNICODE_STRING usFile;	
	OBJECT_ATTRIBUTES oaFile;
	IO_STATUS_BLOCK iosb;

	RtlInitUnicodeString(&usFile, filename);
	InitializeObjectAttributes(&oaFile,&usFile, OBJ_CASE_INSENSITIVE | OBJ_KERNEL_HANDLE, NULL,NULL);


	return ZwCreateFile(file,SYNCHRONIZE|FILE_READ_DATA|FILE_WRITE_DATA|FILE_APPEND_DATA | GENERIC_ALL,&oaFile,&iosb,0,FILE_ATTRIBUTE_NORMAL,0,FILE_SUPERSEDE,FILE_SYNCHRONOUS_IO_NONALERT,NULL,0);
}

NTSTATUS CETC_OpenFile(PHANDLE file, PCWSTR filename)
{
	UNICODE_STRING usFile;	
	OBJECT_ATTRIBUTES oaFile;
	IO_STATUS_BLOCK iosb;

	RtlInitUnicodeString(&usFile, filename);
	InitializeObjectAttributes(&oaFile,&usFile, OBJ_CASE_INSENSITIVE | OBJ_KERNEL_HANDLE, NULL,NULL);

	return ZwCreateFile(file,SYNCHRONIZE|FILE_READ_DATA|FILE_WRITE_DATA|FILE_APPEND_DATA | GENERIC_ALL,&oaFile,&iosb,0,FILE_ATTRIBUTE_NORMAL,0,FILE_OPEN,FILE_SYNCHRONOUS_IO_NONALERT,NULL,0);
}



		
>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
		