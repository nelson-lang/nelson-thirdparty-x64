@echo off
setlocal

set GRAMMAR_DIR=%~dp0..\..\NelSon\modules\interpreter\src\grammar
set OUTPUT_DIR=%~dp0..\..\NelSon\modules\interpreter\src\grammar

rem regenerate_nelson_parser_sources: regenerate committed parser and lexer sources
win_flex -o "%GRAMMAR_DIR%\NelsonLexer.cpp" "%GRAMMAR_DIR%\NelsonLexer.lxx"
if %ERRORLEVEL% neq 0 exit /b %ERRORLEVEL%

rem generate_nelson_cpp_parser_sources: generate Bison lalr1.cc Nelson parser sources
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"
win_bison --skeleton=lalr1.cc --defines="%OUTPUT_DIR%\NelSonParserCpp.hpp" -o "%OUTPUT_DIR%\NelSonParserCpp.cpp" "%GRAMMAR_DIR%\NelSonParserCpp.yxx"
if %ERRORLEVEL% neq 0 exit /b %ERRORLEVEL%

endlocal
