# Portfolio Infrastructure (AWS VPC with CloudFormation)

このリポジトリは、AWS 上に構築したポートフォリオ用の VPC 基盤を CloudFormation でコード化したものです。  
最小限の VPC 構成を自動構築でき、今後の EC2/ECS/RDS スタックから再利用可能です。

---

## 構成内容

- VPC (`10.20.0.0/16`)
- Public Subnet ×2 (ap-northeast-1a/1c)
- Private Subnet ×2 (ap-northeast-1a/1c)
- Internet Gateway
- NAT Gateway (省コスト構成、1 台のみ)
- Route Tables (Public/Private)
- S3 Gateway Endpoint (Private からの S3 アクセスを NAT 経由せず実現)

- セキュリティ注意:
  デフォルトでは SSH (22/tcp) が 0.0.0.0/0 に開放されています。
  実際に利用する際は `AllowedSSHLocation` パラメータを自分のグローバル IP に絞ってください。

---

## 詳細ドキュメント

- 索引ページ: [docs/00_INDEX.md](docs/00_INDEX.md)
- デプロイ手順: [docs/10_deploy.md](docs/10_deploy.md)
- トラブルシュート: [docs/90_troubleshoot.md](docs/90_troubleshoot.md)
