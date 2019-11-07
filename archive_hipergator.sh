git config --global user.email "dapperstats@gmail.com"
git config --global user.name "Juniper Simonis"

git checkout master
git add casts/* 
git commit -m "trying to push"

git remote add deploy https://juniperlsimonis@github.com/weecology/pp_stack_test.git > /dev/null 2>&1
git push --quiet deploy master > /dev/null 2>&1