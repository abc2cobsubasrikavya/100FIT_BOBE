#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\scripts\AutoIt\favicon.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <buttonconstants.au3>
#include <gdiplus.au3>
#include <memory.au3>
#include <GUIConstantsEx.au3>
#include <FontConstants.au3>
#include <StructureConstants.au3>
#include <WindowsConstants.au3>
#include <GuiTab.au3>
#include <StaticConstants.au3>
#include <Inet.au3>

_GDIPlus_Startup() ;initialize GDI+

Global $Outputfoldername = "BuildOutput"
Global $ErrorLogfile = "Logs\Error.log"
; Create a GUI with various controls.
Global Const $iWidth = 400, $iHeight = 400, $iBgColor = 0xFFFFFF ;$iBgColor format RRGGBB
Global $hGUI = GUICreate("Bosch OEM Build Environment", $iWidth, $iHeight)
Global $HelpLink = "Documentation\BOBE_Documentation.html"

Global $hGraphics = _GDIPlus_GraphicsCreateFromHWND($hGUI) ;create a graphics object from a window handle
Global $hBitmap1 = _GDIPlus_BitmapCreateFromMemory(bosch_balken()) ;load binary saved GIF image and convert it to GDI+ bitmap format
Global $hBitmap2 = _GDIPlus_BitmapCreateFromMemory(boschlogo()) ;load binary saved GIF image and convert it to GDI+ bitmap format

Global $iPID1 = 0
Global $iPID2 = 0
Global $LibExecParam = ''

Global $colourDarkgrey = 0x525F6B;
Global $colourDarkblue = 0x005691;
Global $colourLightblue = 0x008ECF;
Global $colourDarkgreen = 0x006249;
Global $colourLightgreen = 0x78BE20;

GUISetBkColor($iBgColor, $hGUI) ;set GUI background color

; create tab
$cTab = GUICtrlCreateTab(0, _GDIPlus_ImageGetHeight($hBitmap1), 402, $iHeight - _GDIPlus_ImageGetHeight($hBitmap1))
$hTab = GUICtrlGetHandle($cTab)

GUICtrlCreateTabItem("Creation")

; Create a button control.
$marginleft = 25
$margintotop = 120
GUISetFont(13, $FW_BOLD)
GUICtrlCreateLabel("What should be done?", $marginleft, $margintotop)
GUICtrlSetColor(-1,$colourDarkblue)
$margintotop = 120
$marginbuttontobutton = 35
$margintop = $margintotop + $marginbuttontobutton
GUISetFont(10, $FW_NORMAL)
Global $idStandard = GUICtrlCreateRadio("Standard library (no debug)", $marginleft, $margintop, 200, 25)
$margintop = $margintop + $marginbuttontobutton
Global $idExecPas = GUICtrlCreateRadio("Standard executable files (no debug)", $marginleft, $margintop, 300, 25)
$margintop = $margintop + $marginbuttontobutton
Global $idStack = GUICtrlCreateRadio("Stack measurement", $marginleft, $margintop, 200, 25)
$margintop = $margintop + $marginbuttontobutton
Global $idSimulation = GUICtrlCreateRadio("Simulation library", $marginleft, $margintop, 250, 25)
$margintop = $margintop + $marginbuttontobutton
; Global $idScalexio = GUICtrlCreateRadio("Scalexio library", $marginleft, $margintop, 200, 25)
GUICtrlSetState($idStandard, $GUI_CHECKED)
Global $idStart = GUICtrlCreateButton("Create", 200, $iHeight-40, 85, 25)
Global $idFinish1 = GUICtrlCreateButton("Close", 300, $iHeight-40, 85, 25)

GUICtrlCreateTabItem("Settings && Help")

