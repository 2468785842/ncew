<<<<<<< HEAD
#include <ntifs.h>
#include <windef.h>


VOID LoadImageNotifyRoutine(IN PUNICODE_STRING  FullImageName, IN HANDLE  ProcessId, IN PIMAGE_INFO  ImageInfo);
BOOLEAN MakeWritable(PVOID StartAddress,UINT_PTR size,BOOLEAN usecopyonwrite);

BOOLEAN		ImageNotifyRoutineLoaded;
char*		ModuleList;
int			ModuleListSize;
ULONG		Size;

UINT_PTR	ActiveLinkOffset;
UINT_PTR	ProcessNameOffset;
UINT_PTR	DebugportOffset;
UINT_PTR	PIDOffset;

=======
#include <ntifs.h>
#include <windef.h>


VOID LoadImageNotifyRoutine(IN PUNICODE_STRING  FullImageName, IN HANDLE  ProcessId, IN PIMAGE_INFO  ImageInfo);
BOOLEAN MakeWritable(PVOID StartAddress,UINT_PTR size,BOOLEAN usecopyonwrite);

BOOLEAN		ImageNotifyRoutineLoaded;
char*		ModuleList;
int			ModuleListSize;
ULONG		Size;

UINT_PTR	ActiveLinkOffset;
UINT_PTR	ProcessNameOffset;
UINT_PTR	DebugportOffset;
UINT_PTR	PIDOffset;

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
