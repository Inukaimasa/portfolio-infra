## 何がある？
- `base.yaml` … 学習用の初期版
- `base_output.yaml` … Export 付きの最新版（実際に使う）

## 使い方
- デプロイ手順 → `docs/10_deploy.md`
- トラブルシュート → `docs/90_troubleshoot.md`

## このリポジトリでできること
- AWS CloudFormation を使って **最小限のVPC基盤** を自動構築できる
- Export/Import により、EC2/ECS/RDS など他スタックから再利用可能
- ポートフォリオとして「設計意図・セキュリティ配慮・コスト最適化」

---

## 構成要素
- VPC (`10.20.0.0/16`)
- Public Subnet ×2 (ap-northeast-1a/1c)
- Private Subnet ×2 (ap-northeast-1a/1c)
- Internet Gateway
- NAT Gateway (省コスト構成、1台のみ)
- Route Tables (Public/Private)
- S3 Gateway Endpoint

---

## 設計ポイント
- **コスト配慮** : NATは1台、S3はGateway Endpointで転送料を削減  
- **セキュリティ** : アプリ/DBはPrivateサブネットに配置、直接外部アクセス不可  
- **冗長性** : サブネットを2AZに分割して可用性を確保  
- **再利用性** : CloudFormationのOutputsをExportし、他スタックからImport可能  

---

## 今後の拡張予定
- ALB + EC2/ECS を追加してWebアプリ構成に拡張  
- RDS Multi-AZ の追加  
- Terraform 版での実装  

---

## 関連ページ
- [10_deploy.md](10_deploy.md) : 実際のデプロイ手順  
- [90_troubleshoot.md](90_troubleshoot.md) : よくあるエラーと対処法
