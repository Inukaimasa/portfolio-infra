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




