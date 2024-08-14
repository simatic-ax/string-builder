USING AxUnit.Assert;
USING System.Strings;
NAMESPACE System.Strings.Test

    {TestFixture}
    CLASS TestStringBuilder
        VAR
            _builder : StringBuilder;
        END_VAR
        
        {Test}
        METHOD PUBLIC StringIsResetToEmpty
            VAR
                _result : STRING;
            END_VAR
            // Act
            _builder.Reset();
            _result := _builder.ToString();
            // Assert
            AxUnit.Assert.Equal(_result,'');
        END_METHOD

        {Test}
        METHOD PUBLIC SingleStringIsAttached
            // Arrange
            _builder.Reset();
            // Act
            _builder.Append('TestString');
            // Assert
            Axunit.Assert.Equal(_builder.ToString(),'TestString');
        END_METHOD

        {Test}
        METHOD PUBLIC MultipleStringsAreAttached
            // Arrange
            _builder.Reset();
            // Act
            _builder.Append('First this, ');
            _builder.Append('then that!');
            // Assert
            Axunit.Assert.Equal(_builder.ToString(),'First this, then that!');
        END_METHOD

        {Test}
        METHOD PUBLIC ResetStringAfterAttaching
            // Arrange
            _builder.Reset();
            // Act
            _builder.Append('Some information.');
            _builder.Reset();
            // Assert
            Axunit.Assert.Equal(_builder.ToString(),'');
        END_METHOD

        {Test}
        METHOD PUBLIC InsertStringAtBeginning
            // Arrange
            _builder.Reset();
            // Act
            _builder.Append('Dummy string!');
            _builder.Insert('Warning: ',0);
            // Assert
            Axunit.Assert.Equal(_builder.ToString(),'Warning: Dummy string!');
        END_METHOD

        {Test}
        METHOD PUBLIC InsertStringInbetween
            // Arrange
            _builder.Reset();
            // Act
            _builder.Append('This is a message.');
            _builder.Insert('great ',10);
            // Assert
            Axunit.Assert.Equal(_builder.ToString(),'This is a great message.');
        END_METHOD

        {Test}
        METHOD PUBLIC InsertStringAtEnd
            // Arrange
            _builder.Reset();
            // Act
            _builder.Append('I have something more to ');
            _builder.Insert('add.', 25);
            // Assert
            Axunit.Assert.Equal(_builder.ToString(),'I have something more to add.');
        END_METHOD

        {Test}
        METHOD PUBLIC CombineWithSystemFunction
            _builder.Reset();

            _builder.Append('I want to search in this statement.');
            _builder.Insert(' for something', PositionOf(_builder.ToString(),' in ')-1);

            Axunit.Assert.Equal(_builder.ToString(), 'I want to search for something in this statement.');
        END_METHOD
    END_CLASS

END_NAMESPACE