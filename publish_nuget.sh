dotnet clean
dotnet build -c Release
dotnet test
dotnet pack -c Release --version-suffix "criteo"
echo "Please upload manually the contents of the folder /HAProxy.StreamProcessingOffload.Agent/bin/Release/ as a Package to https://github.com/criteo-forks/haproxy-spoa-dotnetecho "
