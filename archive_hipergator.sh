git config --global user.email "weecologydeploy@weecology.org"
git config --global user.name "Weecology Deploy Bot"

git checkout master
git add casts/* data/* models/*
git commit -m "trying to push"
git push master