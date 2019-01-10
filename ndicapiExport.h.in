/*=Plus=header=begin======================================================
  Program: Plus
  Copyright (c) Laboratory for Percutaneous Surgery. All rights reserved.
  See License.txt for details.
=========================================================Plus=header=end*/

// .NAME __ndicapiExport - manage Windows system differences
// .SECTION Description
// The __ndicapiExport manages DLL export syntax differences
// between different operating systems.

#ifndef __ndicapiExport_h
#define __ndicapiExport_h

#if defined(WIN32)
 #define ndicapiExport __declspec( dllexport )
#else
 #define ndicapiExport
#endif

#endif
