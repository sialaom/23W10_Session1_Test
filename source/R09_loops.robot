*** Test Cases ***
Example
    FOR    ${animal}    IN    cat    dog
        Log    ${animal}
        Log    2nd keyword
    END
    Log    Outside loop

Second Example
    FOR    ${var}    IN    one    two    ${3}    four    ${five}
    ...    kuusi    7    eight    nine    ${last}
        Log    ${var}
    END

*** Test Cases ***
Example
    ${rc} =   Set Variable    1
    WHILE    ${rc} != 0
        ${rc} =    Keyword that returns zero on success
    END

*** Test Cases ***
Example
    IF    ${rc} > 0
        Log  Some keyword
    ELSE
        Log  Another keyword
    END

*** Test Cases ***
Example
    IF    $rc > 0
        Log  Positive keyword
    ELSE IF    $rc < 0
        Log  Negative keyword
    ELSE IF    $rc == 0
        Log  Zero keyword
    ELSE
        Fail    Unexpected rc: ${rc}
    END