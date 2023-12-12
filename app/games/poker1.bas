'Program POKER1
'============================================================================
'INTRE RANDURILE DUBLE DE EGALURI SE GASESTE AFISAREA CELOR CINCI CARTI !
'============================================================================
'EvrestRGB
$ExeIcon:'./card.ico'
Cls
amban = 1000

Locate 1, 5
Color 2
Input " Do you want to play the game POKER1  ( Y / N ) "; RASPUNS$

While RASPUNS$ = "Y" Or RASPUNS$ = "y"
    'PLAY "O3T80MNL16DBAGL6D"
    Locate 1, 5
    Print "                                                                  "

    s:
    'Desenarea cartilor cu spatele?
    Screen 12, 0, 0, 0
    View (30, 20)-(600, 210), 2, 6
    Line (110, 0)-(110, 210), 6
    Line (220, 0)-(220, 210), 6
    Line (340, 0)-(340, 210), 6
    Line (460, 0)-(460, 210), 6


    '**************************TINUTE ( PASTRATE )******************************
    View (40, 230)-(130, 260), 3, 5
    View (150, 230)-(240, 260), 3, 5
    View (265, 230)-(355, 260), 3, 5
    View (380, 230)-(475, 260), 3, 5
    View (500, 230)-(590, 260), 3, 5
    '***************************************************************************


    '********************************RECOMPENSE*********************************

    Locate 19, 49
    Color 4
    Print " R  E  W  A  R  D  S "
    Color 14
    Locate 20, 49
    Print " =+=+=+=+=+=+=+=+=+= "
    Locate 21, 42
    Color 2
    Print "ROYAL FLUSH      !!!!!!!!...10.000 $"
    Locate 22, 42
    Color 3
    Print "FOUR OF A KIND   !!!!!!!.....5.000 $"
    Locate 23, 42
    Color 5
    Print "FLUSH            !!!!!!......3.000 $"
    Locate 24, 42
    Color 6
    Print "FULL HOUSE       !!!!!.......2.000 $"
    Locate 25, 42
    Color 7
    Print "STRAIGHT         !!!!........1.000 $"
    Locate 26, 42
    Color 8
    Print "THREE OF A KIND  !!!...........500 $"
    Locate 27, 42
    Color 9
    Print "TWO PAIRS        !!............200 $"
    Locate 28, 42
    Color 10
    Print "ONE PAIR:J,Q,K,A !.............100 $" '

    '****************************************************************************

    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''mizare

    Locate 20, 5
    Print "CREDIT :"

    Locate 21, 5
    Color 4 'ROSU
    Print "BET AT LEAST 100$...:"

    Color 14 'afisare situatie curenta

    Locate 20, 14: Print "You have : "; amban
    Locate 20, 33: Print " $ "

    Do
        Locate 22, 5: Input "BET  "; bani 'SUMA  pe care se mizeaza

        amban = amban - bani
        Locate 20, 14: Print "You have : "; amban
        Locate 20, 33: Print " $ "


        '   BEEP                                 '   DACA VREAU ZGOMOT
        'PLAY "O3T80MNL16DBAGL6D"
    Loop Until bani <= amban



    Randomize Timer 'GENERARE NR. ALEATOARE
    Locate 1, 1
    Print "                                                               "
    Locate 1, 38
    Color 1
    Print "POKER1"

    '=========== PRIMA CARTE==================
    'RANDO CIFRE COLT I-A CARTE !
    A:

    For i = 1 To 5
        'CULOAREA  DIN MIJLOC A CARTII 1
        MIJLOC = Int(Rnd * 4 + 1)
        If MIJLOC = 1 Then
            Let mij1$ = Chr$(3)
        End If
        If MIJLOC = 2 Then
            Let mij1$ = Chr$(4)
        End If
        If MIJLOC = 3 Then
            Let mij1$ = Chr$(5)
        End If
        If MIJLOC = 4 Then
            Let mij1$ = Chr$(6)
        End If
        ' LOCALIZAREA CULORII

        If MIJLOC = 1 Or MIJLOC = 2 Then
            Color 4
        End If
        If MIJLOC = 3 Or MIJLOC = 4 Then
            Color 8
        End If

        Locate 7, 11
        Print mij1$
        Locate 7, 14
        Print mij1$
        Locate 7, 8
        Print mij1$
        Locate 5, 11
        Print mij1$
        Locate 9, 11
        Print mij1$
        '''''''''''''''''''''''''''''''''''''''''''''''COLTURI I-A CARTE
        COLT1 = Int(Rnd * 13 + 2)
        Select Case COLT1
            Case 2
                Let COLT1$ = Chr$(50)
            Case 3
                Let COLT1$ = Chr$(51)
            Case 4
                Let COLT1$ = Chr$(52)
            Case 5
                Let COLT1$ = Chr$(53)
            Case 6
                Let COLT1$ = Chr$(54)
            Case 7
                Let COLT1$ = Chr$(55)
            Case 8
                Let COLT1$ = Chr$(56)
            Case 9
                Let COLT1$ = Chr$(57)
            Case 10
                Let COLT1$ = LTrim$(Str$(10))
            Case 11
                Let COLT1$ = "A"
            Case 12
                Let COLT1$ = "J"
            Case 13
                Let COLT1$ = "Q"
            Case 14
                Let COLT1$ = "K"

        End Select




        '    POZITIONARE NR. COLTURI
        Locate 3, 6
        Print "  "
        Locate 3, 6
        Print COLT1$

        Locate 3, 16
        Print "  "
        Locate 3, 16
        Print COLT1$

        Locate 12, 6
        Print "  "
        Locate 12, 6
        Print COLT1$

        Locate 12, 16
        Print "  "
        Locate 12, 16
        Print COLT1$

    Next
    '======================A DOUA CARTE =====================================
    'RANDO CIFRE COLT A II-A CARTE !
    b:
    For i = 1 To 10
        'CULOAREA  DIN MIJLOC A CARTII 2
        MIJLOC = Int(Rnd * 4 + 1)
        If MIJLOC = 1 Then
            Let mij2$ = Chr$(3)
        End If
        If MIJLOC = 2 Then
            Let mij2$ = Chr$(4)
        End If
        If MIJLOC = 3 Then
            Let mij2$ = Chr$(5)
        End If
        If MIJLOC = 4 Then
            Let mij2$ = Chr$(6)
        End If
        ' LOCALIZAREA CULORII

        If MIJLOC = 1 Or MIJLOC = 2 Then
            Color 4
        End If
        If MIJLOC = 3 Or MIJLOC = 4 Then
            Color 8
        End If

        Locate 7, 25
        Print mij2$
        Locate 7, 28
        Print mij2$
        Locate 7, 22
        Print mij2$
        Locate 5, 25
        Print mij2$
        Locate 9, 25
        Print mij2$

        '''''''''''''''''''''''''''''''''''''''''''''''''''''COLTURI A II-A CARTE
        COLT2 = Int(Rnd * 13 + 2)
        Select Case COLT2
            Case 2
                Let COLT2$ = Chr$(50)
            Case 3
                Let COLT2$ = Chr$(51)
            Case 4
                Let COLT2$ = Chr$(52)
            Case 5
                Let COLT2$ = Chr$(53)
            Case 6
                Let COLT2$ = Chr$(54)
            Case 7
                Let COLT2$ = Chr$(55)
            Case 8
                Let COLT2$ = Chr$(56)
            Case 9
                Let COLT2$ = Chr$(57)
            Case 10
                Let COLT2$ = LTrim$(Str$(10))
            Case 11
                Let COLT2$ = "A"
            Case 12
                Let COLT2$ = "J"
            Case 13
                Let COLT2$ = "Q"
            Case 14
                Let COLT2$ = "K"

        End Select

        '    POZITIONARE NR. COLTURI
        Locate 3, 20
        Print "  "
        Locate 3, 20
        Print COLT2$

        Locate 3, 30
        Print "  "
        Locate 3, 30
        Print COLT2$

        Locate 12, 20
        Print "  "
        Locate 12, 20
        Print COLT2$

        Locate 12, 30
        Print "  "
        Locate 12, 30
        Print COLT2$

    Next

    '======================A TREIA CARTE =====================================
    'RANDO CIFRE COLT A III-A CARTE !
    c:
    For i = 1 To 15
        'CULOAREA  DIN MIJLOC A CARTII 3

        MIJLOC = Int(Rnd * 4 + 1)
        If MIJLOC = 1 Then
            Let mij3$ = Chr$(3)
        End If
        If MIJLOC = 2 Then
            Let mij3$ = Chr$(4)
        End If
        If MIJLOC = 3 Then
            Let mij3$ = Chr$(5)
        End If
        If MIJLOC = 4 Then
            Let mij3$ = Chr$(6)
        End If
        ' LOCALIZAREA CULORII

        If MIJLOC = 1 Or MIJLOC = 2 Then
            Color 4
        End If
        If MIJLOC = 3 Or MIJLOC = 4 Then
            Color 8
        End If

        Locate 7, 39
        Print mij3$
        Locate 7, 42
        Print mij3$
        Locate 7, 36
        Print mij3$
        Locate 5, 39
        Print mij3$
        Locate 9, 39
        Print mij3$
        ''''''''''''''''''''''''''''''''''''''''''''''''''COLTURI A TREIA CARTE
        COLT3 = Int(Rnd * 13 + 2)
        Select Case COLT3
            Case 2
                Let COLT3$ = Chr$(50)
            Case 3
                Let COLT3$ = Chr$(51)
            Case 4
                Let COLT3$ = Chr$(52)
            Case 5
                Let COLT3$ = Chr$(53)
            Case 6
                Let COLT3$ = Chr$(54)
            Case 7
                Let COLT3$ = Chr$(55)
            Case 8
                Let COLT3$ = Chr$(56)
            Case 9
                Let COLT3$ = Chr$(57)
            Case 10
                Let COLT3$ = LTrim$(Str$(10))
            Case 11
                Let COLT3$ = "A"
            Case 12
                Let COLT3$ = "J"
            Case 13
                Let COLT3$ = "Q"
            Case 14
                Let COLT3$ = "K"

        End Select
        '    POZITIONARE NR. COLTURI
        Locate 3, 34
        Print "  "
        Locate 3, 34
        Print COLT3$

        Locate 3, 45
        Print "  "
        Locate 3, 45
        Print COLT3$

        Locate 12, 34
        Print "  "
        Locate 12, 34
        Print COLT3$

        Locate 12, 45
        Print "  "
        Locate 12, 45
        Print COLT3$

    Next

    '======================A PATRA CARTE =====================================
    'RANDO CIFRE COLT A IV-A CARTE !
    D:
    For i = 1 To 20
        'CULOAREA  DIN MIJLOC A CARTII 4
        MIJLOC = Int(Rnd * 4 + 1)
        If MIJLOC = 1 Then
            Let mij4$ = Chr$(3)
        End If
        If MIJLOC = 2 Then
            Let mij4$ = Chr$(4)
        End If
        If MIJLOC = 3 Then
            Let mij4$ = Chr$(5)
        End If
        If MIJLOC = 4 Then
            Let mij4$ = Chr$(6)
        End If
        ' LOCALIZAREA CULORII

        If MIJLOC = 1 Or MIJLOC = 2 Then
            Color 4
        End If
        If MIJLOC = 3 Or MIJLOC = 4 Then
            Color 8
        End If

        Locate 7, 54
        Print mij4$
        Locate 7, 57
        Print mij4$
        Locate 7, 51
        Print mij4$
        Locate 5, 54
        Print mij4$
        Locate 9, 54
        Print mij4$
        '''''''''''''''''''''''''''''''''''''''''''''''COLTURI LA A PATRA CARTE
        COLT4 = Int(Rnd * 13 + 2)
        Select Case COLT4
            Case 2
                Let COLT4$ = Chr$(50)
            Case 3
                Let COLT4$ = Chr$(51)
            Case 4
                Let COLT4$ = Chr$(52)
            Case 5
                Let COLT4$ = Chr$(53)
            Case 6
                Let COLT4$ = Chr$(54)
            Case 7
                Let COLT4$ = Chr$(55)
            Case 8
                Let COLT4$ = Chr$(56)
            Case 9
                Let COLT4$ = Chr$(57)
            Case 10
                Let COLT4$ = LTrim$(Str$(10))
            Case 11
                Let COLT4$ = "A"
            Case 12
                Let COLT4$ = "J"
            Case 13
                Let COLT4$ = "Q"
            Case 14
                Let COLT4$ = "K"

        End Select

        '    POZITIONARE NR. COLTURI
        Locate 3, 48
        Print "  "
        Locate 3, 48
        Print COLT4$

        Locate 3, 60
        Print "  "
        Locate 3, 60
        Print COLT4$

        Locate 12, 48
        Print "  "
        Locate 12, 48
        Print COLT4$

        Locate 12, 60
        Print "  "
        Locate 12, 60
        Print COLT4$

    Next
    '======================A CINCEA CARTE =====================================
    'RANDO CIFRE COLT A V-A CARTE !

    e:
    'PLAY "O3T80MNL16DBAGL6D"

    For i = 1 To 25

        'CULOAREA  DIN MIJLOC A CARTII 5

        MIJLOC = Int(Rnd * 4 + 1)
        If MIJLOC = 1 Then
            Let mij5$ = Chr$(3)
        End If
        If MIJLOC = 2 Then
            Let mij5$ = Chr$(4)
        End If
        If MIJLOC = 3 Then
            Let mij5$ = Chr$(5)
        End If
        If MIJLOC = 4 Then
            Let mij5$ = Chr$(6)
        End If
        ' LOCALIZAREA CULORII

        If MIJLOC = 1 Or MIJLOC = 2 Then
            Color 4
        End If
        If MIJLOC = 3 Or MIJLOC = 4 Then
            Color 8
        End If

        Locate 7, 69
        Print mij5$
        Locate 7, 72
        Print mij5$
        Locate 7, 66
        Print mij5$
        Locate 5, 69
        Print mij5$
        Locate 9, 69
        Print mij5$

        ''''''''''''''''''''''''''''''''''''''''''''''''''''COLTURI CARTEA A CINCEA
        COLT5 = Int(Rnd * 13 + 2)
        Select Case COLT5
            Case 2
                Let COLT5$ = Chr$(50)
            Case 3
                Let COLT5$ = Chr$(51)
            Case 4
                Let COLT5$ = Chr$(52)
            Case 5
                Let COLT5$ = Chr$(53)
            Case 6
                Let COLT5$ = Chr$(54)
            Case 7
                Let COLT5$ = Chr$(55)
            Case 8
                Let COLT5$ = Chr$(56)
            Case 9
                Let COLT5$ = Chr$(57)
            Case 10
                Let COLT$ = LTrim$(Str$(10))
            Case 11
                Let COLT5$ = "A"
            Case 12
                Let COLT5$ = "J"
            Case 13
                Let COLT5$ = "Q"
            Case 14
                Let COLT5$ = "K"

        End Select





        '    POZITIONARE NR. COLTURI
        Locate 3, 63
        Print "  "
        Locate 3, 63
        Print COLT5$

        Locate 3, 74
        Print "  "
        Locate 3, 74
        Print COLT5$

        Locate 12, 63
        Print "  "
        Locate 12, 63
        Print COLT5$

        Locate 12, 74
        Print "  "
        Locate 12, 74
        Print COLT5$

    Next

    '============================================================================
    'INTRE RANDURILE DUBLE DE EGALURI SE GASESTE AFISAREA CELOR CINCI CARTI !
    '============================================================================

    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''ALEGERI
    p:
    Color 4
    Locate 24, 2
    Input " Served?(S) Or you ask cards ? (Y) !", ALEG$
    If ALEG$ = "S" Or ALEG$ = "s" Then
        GoSub castig
        GoTo r
    End If
    If ALEG$ = "Y" Or ALEG$ = "y" Then
        GoTo t
    End If
    GoTo r


    ''''''''''''''''''''''''''''''''''''''''''''''''''''''ALEG DE A PASTRA
    t:
    Color 3
    Locate 25, 4
    Print "Do push under the card to change:D"
    Locate 26, 4
    Print "Under the card keeped press     :N"
    '**************************TINUTE ( PASTRATE )******************************
    View (40, 230)-(130, 260), 3, 5
    View (150, 230)-(240, 260), 3, 5
    View (265, 230)-(355, 260), 3, 5
    View (380, 230)-(475, 260), 3, 5
    View (500, 230)-(590, 260), 3, 5
    '***************************************************************************
    '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    ''''''''''''''''''''''''''TIN I-A CARTE ?
    Locate 16, 7
    Color 14
    Input "D or N ?", TINDANU1$
    Locate 16, 21
    Color 14
    Input "D or N ?", TINDANU2$
    Locate 16, 35
    Color 14
    Input "D or N ?", TINDANU3$
    Locate 16, 49
    Color 14
    Input "D or N ?", TINDANU4$
    Locate 16, 64
    Color 14
    Input "D or N ?", TINDANU5$






    If TINDANU1$ = "D" Or TINDANU1$ = "d" Then

        '=========== PRIMA CARTE==================
        'RANDO CIFRE COLT I-A CARTE !

        For i = 1 To 50
            'CULOAREA  DIN MIJLOC A CARTII 1
            MIJLOC = Int(Rnd * 4 + 1)
            If MIJLOC = 1 Then
                Let mij1$ = Chr$(3)
            End If
            If MIJLOC = 2 Then
                Let mij1$ = Chr$(4)
            End If
            If MIJLOC = 3 Then
                Let mij1$ = Chr$(5)
            End If
            If MIJLOC = 4 Then
                Let mij1$ = Chr$(6)
            End If
            ' LOCALIZAREA CULORII

            If MIJLOC = 1 Or MIJLOC = 2 Then
                Color 4
            End If
            If MIJLOC = 3 Or MIJLOC = 4 Then
                Color 8
            End If

            Locate 7, 11
            Print mij1$
            Locate 7, 14
            Print mij1$
            Locate 7, 8
            Print mij1$
            Locate 5, 11
            Print mij1$
            Locate 9, 11
            Print mij1$
            '''''''''''''''''''''''''''''''''''''''''''''''COLTURI I-A CARTE
            COLT1 = Int(Rnd * 13 + 2)
            Select Case COLT1
                Case 2
                    Let COLT1$ = Chr$(50)
                Case 3
                    Let COLT1$ = Chr$(51)
                Case 4
                    Let COLT1$ = Chr$(52)
                Case 5
                    Let COLT1$ = Chr$(53)
                Case 6
                    Let COLT1$ = Chr$(54)
                Case 7
                    Let COLT1$ = Chr$(55)
                Case 8
                    Let COLT1$ = Chr$(56)
                Case 9
                    Let COLT1$ = Chr$(57)
                Case 10
                    Let COLT1$ = LTrim$(Str$(10))
                Case 11
                    Let COLT1$ = "A"
                Case 12
                    Let COLT1$ = "J"
                Case 13
                    Let COLT1$ = "Q"
                Case 14
                    Let COLT1$ = "K"

            End Select




            '    POZITIONARE NR. COLTURI
            Locate 3, 6
            Print "  "
            Locate 3, 6
            Print COLT1$

            Locate 3, 16
            Print "  "
            Locate 3, 16
            Print COLT1$

            Locate 12, 6
            Print "  "
            Locate 12, 6
            Print COLT1$

            Locate 12, 16
            Print "  "
            Locate 12, 16
            Print COLT1$

        Next

    End If
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

    If TINDANU1$ = "N" Or TINDANU1$ = "n" Then
    End If
    '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

    '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    ''''''''''''''''''''''''''''''''''''''''''''''''''''''TIN A II-A CARTE ?
    'LOCATE 16, 21
    'COLOR 14
    'INPUT "D or N ?", TINDANU2$
    If TINDANU2$ = "D" Or TINDANU2$ = "d" Then

        '======================A DOUA CARTE =====================================
        'RANDO CIFRE COLT A II-A CARTE !

        For i = 1 To 40
            'CULOAREA  DIN MIJLOC A CARTII 2
            MIJLOC = Int(Rnd * 4 + 1)
            If MIJLOC = 1 Then
                Let mij2$ = Chr$(3)
            End If
            If MIJLOC = 2 Then
                Let mij2$ = Chr$(4)
            End If
            If MIJLOC = 3 Then
                Let mij2$ = Chr$(5)
            End If
            If MIJLOC = 4 Then
                Let mij2$ = Chr$(6)
            End If
            ' LOCALIZAREA CULORII

            If MIJLOC = 1 Or MIJLOC = 2 Then
                Color 4
            End If
            If MIJLOC = 3 Or MIJLOC = 4 Then
                Color 8
            End If

            Locate 7, 25
            Print mij2$
            Locate 7, 28
            Print mij2$
            Locate 7, 22
            Print mij2$
            Locate 5, 25
            Print mij2$
            Locate 9, 25
            Print mij2$

            '''''''''''''''''''''''''''''''''''''''''''''''''''''COLTURI A II-A CARTE
            COLT2 = Int(Rnd * 13 + 2)
            Select Case COLT2
                Case 2
                    Let COLT2$ = Chr$(50)
                Case 3
                    Let COLT2$ = Chr$(51)
                Case 4
                    Let COLT2$ = Chr$(52)
                Case 5
                    Let COLT2$ = Chr$(53)
                Case 6
                    Let COLT2$ = Chr$(54)
                Case 7
                    Let COLT2$ = Chr$(55)
                Case 8
                    Let COLT2$ = Chr$(56)
                Case 9
                    Let COLT2$ = Chr$(57)
                Case 10
                    Let COLT2$ = LTrim$(Str$(10))
                Case 11
                    Let COLT2$ = "A"
                Case 12
                    Let COLT2$ = "J"
                Case 13
                    Let COLT2$ = "Q"
                Case 14
                    Let COLT2$ = "K"

            End Select

            '    POZITIONARE NR. COLTURI
            Locate 3, 20
            Print "  "
            Locate 3, 20
            Print COLT2$

            Locate 3, 30
            Print "  "
            Locate 3, 30
            Print COLT2$

            Locate 12, 20
            Print "  "
            Locate 12, 20
            Print COLT2$

            Locate 12, 30
            Print "  "
            Locate 12, 30
            Print COLT2$

        Next

    End If
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

    If TINDANU2$ = "N" Or TINDANU2$ = "n" Then
    End If
    '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

    '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

    ''''''''''''''''''''''''''TIN A III-A CARTE ?
    'LOCATE 16, 35
    'COLOR 14
    'INPUT "D or N?", TINDANU3$
    If TINDANU3$ = "D" Or TINDANU3$ = "d" Then

        '======================A TREIA CARTE =====================================
        'RANDO CIFRE COLT A III-A CARTE !

        For i = 1 To 40
            'CULOAREA  DIN MIJLOC A CARTII 3

            MIJLOC = Int(Rnd * 4 + 1)
            If MIJLOC = 1 Then
                Let mij3$ = Chr$(3)
            End If
            If MIJLOC = 2 Then
                Let mij3$ = Chr$(4)
            End If
            If MIJLOC = 3 Then
                Let mij3$ = Chr$(5)
            End If
            If MIJLOC = 4 Then
                Let mij3$ = Chr$(6)
            End If
            ' LOCALIZAREA CULORII

            If MIJLOC = 1 Or MIJLOC = 2 Then
                Color 4
            End If
            If MIJLOC = 3 Or MIJLOC = 4 Then
                Color 8
            End If

            Locate 7, 39
            Print mij3$
            Locate 7, 42
            Print mij3$
            Locate 7, 36
            Print mij3$
            Locate 5, 39
            Print mij3$
            Locate 9, 39
            Print mij3$
            ''''''''''''''''''''''''''''''''''''''''''''''''''COLTURI A TREIA CARTE
            COLT3 = Int(Rnd * 13 + 2)
            Select Case COLT3
                Case 2
                    Let COLT3$ = Chr$(50)
                Case 3
                    Let COLT3$ = Chr$(51)
                Case 4
                    Let COLT3$ = Chr$(52)
                Case 5
                    Let COLT3$ = Chr$(53)
                Case 6
                    Let COLT3$ = Chr$(54)
                Case 7
                    Let COLT3$ = Chr$(55)
                Case 8
                    Let COLT3$ = Chr$(56)
                Case 9
                    Let COLT3$ = Chr$(57)
                Case 10
                    Let COLT3$ = LTrim$(Str$(10))
                Case 11
                    Let COLT3$ = "A"
                Case 12
                    Let COLT3$ = "J"
                Case 13
                    Let COLT3$ = "Q"
                Case 14
                    Let COLT3$ = "K"

            End Select
            '    POZITIONARE NR. COLTURI
            Locate 3, 34
            Print "  "
            Locate 3, 34
            Print COLT3$

            Locate 3, 45
            Print "  "
            Locate 3, 45
            Print COLT3$

            Locate 12, 34
            Print "  "
            Locate 12, 34
            Print COLT3$

            Locate 12, 45
            Print "  "
            Locate 12, 45
            Print COLT3$

        Next

    End If
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

    If TINDANU3$ = "N" Or TINDANU3$ = "n" Then
    End If
    '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

    '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

    ''''''''''''''''''''''''''TIN A IV-A CARTE ?
    'LOCATE 16, 49
    'COLOR 14
    'INPUT "D sau N?", TINDANU4$
    If TINDANU4$ = "D" Or TINDANU4$ = "d" Then

        '======================A PATRA CARTE =====================================
        'RANDO CIFRE COLT A IV-A CARTE !

        For i = 1 To 40
            'CULOAREA  DIN MIJLOC A CARTII 4
            MIJLOC = Int(Rnd * 4 + 1)
            If MIJLOC = 1 Then
                Let mij4$ = Chr$(3)
            End If
            If MIJLOC = 2 Then
                Let mij4$ = Chr$(4)
            End If
            If MIJLOC = 3 Then
                Let mij4$ = Chr$(5)
            End If
            If MIJLOC = 4 Then
                Let mij4$ = Chr$(6)
            End If
            ' LOCALIZAREA CULORII

            If MIJLOC = 1 Or MIJLOC = 2 Then
                Color 4
            End If
            If MIJLOC = 3 Or MIJLOC = 4 Then
                Color 8
            End If

            Locate 7, 54
            Print mij4$
            Locate 7, 57
            Print mij4$
            Locate 7, 51
            Print mij4$
            Locate 5, 54
            Print mij4$
            Locate 9, 54
            Print mij4$
            '''''''''''''''''''''''''''''''''''''''''''''''COLTURI LA A PATRA CARTE
            COLT4 = Int(Rnd * 13 + 2)
            Select Case COLT4
                Case 2
                    Let COLT4$ = Chr$(50)
                Case 3
                    Let COLT4$ = Chr$(51)
                Case 4
                    Let COLT4$ = Chr$(52)
                Case 5
                    Let COLT4$ = Chr$(53)
                Case 6
                    Let COLT4$ = Chr$(54)
                Case 7
                    Let COLT4$ = Chr$(55)
                Case 8
                    Let COLT4$ = Chr$(56)
                Case 9
                    Let COLT4$ = Chr$(57)
                Case 10
                    Let COLT4$ = LTrim$(Str$(10))
                Case 11
                    Let COLT4$ = "A"
                Case 12
                    Let COLT4$ = "J"
                Case 13
                    Let COLT4$ = "Q"
                Case 14
                    Let COLT4$ = "K"

            End Select

            '    POZITIONARE NR. COLTURI
            Locate 3, 48
            Print "  "
            Locate 3, 48
            Print COLT4$

            Locate 3, 60
            Print "  "
            Locate 3, 60
            Print COLT4$

            Locate 12, 48
            Print "  "
            Locate 12, 48
            Print COLT4$

            Locate 12, 60
            Print "  "
            Locate 12, 60
            Print COLT4$

        Next

    End If
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

    If TINDANU4$ = "N" Or TINDANU4$ = "n" Then
    End If
    '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

    '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

    ''''''''''''''''''''''''''TIN A V-A CARTE ?
    'LOCATE 16, 64
    'COLOR 14
    'INPUT "D sau N?", TINDANU5$
    If TINDANU5$ = "D" Or TINDANU5$ = "d" Then

        '======================A CINCEA CARTE =====================================
        'RANDO CIFRE COLT A V-A CARTE !


        'PLAY "O3T80MNL16DBAGL6D"

        For i = 1 To 30

            'CULOAREA  DIN MIJLOC A CARTII 5

            MIJLOC = Int(Rnd * 4 + 1)
            If MIJLOC = 1 Then
                Let mij5$ = Chr$(3)
            End If
            If MIJLOC = 2 Then
                Let mij5$ = Chr$(4)
            End If
            If MIJLOC = 3 Then
                Let mij5$ = Chr$(5)
            End If
            If MIJLOC = 4 Then
                Let mij5$ = Chr$(6)
            End If
            ' LOCALIZAREA CULORII

            If MIJLOC = 1 Or MIJLOC = 2 Then
                Color 4
            End If
            If MIJLOC = 3 Or MIJLOC = 4 Then
                Color 8
            End If

            Locate 7, 69
            Print mij5$
            Locate 7, 72
            Print mij5$
            Locate 7, 66
            Print mij5$
            Locate 5, 69
            Print mij5$
            Locate 9, 69
            Print mij5$

            ''''''''''''''''''''''''''''''''''''''''''''''''''''COLTURI CARTEA A CINCEA
            COLT5 = Int(Rnd * 13 + 2)
            Select Case COLT5
                Case 2
                    Let COLT5$ = Chr$(50)
                Case 3
                    Let COLT5$ = Chr$(51)
                Case 4
                    Let COLT5$ = Chr$(52)
                Case 5
                    Let COLT5$ = Chr$(53)
                Case 6
                    Let COLT5$ = Chr$(54)
                Case 7
                    Let COLT5$ = Chr$(55)
                Case 8
                    Let COLT5$ = Chr$(56)
                Case 9
                    Let COLT5$ = Chr$(57)
                Case 10
                    Let COLT$ = LTrim$(Str$(10))
                Case 11
                    Let COLT5$ = "A"
                Case 12
                    Let COLT5$ = "J"
                Case 13
                    Let COLT5$ = "Q"
                Case 14
                    Let COLT5$ = "K"

            End Select





            '    POZITIONARE NR. COLTURI
            Locate 3, 63
            Print "  "
            Locate 3, 63
            Print COLT5$

            Locate 3, 74
            Print "  "
            Locate 3, 74
            Print COLT5$

            Locate 12, 63
            Print "  "
            Locate 12, 63
            Print COLT5$

            Locate 12, 74
            Print "  "
            Locate 12, 74
            Print COLT5$

        Next

    End If
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

    If TINDANU5$ = "N" Or TINDANU5$ = "n" Then
    End If

    GoSub castig

    GoTo r
    '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

    '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

    r:
    Color 14 'afisare situatie curenta
    Locate 20, 14: Print "You have : "; amban
    Locate 20, 33: Print " $ "
    GoTo i

    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


