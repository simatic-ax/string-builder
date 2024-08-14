# @simatic-ax/string-builder

## Description

The package @simatic-ax/string-builder provides a StringBuilder class that implements a fluent interface. This allows users to chain string operations.

## Getting started

Install with Apax:

> If not yet done login to the GitHub registry first.
> More information you'll find [here](https://github.com/simatic-ax/.github/blob/main/docs/personalaccesstoken.md)

```cli
apax add @simatic-ax/string-builder
```
The package is an extension of the System.Strings namespace.
Add the namespace in your ST code:

```iec-st
USING System.Strings;
```

## Objects

### Interfaces

[IStringBuilder](./docs/IStringBuilder.md)<br/>
[IConstrainedStringBuilder](./docs/IConstrainedStringBuilder.md)<br/>


### Classes

[StringBuilder](./docs/StringBuilder.md)

### Methods

| Name       | Description                      |
| ----       | :--------------------------------------- |
| `Reset`    | Reset the current string to an empty string|
| `Append`   | Append the text to the current string and return it|
| `Insert`   | Insert the text at a specific location in the string and return it|
| `ToString` | Return the current string|

## Example

### Configuration

```st
CONFIGURATION MyConfiguration
    TASK Main(Interval := T#100ms, Priority := 1);
    PROGRAM P1 WITH Main: MyProgram;

    VAR_GLOBAL
        diagnosticMessage  : STRING;
    END_VAR
END_CONFIGURATION
```

### Program

```st
USING System.Strings
PROGRAM MyProgram
    VAR_EXTERNAL
        diagnosticMessage : STRING;
    END_VAR

    VAR
        _sb : StringBuilder;
    END_VAR

    diagnosticMessage := _sb.Append('build a string').Append(' by chaining methods').Insert('How to ',0).ToString();
    
END_PROGRAM
```

## Contribution

Thanks for your interest in contributing. Anybody is free to report bugs, unclear documentation, and other problems regarding this repository in the Issues section or, even better, is free to propose any changes to this repository using Merge Requests.

## Markdownlint-cli

This workspace will be checked by the [markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli) (there is also documented ho to install the tool) tool in the CI workflow automatically.
To avoid, that the CI workflow fails because of the markdown linter, you can check all markdown files locally by running the markdownlint with:

```sh
markdownlint **/*.md --fix
```

## License and Legal information

Please read the [Legal information](LICENSE.md)
