# Portfolio Infrastructure (AWS VPC with CloudFormation)

このリポジトリは、AWS上に構築したポートフォリオ用のVPC基盤をCloudFormationでコード化したものです。  
最小限のVPC構成を自動構築でき、今後のEC2/ECS/RDSスタックから再利用可能です。

---

## 構成内容
- VPC (`10.20.0.0/16`)
- Public Subnet ×2 (ap-northeast-1a/1c)
- Private Subnet ×2 (ap-northeast-1a/1c)
- Internet Gateway
- NAT Gateway (省コスト構成、1台のみ)
- Route Tables (Public/Private)
- S3 Gateway Endpoint (PrivateからのS3アクセスをNAT経由せず実現)

---

## 詳細ドキュメント
- 索引ページ: [docs/00_INDEX.md](docs/00_INDEX.md)  
- デプロイ手順: [docs/10_deploy.md](docs/10_deploy.md)  
- トラブルシュート: [docs/90_troubleshoot.md](docs/90_troubleshoot.md)  

