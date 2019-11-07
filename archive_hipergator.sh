git config --global user.email "dapperstats@gmail.com"
git config --global user.name "Juniper Simonis"

git checkout master
git add casts/* data/* models/*
git commit -m "stack_testing"

git remote add deploy https://${GITHUB_TOKEN}@github.com/weecology/pp_stack_test.git > /dev/null 2>&1

current_date=`date -I | head -c 10`
git tag $current_date

git push --quiet deploy master > /dev/null 2>&1
git push --quiet deploy --tags > /dev/null 2>&1