$marginleft = 25
$margintotop = 120
GUISetFont(13, $FW_BOLD)
GUICtrlCreateLabel("Settings of environment", $marginleft, $margintotop)
GUICtrlSetColor(-1,$colourLightblue)
GUISetFont(10, $FW_NORMAL)
Global $idOpenSettings = GUICtrlCreateButton("Open Settings in setting.bat", $marginleft, $margintotop + 40, 250, 25)
Global $idDocuSettings = GUICtrlCreateButton("Show Documentation", $marginleft, $margintotop + 75, 250, 25)
Global $idFinish2 = GUICtrlCreateButton("Close", 300, $iHeight-40, 85, 25)

GUICtrlCreateTabItem("About")

$marginleft = 25
$margintotop = 120
GUISetFont(13, $FW_BOLD)
GUICtrlCreateLabel("B", $marginleft, $margintotop)
GUICtrlSetColor(-1,$colourLightgreen)
$marginleft = $marginleft + 12
GUISetFont(13, $FW_NORMAL)
GUICtrlCreateLabel("osch ", $marginleft, $margintotop)
GUICtrlSetColor(-1,$colourLightgreen)
$marginleft = $marginleft + 40
GUISetFont(13, $FW_BOLD)
GUICtrlCreateLabel("O", $marginleft, $margintotop)
GUICtrlSetColor(-1,$colourLightgreen)
$marginleft = $marginleft + 13
GUISetFont(13, $FW_NORMAL)
GUICtrlCreateLabel("EM ", $marginleft, $margintotop)
GUICtrlSetColor(-1,$colourLightgreen)
$marginleft = $marginleft + 30
GUISetFont(13, $FW_BOLD)
GUICtrlCreateLabel("B", $marginleft, $margintotop)
GUICtrlSetColor(-1,$colourLightgreen)
$marginleft = $marginleft + 12
GUISetFont(13, $FW_NORMAL)
GUICtrlCreateLabel("uild ", $marginleft, $margintotop)
GUICtrlSetColor(-1,$colourLightgreen)
$marginleft = $marginleft + 30
GUISetFont(13, $FW_BOLD)
GUICtrlCreateLabel("E", $marginleft, $margintotop)
GUICtrlSetColor(-1,$colourLightgreen)
$marginleft = $marginleft + 11
GUISetFont(13, $FW_NORMAL)
GUICtrlCreateLabel("nvironment", $marginleft, $margintotop)
GUICtrlSetColor(-1,$colourLightgreen)
$marginleft = 25
GUICtrlCreateGraphic($marginleft,$iHeight - 45,$iWidth-2*$marginleft,2,$SS_SUNKEN)
GUISetFont(8.5, $FW_NORMAL )
GUICtrlCreateLabel("© Robert Bosch Automotive Steering GmbH", $marginleft, $iHeight - 35)
GUICtrlSetColor(-1,$colourDarkgrey)
Global $idContactEmail = GUICtrlCreateButton("BOBE Tool Contact", $iWidth-$marginleft-110, $iHeight - 40, 110, 20)
GUICtrlSetColor(-1,$colourDarkgrey)
GUISetFont(11, $FW_NORMAL)
$margintotop = $margintotop + 40
GUICtrlCreateLabel("With the BOBE GUI you call the batch files create_lib.bat and create_exec.bat with different parameters to create libraries and execution files." & @CR &"Before you start to create the required files, please edit the settings in settings.bat." & @CR & "BOBE.exe has to be located in the same directory like the mentioned batch files.", $marginleft, $margintotop, $iWidth - $marginleft*2, $iHeight - $margintotop - 10)
;GUICtrlCreateLabel("With the BOBE GUI you call the batch file create_lib.bat to create the library." & @CR &"Before you start to create the required files, please edit the settings in settings.bat." & @CR & "BOBE.exe has to be located in the same directory like the mentioned batch files.", $marginleft, $margintotop, $iWidth - $marginleft*2, $iHeight - $margintotop - 10)

; Display the GUI.
GUISetState(@SW_SHOW, $hGUI)

