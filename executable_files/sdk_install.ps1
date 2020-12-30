#For install or upgrade chocolatey
# Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression
If(Test-Path -Path "$env:ProgramData\Chocolatey") {
    Write-Output "chocolatey is Installed"}
Else {
    Set-ExecutionPolicy Bypass -Scope Process -Force;
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
    .\ChocolateyInstallNonAdmin.ps1
    # Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))  
}
If(Test-Path -Path "$env:ProgramFiles\nodejs") {
    Write-Output "node is Installed"}
Else {
    # choco install nodejs.install -y
    cinst nodejs.install -y
    # cinst nodejs.install -y
}
# Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# npm install chocolatey -y
Write-Output "# `n=====================================Installing android-sdk-emulator=============================="
choco upgrade android-sdk -y
# Set-Location C:\Android\android-sdk\tools\bin
C:\Android\android-sdk\tools\bin\sdkmanager emulator
C:\Android\android-sdk\tools\bin\sdkmanager --list
C:\Android\android-sdk\tools\bin\sdkmanager "platforms;android-27"
C:\Android\android-sdk\tools\bin\sdkmanager "build-tools;27.0.3" 
C:\Android\android-sdk\tools\bin\sdkmanager "system-images;android-27;google_apis;x86"
C:\Android\android-sdk\tools\bin\avdmanager create avd -n test-powershell -k "system-images;android-27;google_apis;x86" -b x86 -c 100M -d 7 -f
Set-Location C:\Android\android-sdk\emulator
# cd C:\Android\android-sdk\emulator
Write-Output "#======================================== Bringing up the emulator====================================="
./emulator -avd test-powershell 