Wend


castig:
'============================================================================
'INTRE RANDURILE DUBLE DE EGALURI SE GASESTE AFISAREA CELOR CINCI CARTI !
'============================================================================

'++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'                            CASTIGURILE
'++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

'+++++++++++++++++++++++++++++ premieri++++++++++++++++++++++++
'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
'++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''QUINTA ROYALA
If COLT1 <> COLT2 <> COLT3 <> COLT4 <> COLT5 Then


    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''QUINTA ROYALA
    If (COLT1 < COLT2 And COLT1 < COLT3 And COLT1 < COLT4 And COLT1 < COLT5) And (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT1 + 10) And (Val(mij1$) = Val(mij2$) = Val(mij3$) = Val(mij4$) = Val(mij5$)) Then
        premiu = 10000
        Play "O3T80MNL16DBAGL6D"
        amban = amban + premiu
        GoTo r
    End If
    If (COLT2 < COLT1 And COLT2 < COLT3 And COLT2 < COLT4 And COLT2 < COLT5) And (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT2 + 10) And (Val(mij1$) = Val(mij2$) = Val(mij3$) = Val(mij4$) = Val(mij5$)) Then
        premiu = 10000
        Play "O3T80MNL16DBAGL6D"
        amban = amban + premiu
        GoTo r
    End If
    If (COLT3 < COLT2 And COLT3 < COLT1 And COLT3 < COLT4 And COLT3 < COLT5) And (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT3 + 10) And (Val(mij1$) = Val(mij2$) = Val(mij3$) = Val(mij4$) = Val(mij5$)) Then
        premiu = 10000
        Play "O3T80MNL16DBAGL6D"
        amban = amban + premiu
        GoTo r
    End If
    If (COLT4 < COLT2 And COLT4 < COLT3 And COLT4 < COLT1 And COLT4 < COLT5) And (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT4 + 10) And (Val(mij1$) = Val(mij2$) = Val(mij3$) = Val(mij4$) = Val(mij5$)) Then
        premiu = 10000
        Play "O3T80MNL16DBAGL6D"
        amban = amban + premiu
        GoTo r
    End If
    If (COLT5 < COLT2 And COLT5 < COLT3 And COLT5 < COLT4 And COLT5 < COLT1) And (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT5 + 10) And (Val(mij1$) = Val(mij2$) = Val(mij3$) = Val(mij4$) = Val(mij5$)) Then
        premiu = 10000
        Play "O3T80MNL16DBAGL6D"
        amban = amban + premiu
        GoTo r
    End If


