// KBLightsUpdate.cpp : Defines the entry point for the application.
//

#include "framework.h"
#include "KBLightsUpdate.h"
#include <CUESDK.h>
#include <string>
#include <unordered_map>
#include <iostream>
#include <fstream>
#include <windows.h>

#define MAX_LOADSTRING 100

const char* toString(CorsairError error)
{
    switch (error) {
    case CE_Success:
        return "CE_Success";
    case CE_ServerNotFound:
        return "CE_ServerNotFound";
    case CE_NoControl:
        return "CE_NoControl";
    case CE_ProtocolHandshakeMissing:
        return "CE_ProtocolHandshakeMissing";
    case CE_IncompatibleProtocol:
        return "CE_IncompatibleProtocol";
    case CE_InvalidArguments:
        return "CE_InvalidArguments";
    default:
        return "unknown error";
    }
}
int t[144];
COPYDATASTRUCT MyCDS;
HWND hWnd = FindWindowA("AutoHotkeyGUI", "CorsairK95PlatinumXT.ahk");
void callMeBaby() {
    CorsairPerformProtocolHandshake();
    HWND hWnd2 = FindWindowA("AutoHotkeyGUI", "CorsairK95PlatinumXT.ahk"); //update as needed
    for (int i = 0; i <= 143; i++) //up to g18 start from 1
    {
        CorsairLedColor ledColor = { (CorsairLedId)i, 0, 0 };
        CorsairGetLedsColors(1, &ledColor);
        t[i] = ledColor.r << 16 | ledColor.g << 8 | ledColor.b; //CloakerSmoker's code
    }
    // Fill the COPYDATA structure
    MyCDS.dwData = 3;          // function identifier? a few extra bits irrelevant here
    MyCDS.cbData = sizeof(t);  // size of data should be 8 bytes in test case 
    MyCDS.lpData = t;          // data structure
    SendMessage(hWnd2, WM_COPYDATA, (WPARAM)&hWnd, (LPARAM)(LPVOID)&MyCDS);
}

bool errorCheck(const std::string& msg) {
    auto error = CorsairGetLastError();
    if (error != CorsairError::CE_Success) {
        std::cerr << msg << " (Error: " << toString(error) << ')' << std::endl;
        return true;
    }
    return false;
}
// Global Variables:
HINSTANCE hInst;                                // current instance
WCHAR szTitle[MAX_LOADSTRING];                  // The title bar text
WCHAR szWindowClass[MAX_LOADSTRING];            // the main window class name



// Forward declarations of functions included in this code module:
ATOM                MyRegisterClass(HINSTANCE hInstance);
BOOL                InitInstance(HINSTANCE, int);
LRESULT CALLBACK    WndProc(HWND, UINT, WPARAM, LPARAM);
INT_PTR CALLBACK    About(HWND, UINT, WPARAM, LPARAM);

int APIENTRY wWinMain(_In_ HINSTANCE hInstance,
                     _In_opt_ HINSTANCE hPrevInstance,
                     _In_ LPWSTR    lpCmdLine,
                     _In_ int       nCmdShow)
{
    UNREFERENCED_PARAMETER(hPrevInstance);
    UNREFERENCED_PARAMETER(lpCmdLine);

    // TODO: Place code here.
    //addwhile loop here...
    CorsairPerformProtocolHandshake();
    callMeBaby();


    // Initialize global strings
    LoadStringW(hInstance, IDS_APP_TITLE, szTitle, MAX_LOADSTRING);
    LoadStringW(hInstance, IDC_KBLIGHTSUPDATE, szWindowClass, MAX_LOADSTRING);
    MyRegisterClass(hInstance);

    // Perform application initialization:
    if (!InitInstance (hInstance, nCmdShow))
    {
        return FALSE;
    }

    HACCEL hAccelTable = LoadAccelerators(hInstance, MAKEINTRESOURCE(IDC_KBLIGHTSUPDATE));

    MSG msg;

    // Main message loop:
    while (GetMessage(&msg, nullptr, 0, 0))
    {
        if (!TranslateAccelerator(msg.hwnd, hAccelTable, &msg))
        {
            TranslateMessage(&msg);
            DispatchMessage(&msg);
        }
    }

    return (int) msg.wParam;
}



