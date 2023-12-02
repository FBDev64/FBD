'FBD Editor

$ExeIcon:'./blocNotes.ico'
Const bio$ = "Funny Bones BBS editor"
_Title bio$


'Sans
Open "C:\Dev\qb64_dev\FBD\Sans.txt" For Output As #1
Write #1, "Alphys : How to ask someone out ?"
Write #1, "Mtt Ex : Roses are red, Violets are blue, my bed has places for two"
Write #1, "Sans : Twinkle Twinkle Little Star, We can Do it in the Car"
Close #1

'Puns
Open "./puns.txt" For Output As #2
Write #2, "Alphys : How to ask someone out ?"
Write #2, "Mtt Ex : Roses are red, Violets are blue, my bed has places for two"
Write #2, "Sans : Twinkle Twinkle Little Star, We can Do it in the Car"
Close #2

'Links
Open "./links.txt" For Output As #3
Write #3, "Alphys : How to ask someone out ?"
Write #3, "Mtt Ex : Roses are red, Violets are blue, my bed has places for two"
Write #3, "Sans : Twinkle Twinkle Little Star, We can Do it in the Car"
Close #3


