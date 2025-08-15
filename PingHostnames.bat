@echo off
cls
echo This script pings a list of hostnames to check their reachability.
echo.

set hostnames=BIE2-L00200 BIE2-L00201 BIE2-L00202 BIE2-L00203 BIE2-L00204 BIE2-L00205 BIE2-L00206 BIE2-L00207 BIE2-L00208 BIE2-L00209 BIE2-L00210 BIE2-L00211 BIE2-L00212 BIE2-L00213

echo Pinging laptops...
for %%H in (%hostnames%) do (
    ping -n 1 %%H >nul
    if errorlevel 1 (
        echo %%H is NOT reachable.
    )
)
echo.
pause