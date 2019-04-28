*&---------------------------------------------------------------------*
*& Report zfizzbuzz
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zfizzbuzz.

cl_demo_output=>display(
    value string_table(
        for i = 1 while i <= 100 (
            cond string(
                let fizzbuzz = cond string(  Let r3 = i mod 3 in when r3 = 0 then |Fizz| ) && cond string(  Let r3 = i mod 5 in when r3 = 0 then |Buzz| )
                in when fizzbuzz is initial then i
                else fizzbuzz
            )
        )
    )
 ).