//
//  FUNCTION: MyRegisterClass()
//
//  PURPOSE: Registers the window class.
//
ATOM MyRegisterClass(HINSTANCE hInstance)
{
    WNDCLASSEXW wcex;

    wcex.cbSize = sizeof(WNDCLASSEX);

    wcex.style          = CS_HREDRAW | CS_VREDRAW;
    wcex.lpfnWndProc    = WndProc;
    wcex.cbClsExtra     = 0;
    wcex.cbWndExtra     = 0;
    wcex.hInstance      = hInstance;
    wcex.hIcon          = LoadIcon(hInstance, MAKEINTRESOURCE(IDI_KBLIGHTSUPDATE));
    wcex.hCursor        = LoadCursor(nullptr, IDC_ARROW);
    wcex.hbrBackground  = (HBRUSH)(COLOR_WINDOW+1);
    wcex.lpszMenuName   = MAKEINTRESOURCEW(IDC_KBLIGHTSUPDATE);
    wcex.lpszClassName  = szWindowClass;
    wcex.hIconSm        = LoadIcon(wcex.hInstance, MAKEINTRESOURCE(IDI_SMALL));

    return RegisterClassExW(&wcex);
}

//
//   FUNCTION: InitInstance(HINSTANCE, int)
//
//   PURPOSE: Saves instance handle and creates main window
//
//   COMMENTS:
//
//        In this function, we save the instance handle in a global variable and
//        create and display the main program window.
//
BOOL InitInstance(HINSTANCE hInstance, int nCmdShow)
{
   hInst = hInstance; // Store instance handle in our global variable

   HWND hWnd = CreateWindowW(szWindowClass, szTitle, WS_OVERLAPPEDWINDOW,
      CW_USEDEFAULT, 0, CW_USEDEFAULT, 0, nullptr, nullptr, hInstance, nullptr);

   if (!hWnd)
   {
      return FALSE;
   }

   ShowWindow(hWnd, nCmdShow);
   UpdateWindow(hWnd);

   return TRUE;
}

//
//  FUNCTION: WndProc(HWND, UINT, WPARAM, LPARAM)
//
//  PURPOSE: Processes messages for the main window.
//
//  WM_COMMAND  - process the application menu
//  WM_PAINT    - Paint the main window
//  WM_DESTROY  - post a quit message and return
//
//
LRESULT CALLBACK WndProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
    switch (message)
    {
    case 0x5556:
        {
            callMeBaby();
        }
        break;
    case WM_COMMAND:
        {
            int wmId = LOWORD(wParam);
            // Parse the menu selections:
            switch (wmId)
            {
            case IDM_ABOUT:
                DialogBox(hInst, MAKEINTRESOURCE(IDD_ABOUTBOX), hWnd, About);
                break;
            case IDM_EXIT:
                DestroyWindow(hWnd);
                break;
            default:
                return DefWindowProc(hWnd, message, wParam, lParam);
            }
        }
        break;
    case WM_PAINT:
        {
            PAINTSTRUCT ps;
            HDC hdc = BeginPaint(hWnd, &ps);
            // TODO: Add any drawing code that uses hdc here...
            EndPaint(hWnd, &ps);
        }
        break;
    case WM_DESTROY:
        PostQuitMessage(0);
        break;
    default:
        return DefWindowProc(hWnd, message, wParam, lParam);
    }
    return 0;
}

// Message handler for about box.
INT_PTR CALLBACK About(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
    UNREFERENCED_PARAMETER(lParam);
    switch (message)
    {
    case WM_INITDIALOG:
        return (INT_PTR)TRUE;

    case WM_COMMAND:
        if (LOWORD(wParam) == IDOK || LOWORD(wParam) == IDCANCEL)
        {
            EndDialog(hDlg, LOWORD(wParam));
            return (INT_PTR)TRUE;
        }
        break;
    }
    return (INT_PTR)FALSE;
}