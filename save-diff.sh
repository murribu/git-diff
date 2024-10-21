git diff --output=diff.txt
git add .
git status | awk '/new file:/ {print $NF}' > new-files.txt
git status | awk '/renamed:/ {print $2 $3 $4}' > renamed-files.txt
git restore --staged .