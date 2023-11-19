' *************** D I S C O   D U C K ****************
'
' a QB program made as a tribute to the Disco Era.

Cls
Color 10
Print "                           WELCOME TO THE DISCO ERA!"
Print
Print "  here we present, DISCO DUCK."
Print
Print "           press any key to continue  ";
Locate CsrLin, Pos(0) - 2, 1, 6, 8
While InKey$ = ""
Wend
Cls
Locate , , 0
Restore duck
GoSub discoduck
Timer On
On Timer(4) GoSub discoduck
Do
    Read a$
    For a = 1 To Len(a$)
        Select Case Mid$(a$, a, 1)
            '            CASE "-"
            '               PRINT " "
            Case "Y"
                Color 14, 0
                Print "Û";
            Case "W"
                Color 15, 0
                Print "Û";
            Case "O"
                Color 14, 4
                Print "±";
            Case "B"
                Color 0, 0
                Print "B";
            Case "d"
                Color 12
                Print "D";
            Case "i"
                Color 12
                Print "I";
            Case "s"
                Color 12
                Print "S";
            Case "c"
                Color 12
                Print "C";
            Case "o"
                Color 12
                Print "O";
            Case "u"
                Color 12
                Print "U";
            Case "k"
                Color 12
                Print "K";
            Case "*"
                Color 15
                Print "*";
            Case Else
                Print " ";
        End Select
        Color , 0
    Next
    Print
Loop Until a$ = "E"
Locate 23, 10
a$ = "**  PRESS  ANY   KEY   TO   END  **"
For a = 1 To Len(a$)
    Select Case Mid$(a$, a, 1)
        Case " "
            Color 0, 0
            Print "_";
        Case Else
            Color 14, 0
            Print Mid$(a$, a, 1);
    End Select
Next
Print
Color 0, 0 ' allows a "hidden signal character" to
For y = 1 To 25 'ensure a proper "disco" effect.
    For x = 1 To 80
        Locate y, x
        If Screen(y, x) = 32 Then Print "°";
    Next
Next
b = 176
Do
    x = CInt(Rnd * 80)
    y = CInt(Rnd * 25)
    If x < 1 Then x = 1
    If y < 1 Then y = 1
    Locate y, x
    Select Case b
        Case 176
            b = 178
        Case 178
            b = 176
    End Select
    c = Int(Rnd * 15)
    cb = Int(Rnd * 7)
    Color c, cb
    Locate y, x
    Select Case Screen(y, x)
        Case 176
            Print Chr$(b);
        Case 178
            Print Chr$(b);
        Case Else
    End Select
Loop Until InKey$ <> ""
Color 7, 0
Cls
Print "the DISCO ERA has ended!"
Print
Print "now, we're back to the present day!"
End
duck:
Data ---------
Data ------
Data ------
Data -------------------------------------------YYYYYYY\
Data -----------------------------------------YYYYWWBBY\
Data ---*BdBiBsBcBoBBBdBuBcBkB*-------------YYYYYYOOOOOOOO\
Data --------------------------------YYYYYYYYYYYYYOOOOOOOOOO\
Data ------------------------YYYYYYYYYYYYYYYYYYYYY\
Data -------------------YYYYYYYYYYYYYYYYYYYYYYYYYY\
Data ----------------YYYYYYYYYYYYYYYYYYYYYYYYYY\
Data -------------YYYYYYYOOYYYYYYYYYYYYYYOO\
Data --------------------OOYYYYYYYYYYYYYYOO\
Data --------------------OO--------------OO\
Data --------------------OO--------------OO\
Data E
' character E serves as a signal to avoid the OUT OF DATA error.
discoduck:
Play "MB t130 n25 t80 n20 t200 n20 n20 t200 n20"
Return

