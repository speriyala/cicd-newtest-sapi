dir="git@github.com:speriyala/cicd-newtest-sapi.git";
if [ ! -d "$dir" ] 
then
  echo -e "No Version Control History Found. Initializing the Current Directory \n";
git init;
flag=1;
else
  echo -e "\nVersion control history found. \n";
fi
echo -e "\nAdding Files to Push\n";
git add .;
echo -e "\nPrinting Git Status \n";
git status;
echo -e "\nCan I confirm the push boss (y/n) ?";
read user_input;
git commit -m "workflow-gitsteps-automate";
git push origin develop;
echo;