git config --global user.email "weecologydeploy@weecology.org"
git config --global user.name "Weecology Deploy Bot"

git checkout master
git add casts/* data/* models/*
git commit -m "trying to push"
git remote add deploy https://${GITHUB_TOKEN}@github.com/weecology/portalPredictions.git > /dev/null 2>&1
git push --quiet deploy master > /dev/null 2>&1