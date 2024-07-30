USING System.Strings;
NAMESPACE System.Strings
    CLASS StringBuilder IMPLEMENTS IStringBuilder, IConstrainedStringBuilder
        VAR
            _string : STRING;
        END_VAR
        
    
        METHOD PUBLIC Append : IStringBuilder
            VAR_INPUT
                t : STRING;
            END_VAR

            _string := Concat(_string, t);
            Append := THIS;
        END_METHOD
    
        METHOD PUBLIC Insert : IStringBuilder
            VAR_INPUT
                t : STRING;
                pos : INT;
            END_VAR
            _string := Insert(_string,pos,t);
            Insert := THIS;
        END_METHOD
    
        METHOD PUBLIC Reset : IConstrainedStringBuilder
            _string := '';
            Reset := THIS;
        END_METHOD

    
        METHOD PUBLIC ToString : STRING
            ToString := _string;
        END_METHOD
    END_CLASS
END_NAMESPACE