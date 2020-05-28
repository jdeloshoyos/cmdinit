@echo off
ver

REM Chequeamos si hay privilegios administrativos para determinar el prompt que mostraremos
REM Obtenido de https://stackoverflow.com/a/11995662/878998

net session >nul 2>&1
if %errorLevel% == 0 (
	set promptChar=#
) else (
	set promptChar=$$
)

prompt $E[36m%username%@%computername% $E[92m$P$_$E[37m%promptChar%$S$E[0m

REM limpieza de variable de entorno
set promptChar=
