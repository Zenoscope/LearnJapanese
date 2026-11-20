echo "Type your commit comment:"
read comment
git add *
git commit -m "$comment"
git push -u -f origin main

pause
