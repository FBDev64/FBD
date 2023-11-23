'FunnyBones Departement

$ExeIcon:'C:\Dev\qb64_dev\FBD\BEEp.ico'
Const bio$ = "FunnyBones Broadcast, 2015"
_Title bio$

Const initial = "1996 10 12"
Const revision = "2023 11 15"

Cls
Print bio$
Print "Undertale Jokes, that's all. Except for some Game Dev.."
Print

Dim t As String, c As String
Dim i As Integer

Do
    Print ">";
    Line Input t
    i = InStr(t, " ")
    If i Then c = Left$(t, i - 1) Else c = t
    Select Case LCase$(c)
        Case "hnd": Shell "Software Enhaced Help.hnd"
        Case "exit": Exit Do
        Case "cls": Cls
        Case "puns": Shell "max20_puns.exe"
        Case "sans": Shell "max20_sans.exe"
        Case "ver": Print "revision: "; revision: Print ""
        Case "conduct": Shell "CODE_OF_CONDUCT.md"
        Case "duck"
            Print "I see.."
            Shell "updated_dack.exe"
        Case "help"
            Print "EXIT - exit the shell"
            Print "CLS - clear the screen"
            Print "PUNS - display puns"
            Print "SANS - display sans and toriel jokes"
            Print "VER - display version"
            Print "HELP - display this help"
            Print "ISSUE - Go to github.com/EvrestRGB/FBD/issues"
            Print "CONDUCT - Displays code of conduct"
            Print
        Case Else
            Print "Bad command. Running files not implemented yet.": Print
    End Select
Loop
System

