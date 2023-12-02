'FunnyBones Departement

Rem Init Code

$ExeIcon:'./pngkit.ico'
Const bio$ = "FunnyBones Broadcast, 2015"
_Title bio$

Const initial = "1996 10 12"
Const revision = "2023 11 15"

Rem Main Part, contains main code

Cls
Print bio$
Print "Undertale Jokes, that's all. Except for some Game Dev.."
Print

Dim t As String, c As String
Dim i As Integer

Do
    Print ">";
    If _MouseButton(1) = True Then
        'Code Logic
    End If
    Line Input t
    i = InStr(t, " ")
    If i Then c = Left$(t, i - 1) Else c = t
    Select Case LCase$(c)
        Case "fuck": Print "Pap': Kids are watching !"
        Case "bastards": Print "Pap': Kids are watching !"
        Case "dickhead": Print "Pap': Kids are watching !"
        Case "bastard": Print "Pap': Kids are watching !"
        Case "jerk": Print "Like you and Chara"
        Case "trash": Print "Like you, and Alphys"
        Case "Asshole": Print "Like you"
        Case "bitch": Print "Stop."
        Case "Gaster": Exit Do
        Case "Woshua": Print "Clean Name"
        Case "echo": Print Mid$(t, i + 1)
        Case "hnd": Shell "Software Enhaced Help.hnd"
        Case "exit": Exit Do
        Case "cls": Cls
        Case "issue": Print "Go to github.com/EvrestRGB/FBD/issues"
        Case "puns": Shell "max20_puns.exe"
        Case "sans": Shell "max20_sans.exe"
        Case "ver": Print "revision: "; revision: Print ""
        Case "conduct": Shell "CODE_OF_CONDUCT.md"
        Case "links": Shell "links.txt"
        Case "ftp": Shell "ftp.exe"
        Case "time": Print Time$
        Case "links":
        Case "duck":
            Print "I see.."
            Shell "updated_dack.exe"
        Case "help":
            Print "EXIT - exit the shell"
            Print "CLS - clear the screen"
            Print "ECHO - displays written message in Console"
            Print "FTP - opens FTP mode"
            Print "PUNS - display puns"
            Print "SANS - display sans and toriel jokes"
            Print "LINKS - display some links"
            Print "VER - display version"
            Print "HELP - display this help"
            Print "HND - advanced software help"
            Print "ISSUE - display issue methods"
            Print "CONDUCT - Displays code of conduct"
            Print
        Case Else
            Print "Bad command. Running files not implemented yet.": Print
    End Select
Loop
System

