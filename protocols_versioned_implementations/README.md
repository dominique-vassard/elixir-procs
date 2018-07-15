# Protocols With versioned implementations

## Problem
Problems to solve are:
  - Understand protocol
  - Add mutiple versions of its implementation
  - Manage fallback to previous version

## Solution
` defimpl`s functions call a helper function which check if the implementation
exists for the requested version. If not, call function on the previous version.

All implementation are in specific modules named after the version they
implement.

### What's could be done better
Module functions use guards like `is_integer`, etc. It seems too much checks
if we consider the `defimpl Protocols.Info, for: Integer`.
It is possible to get rid of this?