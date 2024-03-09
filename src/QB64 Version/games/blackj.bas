'                        Qbasic Black Jack for the PC
'
'This is the game of Black Jack.  The object of the game is to get a total
'of 21 in your hand, or as close as you can get to 21, without going over.
'Whoever gets closest to 21 is the winner.  In case of a tie, the dealer
'wins.  Face cards are worth ten points.  Aces are worth either one or eleven
'points.  All other cards are worth their face value.  To get more cards in
'your hand, you take a hit.  In this game, you do that by hitting the "H"
'button.  When you feel you have enough points, you stay, by hitting the "S"
'button.  The dealer will hit until he has seventeen or more.
'This game does use a deck of cards, not just randomly generated numbers, so
'you can keep track of the cards and you will know what cards are left.  When
'the deck runs out, it does get reshuffled.
'
'
'
'
'
'
'
'

$ExeICON:'./card.ico'

DECLARE SUB heart ()
DECLARE SUB diamond ()
DECLARE SUB club ()
DECLARE SUB spade ()
DECLARE SUB display ()
DECLARE SUB score ()

Option Base 1 'starts the deck array at 1
Dim deck(52) 'dimensions the array
For card = 1 To 52 'generates the deck
    deck(card) = card
Next card
scoreplayer = 0
scoredealer = 0

reshuffle:

Randomize Timer 'shuffles the deck
For ctr = 1 To 50
    a = Int(52 * Rnd) + 1
    B = Int(52 * Rnd) + 1
    Swap deck(a), deck(B)
Next ctr

card = 0

playagain:
Cls
Screen 7 '40 x 25 text, 320 x 200 graphics, 16 colors
Line (0, 0)-(320, 200), 2, BF 'green background
Line (95, -1)-(191, 10), 15, BF 'box around "Black Jack"
Line (95, -1)-(191, 10), 1, B '     "
Line (5, 165)-(265, 185), 15, BF 'box around "Total-  (h)it or ..."
Line (5, 165)-(265, 185), 1, B '     "
Line (2, 94)-(41, 104), 15, BF 'box around "You:"
Line (2, 94)-(41, 104), 1, B '     "
Line (2, 6)-(65, 16), 15, BF 'box around "Dealer:"
Line (2, 6)-(65, 16), 1, B '     "

Color 1, 2

Locate 1, 14 '
Print "Black Jack" '
Locate 2, 2
Print "Dealer:"
Locate 13, 2
Print "You:"

Call score

totaldealer = 0
totalplayer = 0
totaldealer2 = 0
totalplayer2 = 0
ace.yes.no.dealer = 0
ace.yes.no.player = 0

Locate 4, 2

x = 2
y = 4

Line (5, 20)-(45, 70), 4, BF
Line (5, 20)-(45, 70), 1, B
Line (6, 21)-(44, 69), 15, B

card1 = 1

total = totaldealer
total2 = totaldealer2
ace.yes.no = ace.yes.no.dealer

cardoriginal = card

Call display

totaldealer = total
totaldealer2 = total2
ace.yes.no.dealer = ace.yes.no

card1 = 0

x = 2
y = 4
cardx = 5
cardy = 20

total = totaldealer
total2 = totaldealer2
ace.yes.no = ace.yes.no.dealer

Call display

totaldealer = total
totaldealer2 = total2
ace.yes.no.dealer = ace.yes.no
x = -4
y = 15
cardx = -43
cardy = 107

ctr = 0

hit:

ctr = ctr + 1

total = totalplayer
total2 = totalplayer2
ace.yes.no = ace.yes.no.player

Call display

totalplayer = total
totalplayer2 = total2
ace.yes.no.player = ace.yes.no

If totalplayer > 21 Then
    GoTo over
End If

If ctr = 1 Then
    GoTo hit
End If

Locate 22, 2
Print "Total-"; totalplayer; "            "
If ace.yes.no.player = 1 And totalplayer2 <= 21 Then
    Locate 22, 2
    Print "Total-"; totalplayer2; "or"; totalplayer; ""
End If

If ctr = 6 Then
    GoTo charlie
End If

Locate 23, 2
Print "Do you want to (h)it or (s)tay?"

getkey:
h.s$ = InKey$
Select Case h.s$
    Case "h"
        GoTo hit
    Case "s"
        GoTo stay
End Select
GoTo getkey

stay:

Locate 23, 2
Print "                               "

If ace.yes.no.player = 1 And totalplayer2 <= 21 Then
    totalplayer = totalplayer2
End If

x = -4
y = 4
cardx = -43
cardy = 20
realcard = card

card = cardoriginal

Call display

cardvalue = 0
cardx = 53
x = 8

card = realcard

If totaldealer >= 17 Or totaldealer2 >= 17 Then
    GoTo staydealer
End If

