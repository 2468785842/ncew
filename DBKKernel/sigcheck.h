<<<<<<< HEAD
#ifndef SIGCHECK_H
#define SIGCHECK_H

NTSTATUS SecurityCheck(void);
NTSTATUS CheckSignatureOfFile(PUNICODE_STRING originalpath, BOOL isProcess);
NTSTATUS CheckSignature(PVOID buffer, DWORD buffersize, PVOID sig, DWORD sigsize);

=======
#ifndef SIGCHECK_H
#define SIGCHECK_H

NTSTATUS SecurityCheck(void);
NTSTATUS CheckSignatureOfFile(PUNICODE_STRING originalpath, BOOL isProcess);
NTSTATUS CheckSignature(PVOID buffer, DWORD buffersize, PVOID sig, DWORD sigsize);

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
#endif