_GDIPlus_GraphicsDrawImage($hGraphics, $hBitmap1, 0, 0) ;display image in GUI
Global $iW = _GDIPlus_ImageGetWidth($hBitmap2), $iH = _GDIPlus_ImageGetHeight($hBitmap2)
_GDIPlus_GraphicsDrawImage($hGraphics, $hBitmap2, $iWidth - $iW - 20, 60) ;display image in GUI

While 1
    Switch GUIGetMsg()
        Case $GUI_EVENT_CLOSE, $idFinish1, $idFinish2
            ExitLoop
        Case $idStart
            Read_Radio_Buttons()
        Case $idOpenSettings
            ShellExecute('notepad.exe', 'settings.bat')
        Case $idDocuSettings
            ShellExecute($HelpLink)
        Case $idContactEmail
            Local $sAddress = "BOBE.AS@Bosch.com"
            Local $sSubject = "BOBE AS Contact"
            SplashTextOn("Open E-Mail", "The E-Mail will been opened.", $iWidth, 40, -1, -1, $DLG_TEXTLEFT, "t" , 10 )
            _INetMail($sAddress, $sSubject, "")
            SplashOff()
    EndSwitch
WEnd

; Delete the previous GUI and all controls.
GUIDelete($hGUI)

; Close the Notepad process using the PID returned by Run.

;cleanup GDI+ resources
_GDIPlus_BitmapDispose($hBitmap1)
_GDIPlus_BitmapDispose($hBitmap2)
_GDIPlus_GraphicsDispose($hGraphics)
_GDIPlus_Shutdown()
GUIDelete($hGUI)

