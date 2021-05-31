*** Test Cases ***

Forloop1
    FOR   ${i}    IN RANGE    1   10
    log to console    ${i}
    END

Forloop2
    FOR    ${i}    IN    1    2    3    4    5    6    7    8
        log to console    ${i}
        exit for loop if    ${i}==1

    END

Forloop3
    ${list}=    create list    1   2   3   4
    FOR    ${i}    IN   ${list}
        log to console    ${i}
        exit for loop if    ${i}==1
    END

Forloop4
    FOR    ${i}    IN RANGE   1   5
        FOR    ${j}    IN RANGE    1   3
            log to console    ${i}
        END
    END