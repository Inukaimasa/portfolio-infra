# 99_git ? GitHub 運用メモ

## 初期設定（1回だけ）
```bash
git init
git remote add origin git@github.com:Inukaimasa/portfolio-infra.git


ファイル追加・更新

git add .
git commit -m "add base_output.yaml and docs"
git push origin main

ブランチ運用

git checkout -b feature/add-ecs
git push origin feature/add-ecs


よく使う確認コマンド

git status
git log --oneline --graph --decorate
git branch -a


# 0) 念のため現在位置とリモート/ブランチ確認
git status
git remote -v
git branch

# 1) リモートの最新を取り込む（競合防止）
git pull origin main

# 2) 変更をすべてステージング
git add -A

# 3) コミット（メッセージはわかりやすく）
git commit -m "docs: add INDEX/DEPLOY/TROUBLESHOOT; scripts for deploy; add base_output.yaml; update README"

# 4) GitHub へ反映
git push origin main
