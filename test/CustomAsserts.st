USING AxUnit.ResultFunctions;
USING System.Strings;

NAMESPACE AxUnit.Assert

    FUNCTION PUBLIC Equal
        VAR_INPUT
            actual : STRING;
            expected : STRING;
            messageOnFail : STRING;
            {CallerFilePath}
            file : WSTRING[1024];
            {CallerLineNumber}
            line : INT;
        END_VAR
        IF expected = actual THEN
            axunit_Succeed();
        ELSE
            if messageOnFail <> '' THEN
                axunit_Fail(messageOnFail, file, line);
            ELSE
                axunit_Fail(Concat('Expected ', expected, ', but found ', actual), file, line);
            END_IF;
        END_IF;
    END_FUNCTION
END_NAMESPACE