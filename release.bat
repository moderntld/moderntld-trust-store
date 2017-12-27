@echo off
set /p v="Enter Version (ex: 0.1.0): "
del latest-all.pem
del latest-root.pem
del latest-int.pem
for /r "authorities" %%F in (*.pem) do type "%%F" >>latest-all.pem
for /r "authorities/root" %%F in (*.pem) do type "%%F" >>latest-root.pem
for /r "authorities/intermediate" %%F in (*.pem) do type "%%F" >>latest-int.pem
if not exist "releases/%v%/" mkdir "releases/%v%/"
copy "latest-all.pem" "releases/%v%/all.pem"
copy "latest-root.pem" "releases/%v%/root.pem"
copy "latest-int.pem" "releases/%v%/int.pem"
pause
