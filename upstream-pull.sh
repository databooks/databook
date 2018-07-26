echo ""
echo "从上游仓库更新，合并到本地库，然后推送到本地库的远程Github存储系统。"
echo "Update from upstream, Merge into my repository, and push to github repository storage."
echo ""

git fetch upstream
git merge upstream/master
git push

echo "Finished."
echo ""