dealercount = 0

hitdealer:

dealercount = dealercount + 1
Locate dealercount, 38
Print dealercount


total = totaldealer
total2 = totaldealer2
ace.yes.no = ace.yes.no.dealer

Call display

totaldealer = total
totaldealer2 = total2
ace.yes.no.dealer = ace.yes.no

If ace.yes.no.dealer = 1 And totaldealer2 <= 21 Then
    If totaldealer2 < 17 Then
        GoTo hitdealer
    End If
Else
    If totaldealer < 17 Then
        GoTo hitdealer
    End If
End If

staydealer:

If ace.yes.no.dealer = 1 And totaldealer2 <= 21 Then
    totaldealer = totaldealer2
End If

Line (5, 78)-(145, 88), 15, BF 'box around "Dealer Total-"
Line (5, 78)-(145, 88), 1, B '     "

Locate 11, 2
Print "Dealer Total-"; totaldealer

If totaldealer > 21 Then
    GoTo win
End If
If totalplayer > totaldealer Then
    GoTo win
End If

Locate 23, 2
Print "The dealer won."
scoredealer = scoredealer + 1
GoTo again

win:
Locate 23, 2
Print "You won!"
scoreplayer = scoreplayer + 1
GoTo again

over:
Locate 22, 2
Print "Total-"; totalplayer; "            "
Locate 23, 2
Print "You busted.                    "
scoredealer = scoredealer + 1
GoTo again

charlie:
Locate 23, 2
Print "Five-Card Charlie.  You Won!   "
scoreplayer = scoreplayer + 1

again:
Call score
Locate 22, 19
Print "Play again? y/n"
getkey2:
getkey$ = InKey$
Select Case getkey$
    Case "y"
        GoTo again2
    Case "n"
        GoTo quit
End Select
GoTo getkey2

again2:
If card > 42 Then
    Locate 22, 2
    Print " The cards have been shuffled.  "
    Locate 23, 2
    Print "  Press any key to continue."
    Do
        y.n$ = InKey$
    Loop Until y.n$ <> ""
    GoTo reshuffle
End If
GoTo playagain

quit:
Locate 12, 8
Line (0, 0)-(320, 200), 2, BF
Line (40, 80)-(281, 103), 15, BF
Line (40, 80)-(281, 103), 1, B
Print "Hope to see you again soon!"
End

Sub club

    Shared x
    Shared y
    Shared card1
    Color 1

    If card1 = 1 Then
        Color 0
    End If

    Locate y + 2, x + 2
    Print Chr$(5)

End Sub

Sub diamond

    Shared x
    Shared y
    Shared card1
    Color 4

    If card1 = 1 Then
        Color 0
    End If

    Locate y + 2, x + 2
    Print Chr$(4)



End Sub

