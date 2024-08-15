# StringBuilder

The StringBuilder class implements both the `IConstrainedStringBuilder` and the `IStringBuilder` interface.

## Methods

| Name       | Return type                 | Description                      |
| ----       | ---                         | :--------------------------------------- |
| `Reset`    | [`IConstrainedStringBuilder`](IConstrainedStringBuilder.md) | Reset the current string to an empty string|
| `Append`   | [`IStringBuilder`](IStringBuilder.md)          | Append the text to the current string and return it|
| `Insert`   | [`IStringBuilder`](IStringBuilder.md)            | Insert the text at a specific location in the string and return it|
| `Remove`   | [`IStringBuilder`](IStringBuilder.md)            | Remove characters from the string and return it|
| `Substring`| [`IStringBuilder`](IStringBuilder.md)            | Retrieve a specific part of the string and return it|
| `StartOf`  | [`IStringBuilder`](IStringBuilder.md)            | Retrieve the start of a string and return it|
| `EndOf`    | [`IStringBuilder`](IStringBuilder.md)            | Retrieve the end of a string and return it|
| `Replace`  | [`IStringBuilder`](IStringBuilder.md)            | Replace characters in a string and return it|
| `ToString` | `STRING`                    | Return the current string|