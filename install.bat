@echo off

echo "Installing Emag SU Monitoring..."


set install_folder=C:\ESUMonitoring
if exist "%install_folder%\" goto error_folder_already_exists

git clone --depth 1 https://@github.com/Emag-SU/EmagSU_Monitoring.git


mkdir %install_folder%
move EmagSU_Monitoring %install_folder%
cd %install_folder%\EmagSU_Monitoring



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