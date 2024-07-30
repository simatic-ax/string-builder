# IConstrainedStringBuilder

The `IConstrainedStringBuilder` interface does not include the `Insert`method. It serves as the return type for the `Reset`methods, as inserting at a specific location after resetting the string is not viable.

## Methods

| Name       | Return type                 | Description                      |
| ----       | ---                         | :--------------------------------------- |
| `Reset`    | [`IConstrainedStringBuilder`](IConstrainedStringBuilder.md) | Reset the current string to an empty string|
| `Append`   | [`IStringBuilder`](IStringBuilder.md)          | Append the text to the current string and return it|
| `ToString` | `STRING`                    | Return the current string|
