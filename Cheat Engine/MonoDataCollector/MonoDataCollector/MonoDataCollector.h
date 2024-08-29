<<<<<<< HEAD
#pragma once

extern HANDLE DataCollectorThread;
extern HANDLE SuicideThread;
extern HINSTANCE g_hInstance;
DWORD WINAPI DataCollectorEntry(LPVOID lpThreadParameter);
DWORD WINAPI SuicideCheck(LPVOID lpThreadParameter);

#ifdef __APPLE__
void MacPortEntryPoint(void *param);
#endif

#if defined(__linux__) || defined(__ANDROID__)
void LinuxPortEntryPoint(void *param);
#endif
=======
#pragma once

extern HANDLE DataCollectorThread;
extern HANDLE SuicideThread;
extern HINSTANCE g_hInstance;
DWORD WINAPI DataCollectorEntry(LPVOID lpThreadParameter);
DWORD WINAPI SuicideCheck(LPVOID lpThreadParameter);

#ifdef __APPLE__
void MacPortEntryPoint(void *param);
#endif

#if defined(__linux__) || defined(__ANDROID__)
void LinuxPortEntryPoint(void *param);
#endif
>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