Sub display

    Color 1, 15

    Shared deck()
    Shared playcard
    Shared card
    Shared cardx
    Shared cardy
    Shared card1
    Shared ace.yes.no
    Shared total
    Shared total2
    Shared x
    Shared y

    card = card + 1
    playcard = deck(card)
    cardx = cardx + 48
    x = x + 6

    Locate y, x

    If card1 = 0 Then
        Line (cardx, cardy)-(cardx + 40, cardy + 50), 15, BF
        Line (cardx, cardy)-(cardx + 40, cardy + 50), 1, B
    End If

    If playcard = 1 Then
        cardvalue = 0
        Print "A"
        Call heart
        If ace.yes.no = 1 Then
            total = total + 1
            total2 = total2 + 1
        Else
            total = total + 1
            total2 = total2 + 11
        End If
        ace.yes.no = 1
    End If

    If playcard = 2 Then
        cardvalue = 0
        Print "A"
        Call diamond
        If ace.yes.no = 1 Then
            total = total + 1
            total2 = total2 + 1
        Else
            total = total + 1
            total2 = total2 + 11
        End If
        ace.yes.no = 1
    End If

    If playcard = 3 Then
        cardvalue = 0
        Print "A"
        Call club
        If ace.yes.no = 1 Then
            total = total + 1
            total2 = total2 + 1
        Else
            total = total + 1
            total2 = total2 + 11
        End If
        ace.yes.no = 1
    End If

    If playcard = 4 Then
        cardvalue = 0
        Print "A"
        Call spade
        If ace.yes.no = 1 Then
            total = total + 1
            total2 = total2 + 1
        Else
            total = total + 1
            total2 = total2 + 11
        End If
        ace.yes.no = 1
    End If

    If playcard = 5 Then
        cardvalue = 2
        Call heart
    End If

    If playcard = 6 Then
        cardvalue = 2
        Call diamond
    End If

    If playcard = 7 Then
        cardvalue = 2
        Call club
    End If

    If playcard = 8 Then
        cardvalue = 2
        Call spade
    End If

    If playcard = 9 Then
        cardvalue = 3
        Call heart
    End If

    If playcard = 10 Then
        cardvalue = 3
        Call diamond
    End If

    If playcard = 11 Then
        cardvalue = 3
        Call club
    End If

    If playcard = 12 Then
        cardvalue = 3
        Call spade
    End If

    If playcard = 13 Then
        cardvalue = 4
        Call heart
    End If

    If playcard = 14 Then
        cardvalue = 4
        Call diamond
    End If

    If playcard = 15 Then
        cardvalue = 4
        Call club
    End If

    If playcard = 16 Then
        cardvalue = 4
        Call spade
    End If

    If playcard = 17 Then
        cardvalue = 5
        Call heart
    End If

    If playcard = 18 Then
        cardvalue = 5
        Call diamond
    End If

    If playcard = 19 Then
        cardvalue = 5
        Call club
    End If

    If playcard = 20 Then
        cardvalue = 5
        Call spade
    End If

    If playcard = 21 Then
        cardvalue = 6
        Call heart
    End If

    If playcard = 22 Then
        cardvalue = 6
        Call diamond
    End If

    If playcard = 23 Then
        cardvalue = 6
        Call club
    End If

    If playcard = 24 Then
        cardvalue = 6
        Call spade
    End If

    If playcard = 25 Then
        cardvalue = 7
        Call heart
    End If

    If playcard = 26 Then
        cardvalue = 7
        Call diamond
    End If

    If playcard = 27 Then
        cardvalue = 7
        Call club
    End If

    If playcard = 28 Then
        cardvalue = 7
        Call spade
    End If

    If playcard = 29 Then
        cardvalue = 8
        Call heart
    End If

    If playcard = 30 Then
        cardvalue = 8
        Call diamond
    End If

    If playcard = 31 Then
        cardvalue = 8
        Call club
    End If

    If playcard = 32 Then
        cardvalue = 8
        Call spade
    End If

    If playcard = 33 Then
        cardvalue = 9
        Call heart
    End If

    If playcard = 34 Then
        cardvalue = 9
        Call diamond
    End If

    If playcard = 35 Then
        cardvalue = 9
        Call club
    End If

    If playcard = 36 Then
        cardvalue = 9
        Call spade
    End If

    If playcard = 37 Then
        cardvalue = 10
        Call heart
    End If

    If playcard = 38 Then
        cardvalue = 10
        Call diamond
    End If

    If playcard = 39 Then
        cardvalue = 10
        Call club
    End If

    If playcard = 40 Then
        cardvalue = 10
        Call spade
    End If

    If playcard = 41 Then
        cardvalue = 10
        Call heart
    End If

    If playcard = 42 Then
        cardvalue = 10
        Call diamond
    End If

    If playcard = 43 Then
        cardvalue = 10
        Call club
    End If

    If playcard = 44 Then
        cardvalue = 10
        Call spade
    End If

    If playcard = 45 Then
        cardvalue = 10
        Call heart
    End If

    If playcard = 46 Then
        cardvalue = 10
        Call diamond
    End If

    If playcard = 47 Then
        cardvalue = 10
        Call club
    End If

    If playcard = 48 Then
        cardvalue = 10
        Call spade
    End If

    If playcard = 49 Then
        cardvalue = 10
        Call heart
    End If

    If playcard = 50 Then
        cardvalue = 10
        Call diamond
    End If

    If playcard = 51 Then
        cardvalue = 10
        Call club
    End If

    If playcard = 52 Then
        cardvalue = 10
        Call spade
    End If

    Locate y, x

    Print cardvalue

    Locate y, x

    If cardvalue = 0 Then
        Print " A "
    End If

    If playcard > 48 And playcard < 53 Then
        Print " K "
    End If

    If playcard > 44 And playcard < 49 Then
        Print " Q "
    End If

    If playcard > 40 And playcard < 45 Then
        Print " J "
    End If

    Color 1

    total = total + cardvalue
    total2 = total2 + cardvalue

End Sub

Sub heart

    Shared x
    Shared y
    Shared card1

    Color 4

    If card1 = 1 Then
        Color 0
    End If

    Locate y + 2, x + 2
    Print Chr$(3)



End Sub

Sub score
    Shared scoredealer
    Shared scoreplayer
    Line (154, 77)-(312, 97), 15, BF 'box around "Score: ..."
    Line (154, 77)-(312, 97), 1, B '     "
    Locate 11, 22
    Print "Score: Dealer-"; scoredealer
    Locate 12, 29
    Print "You-   "; scoreplayer
End Sub

Sub spade

    Shared x
    Shared y
    Shared card1

    Color 1

    If card1 = 1 Then
        Color 0
    End If

    Locate y + 2, x + 2
    Print Chr$(6)

End Sub

