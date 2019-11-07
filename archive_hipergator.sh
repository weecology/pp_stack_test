git config --global user.email "dapperstats@gmail.com"
git config --global user.name "Juniper Simonis"

git checkout master
git add casts/* 
git commit -m "trying to push"

git remote add deploy master
git push deploy master