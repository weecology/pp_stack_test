git config --global user.email "dapperstats@gmail.com"
git config --global user.name "Juniper Simonis"

git checkout master
git add casts/* 
git commit -m "trying to push"

git remote add deploy https://${GITHUB_TOKEN}@github.com/weecology/portalPredictions.git > /dev/null 2>&1
