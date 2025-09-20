@echo off
where gradle >nul 2>nul
if %errorlevel%==0 (
  gradle %*
  exit /b %errorlevel%
)
echo No system Gradle found. On CI we install Gradle; on-device use AIDE or install Gradle manually.
exit /b 1
