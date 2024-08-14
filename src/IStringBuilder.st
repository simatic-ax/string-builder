NAMESPACE System.Strings
    INTERFACE IStringBuilder EXTENDS IConstrainedStringBuilder
        METHOD Insert : IStringBuilder
            VAR_INPUT
                t : STRING;
                pos : INT;
            END_VAR
        END_METHOD

        METHOD Remove : IStringBuilder
            VAR_INPUT
                t: STRING;
                startPos : INT;
                length : INT;
            END_VAR
        END_METHOD

        METHOD Substring : IStringBuilder
            VAR_INPUT
                t : STRING;
                startPos : INT;
                length : INT;
            END_VAR
        END_METHOD

        METHOD  StartOf : IStringBuilder
            VAR_INPUT
                t : STRING;
                length : INT;
            END_VAR
        END_METHOD

        METHOD  EndOf : IStringBuilder
            VAR_INPUT
                t : STRING;
                length : INT;
            END_VAR
        END_METHOD

        METHOD Replace : IStringBuilder
            VAR_INPUT
                t : STRING;
                startPos : INT;
                length : INT;
                replaceValue : STRING;
            END_VAR
        END_METHOD
    END_INTERFACE
END_NAMESPACE