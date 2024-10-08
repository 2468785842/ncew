<<<<<<< HEAD
//CMyIclrDebuggingLibraryProvider

#include "stdafx.h"


#include "MyIclrDebuggingLibraryProvider.h"


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// IUnknown
//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
STDMETHODIMP CMyICLRDebuggingLibraryProvider::QueryInterface(__in REFIID InterfaceId, __out PVOID* Interface)
{
	*Interface = NULL;
	if (IsEqualIID(InterfaceId, __uuidof(IUnknown)) || IsEqualIID(InterfaceId, __uuidof(ICLRDebuggingLibraryProvider)))
	{
		*Interface = (ICLRDebuggingLibraryProvider*) this;
		InterlockedIncrement(&m_ref);
		return S_OK;
	}
	else
	{
		return E_NOINTERFACE;
	}
}

STDMETHODIMP_(ULONG) CMyICLRDebuggingLibraryProvider::AddRef()
{
	return InterlockedIncrement(&m_ref);
}

STDMETHODIMP_(ULONG) CMyICLRDebuggingLibraryProvider::Release()
{
	long nCount = InterlockedDecrement(&m_ref);
	if (nCount == 0)
		delete this;

	return nCount;
}

HRESULT STDMETHODCALLTYPE CMyICLRDebuggingLibraryProvider::ProvideLibrary( 
            /* [in] */ const WCHAR *pwszFileName,
            /* [in] */ DWORD dwTimestamp,
            /* [in] */ DWORD dwSizeOfImage,
            /* [out] */ HMODULE *phModule)
{

	HRESULT r;
	if (RuntimeInfo)
		r = RuntimeInfo->LoadLibrary(pwszFileName, phModule);
	else
		r = E_NOTIMPL;


	if (r != S_OK)
	{

		HMODULE m;
		WCHAR newname[255];
		
		StrCpyW(newname, dotnetcorepath);
		StrCatW(newname, pwszFileName);

		m = LoadLibrary(newname);
		if (m)
		{
			*phModule = m;
			return S_OK;
		}
		else
			return ERROR_FILE_INVALID;
	}

}

        
=======
//CMyIclrDebuggingLibraryProvider

#include "stdafx.h"


#include "MyIclrDebuggingLibraryProvider.h"


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// IUnknown
//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
STDMETHODIMP CMyICLRDebuggingLibraryProvider::QueryInterface(__in REFIID InterfaceId, __out PVOID* Interface)
{
	*Interface = NULL;
	if (IsEqualIID(InterfaceId, __uuidof(IUnknown)) || IsEqualIID(InterfaceId, __uuidof(ICLRDebuggingLibraryProvider)))
	{
		*Interface = (ICLRDebuggingLibraryProvider*) this;
		InterlockedIncrement(&m_ref);
		return S_OK;
	}
	else
	{
		return E_NOINTERFACE;
	}
}

STDMETHODIMP_(ULONG) CMyICLRDebuggingLibraryProvider::AddRef()
{
	return InterlockedIncrement(&m_ref);
}

STDMETHODIMP_(ULONG) CMyICLRDebuggingLibraryProvider::Release()
{
	long nCount = InterlockedDecrement(&m_ref);
	if (nCount == 0)
		delete this;

	return nCount;
}

HRESULT STDMETHODCALLTYPE CMyICLRDebuggingLibraryProvider::ProvideLibrary( 
            /* [in] */ const WCHAR *pwszFileName,
            /* [in] */ DWORD dwTimestamp,
            /* [in] */ DWORD dwSizeOfImage,
            /* [out] */ HMODULE *phModule)
{

	HRESULT r;
	if (RuntimeInfo)
		r = RuntimeInfo->LoadLibrary(pwszFileName, phModule);
	else
		r = E_NOTIMPL;


	if (r != S_OK)
	{

		HMODULE m;
		WCHAR newname[255];
		
		StrCpyW(newname, dotnetcorepath);
		StrCatW(newname, pwszFileName);

		m = LoadLibrary(newname);
		if (m)
		{
			*phModule = m;
			return S_OK;
		}
		else
			return ERROR_FILE_INVALID;
	}

}

        
>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