End If
'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''careu
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
If COLT1 = COLT2 = COLT3 = COLT4 Or COLT1 = COLT2 = COLT3 = COLT5 Or COLT1 = COLT2 = COLT4 = COLT5 Or COLT1 = COLT3 = COLT4 = COLT5 Or COLT2 = COLT3 = COLT4 = COLT5 Then
    premiu = 5000
    Play "O3T80MNL16DBAGL6D"
    amban = amban + premiu
    GoTo r
End If

'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''culoare
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

If Val(mij1$) = Val(mij2$) = Val(mij3$) = Val(mij4$) = Val(mij5$) Then
    premiu = 3000
    Play "O3T80MNL16DBAGL6D"
    amban = amban + premiu
    GoTo r
End If


'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''FULL
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

If ((COLT1 = COLT2 = COLT3) And (COLT4 = COLT5)) Or ((COLT1 = COLT2 = COLT5) And (COLT3 = COLT4)) Or ((COLT1 = COLT2 = COLT4) And (COLT3 = COLT5)) Or ((COLT2 = COLT3 = COLT4) And (COLT1 = COLT5)) Or ((COLT2 = COLT3 = COLT5) And (COLT1 = COLT4)) Or ((COLT1 = COLT3 = COLT4) And (COLT5 = COLT2)) Or ((COLT1 = COLT3 = COLT5) And (COLT2 = COLT4)) Or ((COLT5 = COLT2 = COLT4) And (COLT1 = COLT3)) Or ((COLT1 = COLT4 = COLT5) And (COLT3 = COLT2)) Or ((COLT4 = COLT3 = COLT5) And (COLT1 = COLT2)) Then
    premiu = 2000
    Play "O3T80MNL16DBAGL6D"
    amban = amban + premiu
    GoTo r
