<<<<<<< HEAD
library allochook;

{$mode objfpc}{$H+}

uses
  Classes, hookedfunctions
  { you can add units after this };

exports NtAllocateVirtualMemoryOrig;
exports NtFreeVirtualMemoryOrig;
exports RtlAllocateHeapOrig;
exports RtlFreeHeapOrig;
exports RtlDestroyHeapOrig;

exports CeAllocateVirtualMemory;
exports CeFreeVirtualMemory;
exports CeRtlAllocateHeap;
exports CeRtlFreeHeap;
exports CeRtlDestroyHeap;

exports HasSetupDataEvent;
exports CEHasHandledItEvent;
exports CEInitializationFinished;
exports HookEventData;

exports CeInitializeAllocHook;

begin
end.

=======
library allochook;

{$mode objfpc}{$H+}

uses
  Classes, hookedfunctions
  { you can add units after this };

exports NtAllocateVirtualMemoryOrig;
exports NtFreeVirtualMemoryOrig;
exports RtlAllocateHeapOrig;
exports RtlFreeHeapOrig;
exports RtlDestroyHeapOrig;

exports CeAllocateVirtualMemory;
exports CeFreeVirtualMemory;
exports CeRtlAllocateHeap;
exports CeRtlFreeHeap;
exports CeRtlDestroyHeap;

exports HasSetupDataEvent;
exports CEHasHandledItEvent;
exports CEInitializationFinished;
exports HookEventData;

exports CeInitializeAllocHook;

begin
end.

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
