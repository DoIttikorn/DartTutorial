echo "message commit"
read comment

git add -A
git commit -m "$comment"
git push origin master