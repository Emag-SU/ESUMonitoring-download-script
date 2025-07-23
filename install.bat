@echo off

echo "Installing Emag SU Monitoring..."


set install_folder="C:\ESUMonitoring"
if exist "%install_folder%\" goto error_folder_already_exists

git clone https://github.com/gbertacchi/EmagSUmonitoring_GB.git   REM FINCHÉ NON VIENE TRASFERITA LA OWNERSHIP DELLA REPO

mkdir %install_folder%
move ESU_Monitoring %install_folder%
cd C:\%install_folder%\ESU_Monitoring

git checkout 2025-refactor   REM FINCHÉ NON VIENE TRASFERITA LA OWNERSHIP DELLA REPO

call setup.bat 1


echo "Emag SU Monitoring installed!"
pause


:check_exit
set _args=0
for %%x in (%*) do set /a _args+=1

if %_args% equ 0 goto delete
    
if %1%==1 goto exit
goto delete


:delete
(goto) 2>nul & del "%~f0"


:exit
exit /b


:error_folder_already_exists
echo "Error: ESUM is already installed in this system! If you're trying to update run the integrated update.bat"
pause
goto check_exit