@echo off
REM Prepisd by Vinayak-Mahadev (vinayakmahadev.nm@gmail.com)

echo Project path : %cd%
echo Building module [department-service] - please wait
echo --------------------------------------------------------------------------------------------------
start cmd.exe /c "cd %cd%/department-service && mvn clean install  && exit"
echo --------------------------------------------------------------------------------------------------
echo [department-service] is builded successfully
pause


echo --------------------------------------------------------------------------------------------------
echo Building module [user-service] - please wait
echo --------------------------------------------------------------------------------------------------
start cmd.exe /c "cd %cd%/user-service && mvn clean install  && exit"
echo --------------------------------------------------------------------------------------------------
echo [user-service] is builded successfully
pause


echo --------------------------------------------------------------------------------------------------
echo Building module [cloud-gateway] - please wait
echo --------------------------------------------------------------------------------------------------
start cmd.exe /c "cd %cd%/cloud-gateway && mvn clean install  && exit"
echo --------------------------------------------------------------------------------------------------
echo [cloud-gateway] is builded successfully
pause


echo --------------------------------------------------------------------------------------------------
echo Building module [hystrix-dashboard] - please wait
echo --------------------------------------------------------------------------------------------------
start cmd.exe /c "cd %cd%/hystrix-dashboard && mvn clean install  && exit"
echo --------------------------------------------------------------------------------------------------
echo [hystrix-dashboard] is builded successfully
pause


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


echo --------------------------------------------------------------------------------------------------
echo Starting department-service
start cmd.exe /c "java -Xms25M -Xmx50M -jar %cd%/department-service/target/department-service.jar"
echo --------------------------------------------------------------------------------------------------
pause

echo Starting user-service
start cmd.exe /c "java -Xms25M -Xmx50M -jar %cd%/user-service/target/user-service.jar"
echo --------------------------------------------------------------------------------------------------
pause

echo Starting cloud-gateway
start cmd.exe /c "java -Xms25M -Xmx50M -jar %cd%/cloud-gateway/target/cloud-gateway.jar"
echo --------------------------------------------------------------------------------------------------
pause

echo Starting service-registry
start cmd.exe /c "java -Xms25M -Xmx50M -jar %cd%/service-registry/target/service-registry.jar"
echo --------------------------------------------------------------------------------------------------
pause

echo Starting hystrix-dashboard
start cmd.exe /c "java -Xms25M -Xmx50M -jar %cd%/hystrix-dashboard/target/hystrix-dashboard.jar"
echo --------------------------------------------------------------------------------------------------
pause


cls
