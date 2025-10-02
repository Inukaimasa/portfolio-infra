# 10_deploy  デプロイ手順

## 前提条件
- AWS CLI v2 インストール済み
- `aws configure` 済み（region は `ap-northeast-1`）
- `base_output.yaml` がリポジトリ直下にあること

---

## 1. 構文チェック
```bash
aws cloudformation validate-template --template-body file://base_output.yaml


2. デプロイ（作成 or 更新）
aws cloudformation deploy \
  --stack-name net-dev \
  --template-file base_output.yaml \
  --no-fail-on-empty-changeset \
  --region ap-northeast-1

3. Export 確認
aws cloudformation list-exports --output table

4. 削除

aws cloudformation delete-stack --stack-name net-dev
aws cloudformation wait stack-delete-complete --stack-name net-dev
