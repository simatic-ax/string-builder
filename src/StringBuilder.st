USING System.Strings;
NAMESPACE Simatic.Ax.Strings
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
    
        METHOD PUBLIC Remove : IStringBuilder
            VAR_INPUT
                t : STRING;
                startPos : INT;
                length : INT;
            END_VAR
            _string := Remove(t, startPos, length);
            Remove := THIS;
        END_METHOD
    
    
        METHOD PUBLIC Substring : IStringBuilder
            VAR_INPUT
                t : STRING;
                startPos : INT;
                length : INT;
            END_VAR
            _string := Substring(t, startPos, length);
            Substring := THIS;
        END_METHOD
    
        METHOD PUBLIC StartOf : IStringBuilder
            VAR_INPUT
                t : STRING;
                length : INT;
            END_VAR
            _string := StartOf(t,length);
            StartOf := THIS;
        END_METHOD
    
        METHOD PUBLIC Replace : IStringBuilder
            VAR_INPUT
                t : STRING;
                startPos : INT;
                length : INT;
                replaceValue : STRING;
            END_VAR
            _string := Replace(t, startPos, length, replaceValue);
            Replace := THIS;
        END_METHOD
    
        METHOD PUBLIC EndOf : IStringBuilder
            VAR_INPUT
                t : STRING;
                length : INT;
            END_VAR
            _string := EndOf(t, length);
            EndOf := THIS;
        END_METHOD
    END_CLASS
END_NAMESPACE