rem Enforce C++17
cp %RECIPE_DIR%/configure.win .
IF %ERRORLEVEL% NEQ 0 exit 1
sed -i s/std=c++14/std=c++17/g %R_MAKEVARS_SITE%
IF %ERRORLEVEL% NEQ 0 exit 1
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