Func Read_Radio_Buttons()
    $ExecutionDone = 0
    $ExecutionStarted = 0
    Select
        Case $idStandard And BitAND(GUICtrlRead($idStandard), $GUI_CHECKED) = $GUI_CHECKED
            $LibExecParam = 'standard'
            If NOT FileExists("create_lib.bat") Then
                MsgBox($MB_ICONERROR, "", "The file create_lib.bat doesn't exist.")
            Else
                $ExecutionStarted = 1
                $iPID1 = RunWait("create_lib.bat "& $LibExecParam, "", @SW_SHOWMAXIMIZED)
                $ExecutionDone = 1
            EndIf

         Case $idExecPas And BitAND(GUICtrlRead($idExecPas), $GUI_CHECKED) = $GUI_CHECKED
             $LibExecParam = 'standard_executable_file'
             If NOT FileExists("create_lib.bat") Then
                 MsgBox($MB_ICONERROR, "", "The file create_lib.bat doesn't exist.")
             Else
                 If NOT FileExists("create_exec.bat") Then
                     MsgBox($MB_ICONERROR, "", "The file create_exec.bat doesn't exist.")
                 Else
                     $ExecutionStarted = 1
                     $iPID1 = RunWait("create_lib.bat "& $LibExecParam, "", @SW_SHOWMAXIMIZED)
                     If NOT FileExists($Outputfoldername & "\" & $LibExecParam & "\" &$ErrorLogfile) Then
                         $iPID2 = RunWait("create_exec.bat "& $LibExecParam, "", @SW_SHOWMAXIMIZED)
                     EndIf
                     $ExecutionDone = 1
                 EndIf
             EndIf

         Case $idStack And BitAND(GUICtrlRead($idStack), $GUI_CHECKED) = $GUI_CHECKED
             $LibExecParam = 'stack'
             If NOT FileExists("create_lib.bat") Then
                 MsgBox($MB_ICONERROR, "", "The file create_lib.bat doesn't exist.")
             Else
                 If NOT FileExists("create_exec.bat") Then
                     MsgBox($MB_ICONERROR, "", "The file create_exec.bat doesn't exist.")
                 Else
                     $ExecutionStarted = 1
                     $iPID1 = RunWait("create_lib.bat "& $LibExecParam, "", @SW_SHOWMAXIMIZED)
                     If NOT FileExists($Outputfoldername & "\" & $LibExecParam & "\" &$ErrorLogfile) Then
                         $iPID2 = RunWait("create_exec.bat "& $LibExecParam, "", @SW_SHOWMAXIMIZED)
                     EndIf
                     $ExecutionDone = 1
                 EndIf
             EndIf

         Case $idSimulation And BitAND(GUICtrlRead($idSimulation), $GUI_CHECKED) = $GUI_CHECKED
             $LibExecParam = 'sillib'
              If NOT FileExists("create_lib.bat") Then
                  MsgBox($MB_ICONERROR, "", "The file create_lib.bat doesn't exist.")
              Else
                  $ExecutionStarted = 1
                  $iPID1 = RunWait("create_lib.bat "& $LibExecParam, "", @SW_SHOWMAXIMIZED)
                  $ExecutionDone = 1
              EndIf
    EndSelect
;~         Case $idScalexio And BitAND(GUICtrlRead($idScalexio), $GUI_CHECKED) = $GUI_CHECKED
;~             $LibExecParam = 'scalexio'
;~             If NOT FileExists("create_lib.bat") Then
;~                 MsgBox($MB_ICONERROR, "", "The file create_lib.bat doesn't exist.")
;~             Else
;~                 $ExecutionStarted = 1
;~                 $iPID1 = RunWait("create_lib.bat "& $LibExecParam, "", @SW_SHOWMAXIMIZED)
;~                 $ExecutionDone = 1
;~             EndIf



    ;If $iPID1 Then ProcessClose($iPID1)
    ;If $iPID2 Then ProcessClose($iPID2)


    If NOT FileExists($Outputfoldername & "\" & $LibExecParam & "\" &$ErrorLogfile) Then
        If FileExists ( $Outputfoldername & "\" & $LibExecParam ) Then
            SplashTextOn("Opening Output", "Opening output folder " & $Outputfoldername & "\" & $LibExecParam, $iWidth, 40, -1, -1, $DLG_TEXTLEFT, "" , 10 )
            ShellExecute(@ScriptDir & "\" & $Outputfoldername & "\" & $LibExecParam & "\")
            SplashOff()
        Else
            If $ExecutionStarted == 1 Then
                If $ExecutionDone == 1 Then
                    MsgBox($MB_ICONWARNING, "", "The folder " & $Outputfoldername & "\" & $LibExecParam & " doesn't exist.")
                Else
                    MsgBox($MB_ICONERROR, "", "Execution of batch file(s) not finished.")
                EndIf
            EndIf
        EndIf
    Else
        SplashTextOn("Opening Logfile", "Opening error logfile " & $Outputfoldername & "\" & $LibExecParam & "\" &$ErrorLogfile, $iWidth, 40, -1, -1, $DLG_TEXTLEFT, "" , 10 )
        ShellExecute(@ScriptDir & "\" & $Outputfoldername & "\" & $LibExecParam & "\" &$ErrorLogfile)
        SplashOff()
    EndIf

EndFunc  ;==>Read_Radio_Buttons

Func bosch_balken()
    Global $bosch_balken
    $bosch_balken &= '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'
    $bosch_balken &= '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'
    Return Binary(_Base64Decode($bosch_balken))
EndFunc   ;==>bosch_balken

Func boschlogo()
    Global $boschlogo
    $boschlogo &= 'iVBORw0KGgoAAAANSUhEUgAAAHgAAAAnCAYAAADEvIzwAAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAAOwgAADsIBFShKgAAAABh0RVh0U29mdHdhcmUAcGFpbnQubmV0IDQuMC45bDN+TgAAFrpJREFUeF7tWwlUFNfSnsjMoMaF6YEIzABCTEx8aowao0aDCWpwAxf8RVERVIwL4h40IIgsKigiEXE3QERABE0AAXEB1yAIIi4oDjOg4vKMPmNiXOj/q6aHNzMMSOK/mHesc+p0971VdZfvVt26PT2Cxmj79u0m2dnZAw5lZa08e/bssXNFRfeLz5+vKSoqZn/OL3iad/xEWXp65t74+ISp27Zt6+jn59ecV31DrzMtXry49aFDh2ZcuXLl6PnS0kc/pmew0Vu3qcLWb8hcHRYWGxgSsisyalPi5q078n9ISHqcd/L0i5M/51+PT9q7Y8GSJX15M2/odaTw8PD2RUVFqbdu3/lX4r6UZ1NnzDzo7OziMHr0BCtbW1vjHj16tO3Vq1ebfsOGSUaNcjGb6eX14dwFC/y27oq5da7kwousw0dUPn5+7pAV8ibf0OtCqamp5udLSjKuXL32fOly/1uffNp3OlClsPtWrYR+QmhuNnz06A8WLfs2LffUz79lHjp8P2hVqLOHh4eIF/lL5CcQNLsgEIjZRpivb7R/mkSyCoFVc4WgrVGVoLWUmO7LBALDptoh2XKBpK1aXyloK7klaPd2okBgwIs0SminGcmTHumrBG2YuwJp67MCgd75onIaq5ppzCiu11fUackR81UCwaZNm2TFxcU/Hjt+/I8Znp7J3bt375KYmNgN+/BAAPhvQT1ECyMhOXnUwoUL31myzHdOWmZ2VWpaxn3vZX5fo7rJk69LlWLj91QiabDKULquIa4UMasrxYxXlVjqcK8FI+NV9ZKyhdS8UiSdqBIz0SqR5JRSxFwGl+H5BJ4jVGLpSAKbF69HCoGgeaVYMgSy66F3RKXWF0rPoZ9J1A+lSPIPTGyDY64QM50qhcxctJWgFDM/kz6uxbCVphRJVyqEkj48gHXEyWuOG3NyQWDSiq+uo0qx9BstOTBXAQBbFRQUJBWXlD6fPdcroWfPnhZJSUmjL1+5UhYSGpo1DOGYE2yAjmRn2xeXXHgQvXX7XicnJ+uQsLAph/NO3E3cd+Chq7v7SF7sT1OFgdQOnX4IZhtjTFYNrvfBeZWG0gH6JrhKbPw+wM0ACL9q6mqxiPlnhUiyX2Vo0oFXqyPyeuhvgP5tvj19Nv6AzMUqsWSxLkjokwgLYRZkLsDGHzp6HMPuC4B3HYB7Qb5ui8OiOaUj97CsVSsTvrqOoHtRU46YqziYnu5+8fK1h96+K6oBbufdu3ePqq6+fb/qZjW7Iij4WL9+/RoF+MSJE8Oq79xlL14pe7FiZdCpSZMmSddHRm05mX/ueUho+AlHR8cGvaIxair'
    $boschlogo &=  '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'
    $boschlogo &=  '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'
    $boschlogo &=  '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'
    Return Binary(_Base64Decode($boschlogo))
EndFunc   ;==>boschlogo

Func _Base64Decode($input_string)
    Global $struct = DllStructCreate("int")
    Global $a_Call = DllCall("Crypt32.dll", "int", "CryptStringToBinary", "str", $input_string, "int", 0, "int", 1, "ptr", 0, "ptr", DllStructGetPtr($struct, 1), "ptr", 0, "ptr", 0)
    If @error Or Not $a_Call[0] Then Return SetError(1, 0, "")
    Global $a = DllStructCreate("byte[" & DllStructGetData($struct, 1) & "]")
    $a_Call = DllCall("Crypt32.dll", "int", "CryptStringToBinary", "str", $input_string, "int", 0, "int", 1, "ptr", DllStructGetPtr($a), "ptr", DllStructGetPtr($struct, 1), "ptr", 0, "ptr", 0)
    If @error Or Not $a_Call[0] Then Return SetError(2, 0, "")
    Return DllStructGetData($a, 1)
EndFunc   ;==>_Base64Decode
