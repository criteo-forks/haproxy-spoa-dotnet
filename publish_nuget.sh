# Usage: ./publish_nuget.sh <VERSION> <GIT_HUB_PAT_FILE_PATH>
# e.g. ./publish_nuget.sh 1.0.3-criteo ~/github_pat.txt
nuget_version=$1
github_pat=$(cat "$2")
nuget_package="./HAProxy.StreamProcessingOffload.Agent/bin/Release/HAProxy.StreamProcessingOffload.Agent.$nuget_version.nupkg"

dotnet clean
dotnet build -c Release
dotnet test
dotnet pack -c Release --version-suffix "criteo"
dotnet nuget push "$nuget_package" --api-key "$github_pat" --source "github"