# elm-show

[![Build Status](https://travis-ci.org/arowM/elm-show.svg?branch=master)](https://travis-ci.org/arowM/elm-show)

## Summary

A module that provides type-safe ways to convert primitive types to `String`.

```elm
> import Show
> Show.int 3
"3" : String
> Show.float Nothing 3.4
"3.4" : String
> Show.int 3.4
==================================== ERRORS ====================================

-- TYPE MISMATCH ---------------------------------------------

The argument to function `Show.int` is causing a mismatch.

4|   Show.int 3.4
              ^^^
Function `Show.int` is expecting the argument to be:

    Int

But it is:

    Float
```

## Details

See the [documentation](http://package.elm-lang.org/packages/arowM/elm-show/latest).
