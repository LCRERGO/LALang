# LALang
--------
This repository is made for the first 5 tasks of the discipline of compiler
construction that occured during the first semester of 2022 at UFSCar
(Universidade Federal de São Carlos) with professor Daniel Lucrédio.

## Objective
Create a lexer for the language LA that is made by the professors
Jander Moreira, Helena de Medeiros Caseli and Daniel Lucrédio, for the
discipline of Algorithm Construction and Programming.

## Dependencies
To build the project I found that old versions of antlr do not tranpile
correctly for the current go antlr runtime, so I sugest using the most recently
version of each dependency.
- GO (>= 1.18)
- Antlr4 (>= 4.10.1)
- GNU make

## Build
To build the executable simply run make.
```bash
make
```
After that an executable will be generated and put under the directory build.
With the name *EXECNAME*-*VERSION*, where EXECNAME is variable that can be set
during the build stage, e.g.:
```bash
EXECNAME=<exec_name> make
```

## How to Run
After the executable has been built simply run it over the command line passing
the name of the *input* and *output* files, e.g.:
```
./exec_name-version <input> <output>
```

## Information
Built by Lucas Cruz dos Reis (A.K.A. Dante Frostbyte), R.A.: 754757, in 2022.
