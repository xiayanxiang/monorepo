set -e 
echo "开始发布流程"
npm version $1
git add .
git commit -m "更新发布版本号"
gitBranch=`git branch --show-current`
git push origin $gitBranch
pnpm publish --tag ${2:-latest} --no-git-checks
if [ $? -ne 0 ]; then
  echo "发布失败"
  exit 1
else
  echo "发布成功"
  exit 0
fi