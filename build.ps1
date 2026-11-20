# Build and Deploy script for Medical_SCM
# This script compiles all Java source files and deploys to Tomcat 9

$projectRoot = "d:\hospital"
$srcDir = "$projectRoot\src\main\java"
$webappSrc = "$projectRoot\src\main\webapp"
$libDir = "$webappSrc\WEB-INF\lib"
$tomcatRoot = "$projectRoot\apache-tomcat-9.0.83"
$deploymentDir = "$tomcatRoot\webapps\Medical_SCM"

# 1. Prepare Classes directory
$classesDir = "$webappSrc\WEB-INF\classes"
if (!(Test-Path $classesDir)) { New-Item -ItemType Directory -Path $classesDir -Force }

# 2. Build Classpath
Write-Host "Building Classpath..." -ForegroundColor Cyan
$jars = Get-ChildItem -Path "$libDir\*.jar" | ForEach-Object { $_.FullName }
# Add Tomcat libraries
$jars += "$tomcatRoot\lib\servlet-api.jar"
$jars += "$tomcatRoot\lib\jsp-api.jar"
$classpath = $jars -join ";"

# 3. Compile Java files
Write-Host "Compiling Java source files..." -ForegroundColor Cyan
$javaFiles = Get-ChildItem -Path $srcDir -Filter *.java -Recurse | Where-Object { $_.Name -ne "MedicalScmApplication.java" } | ForEach-Object { $_.FullName }
& javac -cp "$classpath" -d $classesDir $javaFiles

if ($LASTEXITCODE -ne 0) {
    Write-Host "Compilation failed!" -ForegroundColor Red
    exit 1
}
Write-Host "Compilation successful!" -ForegroundColor Green

# 4. Deploy to Tomcat 9
Write-Host "Deploying to Tomcat 9..." -ForegroundColor Cyan
if (Test-Path $deploymentDir) { Remove-Item -Path $deploymentDir -Recurse -Force }
New-Item -ItemType Directory -Path $deploymentDir -Force

# Copy all web content (including WEB-INF/classes and WEB-INF/lib)
Copy-Item -Path "$webappSrc\*" -Destination $deploymentDir -Recurse -Force

# 5. Create runtime directories in deployment
$runtimeDirs = @("QrCode", "temp", "Blocks", "Certificate", "EncryptedQrCode", "HospitalQrCode", "PatientQrCode", "EncryptedHospitaltQrCode", "EncryptedPatientQrCode")
foreach ($dir in $runtimeDirs) {
    if (-not (Test-Path "$deploymentDir\$dir")) {
        New-Item -ItemType Directory -Path "$deploymentDir\$dir" -Force
    }
}

Write-Host "Build and Deployment Successful!" -ForegroundColor Green
Write-Host "You can now run the application using: $tomcatRoot\bin\startup.bat" -ForegroundColor Yellow
