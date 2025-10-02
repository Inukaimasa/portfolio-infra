### 症状

- GitHub 上で日本語が文字化けして表示される
- 原因: 保存時に Shift_JIS や UTF-16 で保存されていた

#### PowerShell で一括変換（UTF-8）

````powershell
# docs フォルダ内で実行する
Get-ChildItem -Filter *.md | ForEach-Object {
  $content = Get-Content $_.FullName
  Set-Content -Path $_.FullName -Value $content -Encoding UTF8




An error occurred (AccessDenied) when calling the ValidateTemplate operation

- IAM ユーザーに権限不足
- 対策: `AdministratorAccess` または少なくとも `AWSCloudFormationFullAccess` を付与

---

## Template format error: unsupported structure
- YAML のインデントミスが原因
- `Export` は必ず `Value` の下に揃える
- VS Code で YAML Linter を利用すると良い

---

## UTF-8 / 文字コード問題


Error parsing parameter '--template-body'

- 保存時の文字コードが `UTF-8 (BOMなし)` でない
- 対策: VS Code → 「名前を付けて保存」 → エンコードで `UTF-8` を選択

---

## Export名の重複


Export with name Dev-VpcId is already exported

- 既存スタックとExport名が衝突している
- 対策:
  - `EnvironmentTag` を `Stg` などに変更
  - または古いスタックを削除

---

## cfn-lint での事前チェック
```bash
pip install cfn-lint
cfn-lint -t base_output.yaml --region ap-northeast-1

#テンプレート検証
aws cloudformation validate-template --template-body file://ec2.yaml

Get-Content ec2.yaml | Set-Content -Encoding utf8 ec2_fixed.yaml

#上記でうまくいかない場合 “今のエンコード”を確認

$bytes = Get-Content .\ec2_fixed.yaml -Encoding Byte -TotalCount 4
$bytes

#テキストで開いてutf-8にする。
#修正後
aws cloudformation validate-template --template-body file://ec2.yaml

````

#今あるスタックの一覧の確認
aws cloudformation list-stacks --stack-status-filter CREATE_COMPLETE UPDATE_COMPLETE