End If


'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''QUINTA
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

If COLT1 <> COLT2 <> COLT3 <> COLT4 <> COLT5 Then

    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''QUINTA
    If (COLT1 < COLT2 And COLT1 < COLT3 And COLT1 < COLT4 And COLT1 < COLT5) And (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT1 + 10) Then
        premiu = 1000
        Play "O3T80MNL16DBAGL6D"
        amban = amban + premiu
        GoTo r
    End If
    If (COLT2 < COLT1 And COLT2 < COLT3 And COLT2 < COLT4 And COLT2 < COLT5) And (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT2 + 10) Then
        premiu = 1000
        Play "O3T80MNL16DBAGL6D"
        amban = amban + premiu
        GoTo r
    End If
    If (COLT3 < COLT2 And COLT3 < COLT1 And COLT3 < COLT4 And COLT3 < COLT5) And (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT3 + 10) Then
        premiu = 1000
        Play "O3T80MNL16DBAGL6D"
        amban = amban + premiu
        GoTo r
    End If
    If (COLT4 < COLT2 And COLT4 < COLT3 And COLT4 < COLT1 And COLT4 < COLT5) And (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT4 + 10) Then
        premiu = 1000
        Play "O3T80MNL16DBAGL6D"
        amban = amban + premiu
        GoTo r
    End If
    If ((COLT5 < COLT2 And COLT5 < COLT3 And COLT5 < COLT4 And COLT5 < COLT1) And (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT5 + 10)) Then
        premiu = 1000
        Play "O3T80MNL16DBAGL6D"
        amban = amban + premiu
        GoTo r
    End If
    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''INCHEIERE QUINTE
