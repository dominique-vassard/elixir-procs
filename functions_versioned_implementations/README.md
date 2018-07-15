# Function With versioned implementations

## Problem
Problems to solve are:
  - Add mutiple versions of a function
  - Manage fallback to previous version

## Solution
Just have a entrypoint-like function which will dispatch calls to the right
version.

All implementation are in specific modules named after the version they
implement.

### What's could be done better
Module functions use guards like `is_integer`, etc. It seems too much checks
if we consider the guard of the entry function.
It is possible to get rid of this?