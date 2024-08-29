<<<<<<< HEAD
#ifndef DXHOOKBASE_H
#define DXHOOKBASE_H

#include "stdafx.h"




extern PD3DHookShared shared;

void GetAddresses(void);


HRESULT __stdcall D3D9_Present_new(IDirect3DDevice9 *Device, RECT* pSourceRect,CONST RECT* pDestRect,HWND hDestWindowOverride,CONST RGNDATA* pDirtyRegion);
HRESULT __stdcall IDXGISwapChain_Present_new(IDXGISwapChain *x, UINT SyncInterval, UINT Flags);

DWORD WINAPI InitializeD3DHookDll(PVOID params);


=======
#ifndef DXHOOKBASE_H
#define DXHOOKBASE_H

#include "stdafx.h"




extern PD3DHookShared shared;

void GetAddresses(void);


HRESULT __stdcall D3D9_Present_new(IDirect3DDevice9 *Device, RECT* pSourceRect,CONST RECT* pDestRect,HWND hDestWindowOverride,CONST RGNDATA* pDirtyRegion);
HRESULT __stdcall IDXGISwapChain_Present_new(IDXGISwapChain *x, UINT SyncInterval, UINT Flags);

DWORD WINAPI InitializeD3DHookDll(PVOID params);


>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
#endif