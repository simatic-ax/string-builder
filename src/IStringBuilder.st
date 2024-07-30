NAMESPACE System.Strings
    INTERFACE IStringBuilder EXTENDS IConstrainedStringBuilder
        METHOD Insert : IStringBuilder
            VAR_INPUT
                t : STRING;
                pos : INT;
            END_VAR
        END_METHOD
    END_INTERFACE
END_NAMESPACE