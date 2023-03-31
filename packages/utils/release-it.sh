set -e 
echo "开始版本更新&提交&tag"
release-it
echo "开始发布流程"
pnpm publish --tag ${1:-latest} --no-git-checks
if [ $? -ne 0 ]; then
  echo "发布失败"
  exit 1
else
  echo "发布成功"
  exit 0
fi