End If

'**************************************************************************


'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''TREI BUCATI
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''TREI BUCATI
If (COLT1 = COLT2 And COLT2 = COLT3) Or (COLT1 = COLT2 And COLT2 = COLT5) Or (COLT1 = COLT2 And COLT2 = COLT4) Or (COLT2 = COLT3 And COLT3 = COLT4) Or (COLT2 = COLT3 And COLT3 = COLT5) Or (COLT1 = COLT3 And COLT3 = COLT4) Or (COLT1 = COLT3 And COLT3 = COLT5) Or (COLT5 = COLT2 And COLT2 = COLT4) Or (COLT1 = COLT4 And COLT4 = COLT5) Or (COLT4 = COLT3 And COLT3 = COLT5) Then
    premiu = 500
    Play "O3T80MNL16DBAGL6D"
    amban = amban + premiu
    GoTo r
End If

'**************************************************************************

'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''DOUA PERECHI
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''DOUA PERECHI

If (COLT1 = COLT2 And COLT3 = COLT4 And COLT2 <> COLT3) Or (COLT1 = COLT2 And COLT3 = COLT5 And COLT2 <> COLT3) Or (COLT1 = COLT2 And COLT4 = COLT5 And COLT2 <> COLT4) Or (COLT1 = COLT3 And COLT2 = COLT4 And COLT2 <> COLT3) Or (COLT1 = COLT3 And COLT2 = COLT5 And COLT2 <> COLT3) Or (COLT1 = COLT3 And COLT4 = COLT5 And COLT3 <> COLT4) Or (COLT1 = COLT4 And COLT2 = COLT3 And COLT2 <> COLT4) Or (COLT1 = COLT4 And COLT2 = COLT5 And COLT2 <> COLT4) Or (COLT1 = COLT4 And COLT3 = COLT5 And COLT4 <> COLT3) Or (COLT1 = COLT5 And COLT2 = COLT3 And COLT2 <> COLT5) Or (COLT1 = COLT5 And COLT2 = COLT4 And COLT2 <> COLT5) Or (COLT1 = COLT5 And COLT3 = COLT4 And COLT5 <> COLT3) Or (COLT2 = COLT3 And COLT4 = COLT5 And COLT4 <> COLT3) Or (COLT5 = COLT3 And COLT2 = COLT4 And COLT2 <> COLT3) Or (COLT4 = COLT3 And COLT2 = COLT5 And COLT2 <> COLT3) Then
    premiu = 200
    Play "O3T80MNL16DBAGL6D"
    amban = amban + premiu
    GoTo r
End If

'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''O PERECHE
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''O PERECHE
If (COLT1 = COLT2 And COLT2 > 10) Or (COLT1 = COLT3 And COLT3 > 10) Or (COLT1 = COLT4 And COLT4 > 10) Or (COLT1 = COLT5 And COLT5 > 10) Or (COLT2 = COLT3 And COLT2 > 10) Or (COLT2 = COLT4 And COLT2 > 10) Or (COLT2 = COLT5 And COLT2 > 10) Or (COLT3 = COLT4 And COLT3 > 10) Or (COLT3 = COLT5 And COLT3 > 10) Or (COLT4 = COLT5 And COLT4 > 10) Then
    premiu = 100
    Play "O3T80MNL16DBAGL6D"
    amban = amban + premiu
    GoTo r
End If

Return









'Alegerea de a MAI juca sau nu jocul
i:
Locate 1, 5
Color 2
Input "Do you want to continue playing? (Y/N) "; RASPUN$
While RASPUN$ = "Y" Or RASPUN$ = "y"
    Locate 1, 5
    Print "                                                                   "
    GoTo s
Wend

