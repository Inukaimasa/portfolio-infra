# Portfolio Infrastructure (AWS VPC with CloudFormation)

このリポジトリは、AWS上に構築したポートフォリオ用のVPC基盤をCloudFormationでコード化したものです。

## 構成内容
- VPC (`10.20.0.0/16`)
- Public Subnet ×2 (ap-northeast-1a/1c)
- Private Subnet ×2 (ap-northeast-1a/1c)
- Internet Gateway
- NAT Gateway (省コスト構成、1台のみ)
- Route Tables (Public/Private)
- S3 Gateway Endpoint (PrivateからのS3アクセスをNAT経由せず実現)

## 設計ポイント
- **コスト配慮** : NATは1台、S3はGateway Endpointで転送料を削減
- **セキュリティ** : アプリ/DBはPrivateサブネット、直接外部アクセス不可
- **冗長性** : サブネットを2AZに分割して可用性を確保

## 今後の拡張予定
- ALB + EC2/ECS を追加してWebアプリ構成に拡張
- RDS Multi-AZ の追加
- Terraform 版での実装
