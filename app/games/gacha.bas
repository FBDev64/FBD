' Data structures
Type character
    name As String * 10
    rarity As Integer
End Type

' Global variables
STATIC randomSeed AS INTEGER

SUB main()
    ' Initialize random seed once
    randomSeed = TIMER()

    ' Create character array
    Dim characters(2) As character

    ' Initialize characters
    characters(0).name = "Alice"
    characters(0).rarity = 0 ' Common
    characters(1).name = "Bob"
    characters(1).rarity = 1 ' Rare

    ' Perform gacha pull
    gachaPull(randomSeed)

    ' Additional pulls (optional)
    FOR i = 1 TO 2
        gachaPull(randomSeed)
    NEXT i
END SUB

SUB gachaPull(seed AS INTEGER)
    ' Use provided seed
    randomSeed = seed

    ' Generate random value
    RANDOMIZE randomSeed
    Dim randomValue AS SINGLE
    randomValue = RND()

    ' Determine rarity level
    Dim rarityLevel AS INTEGER
    rarityLevel = 0 ' Default to Common
    IF randomValue > 0.75 THEN
        rarityLevel = 1 ' Rare
    ELSEIF randomValue > 0.9 THEN
        rarityLevel = 2 ' Epic
    END IF

    ' Find character with chosen rarity
    Dim selectedCharacter As character
    FOR i = 0 TO UBound(characters)
        IF characters(i).rarity = rarityLevel THEN
            selectedCharacter = characters(i)
            EXIT FOR
        END IF
    NEXT i

    ' Print result
    PRINT "You pulled a ";
    SELECT CASE rarityLevel
        CASE 0
            PRINT "Common"
        CASE 1
            PRINT "Rare"
        CASE 2
            PRINT "Epic"
    END SELECT
    PRINT " character: ", selectedCharacter.name
END SUB

