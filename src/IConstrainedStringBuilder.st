NAMESPACE Simatic.Ax.Strings
    INTERFACE IConstrainedStringBuilder
        METHOD Append : IStringBuilder
            VAR_INPUT
                t : STRING;
            END_VAR
        END_METHOD

        METHOD Reset : IConstrainedStringBuilder END_METHOD

        METHOD ToString : STRING END_METHOD
    END_INTERFACE
END_NAMESPACE