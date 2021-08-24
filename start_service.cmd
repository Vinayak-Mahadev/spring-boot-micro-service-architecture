@echo off
REM Prepisd by Vinayak-Mahadev (vinayakmahadev.nm@gmail.com)

echo Project path : %cd%
echo Building module [department-service] - please wait
echo --------------------------------------------------------------------------------------------------
start cmd.exe /c "cd %cd%/department-service && mvn clean install  && exit"
echo --------------------------------------------------------------------------------------------------
echo [department-service] is builded successfully
echo --------------------------------------------------------------------------------------------------
echo Building module [user-service] - please wait
echo --------------------------------------------------------------------------------------------------
start cmd.exe /c "cd %cd%/user-service && mvn clean install  && exit"
echo --------------------------------------------------------------------------------------------------
echo [user-service] is builded successfully
echo --------------------------------------------------------------------------------------------------
echo Building module [cloud-gateway] - please wait
echo --------------------------------------------------------------------------------------------------
start cmd.exe /c "cd %cd%/cloud-gateway && mvn clean install  && exit"
echo --------------------------------------------------------------------------------------------------
echo [cloud-gateway] is builded successfully
echo --------------------------------------------------------------------------------------------------
echo Building module [service-registry] - please wait
echo --------------------------------------------------------------------------------------------------
start cmd.exe /c "cd %cd%/service-registry && mvn clean install  && exit"
echo --------------------------------------------------------------------------------------------------
echo [service-registry] is builded successfully
echo --------------------------------------------------------------------------------------------------
pause
echo --------------------------------------------------------------------------------------------------
echo All build execution done successfully
echo --------------------------------------------------------------------------------------------------
pause

echo Starting department-service
start cmd.exe /c "java -Xms25M -Xmx50M -jar %cd%/department-service/target/department-service.jar"
pause

echo Starting user-service
start cmd.exe /c "java -Xms25M -Xmx50M -jar %cd%/user-service/target/user-service.jar"
pause

echo Starting cloud-gateway
start cmd.exe /c "java -Xms25M -Xmx50M -jar %cd%/cloud-gateway/target/cloud-gateway.jar"
pause

echo Starting service-registry
start cmd.exe /c "java -Xms25M -Xmx50M -jar %cd%/service-registry/target/service-registry.jar"
pause

cls
