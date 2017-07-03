Branchname=$(git rev-parse --abbrev-ref HEAD)
MasterBranche="master"
if [$Branchname=$MasterBranche];then
    curl http://localhost:8080/job/git_test/build
else
   echo "not commited"
fi
echo "Build triggerd succesfully on branch: $Branchname"