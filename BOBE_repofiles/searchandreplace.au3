#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=favicon.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author: Robert Bosch Automotive Steering GmbH, AS-ER/ENS-A, Anke Werner

 Script Function:
	searches and replaces text in a file

#ce ----------------------------------------------------------------------------

; Call exe:
; searchandreplace.exe <filename> <oldtext> <newtext>
#include <File.au3>
#include <MsgBoxConstants.au3>
#include <Constants.au3>

$nowarnings  = "warnings"

If (UBound($CmdLine) > 3) Then

    $filename    = $CmdLine[1]
    $oldtext     = $CmdLine[2]
    $newtext     = $CmdLine[3]

    If (UBound($CmdLine) > 4) Then
        $nowarnings  = $CmdLine[4]
    Else
        $nowarnings  = "warnings"
    EndIf

    If (UBound($CmdLine) > 5) Then
        $ErrorLog  = $CmdLine[5]
    Else
        $ErrorLog  = " "
    EndIf

    If NOT FileExists($filename) Then
        IF NOT ($nowarnings=="nowarnings") Then
            MsgBox($MB_ICONERROR, "File does not exist!", $filename  & " does not exist!")
            Exit
        EndIf
        IF NOT ($ErrorLog==" ") Then
            FileWrite($ErrorLog, $filename  & " does not exist!" & @CRLF)
        EndIf
    Else
        Local $iRetval = _ReplaceStringInFile($filename, $oldtext, $newtext)
        If $iRetval = -1 Then
            IF NOT ($nowarnings=="nowarnings") Then
                MsgBox($MB_SYSTEMMODAL, "ERROR", "The pattern could not be replaced in file: " & $filename & " Error: " & @error)
                Exit
            EndIf
            IF NOT ($ErrorLog==" ") Then
                FileWrite($ErrorLog, "The pattern could not be replaced in file: " & $filename & " Error: " & @error & @CRLF)
            EndIf
        EndIf
    EndIf
Else
    IF NOT ($nowarnings=="nowarnings") Then
        MsgBox($MB_ICONERROR, "Missing parameter!", "3 parameters needed. Given parameter: " &  $CmdLine[0] & " Call searchandreplace.exe <filename> <oldtext> <newtext>")
    EndIf
    IF NOT ($ErrorLog==" ") Then
        FileWrite($ErrorLog, "3 parameters needed. Given parameter: " &  $CmdLine[0] & " Call searchandreplace.exe <filename> <oldtext> <newtext>" & @CRLF)
    EndIf
EndIf