An error occurred (AccessDenied) when calling the ValidateTemplate operation

- IAM ���[�U�[�Ɍ����s��
- �΍�: `AdministratorAccess` �܂��͏��Ȃ��Ƃ� `AWSCloudFormationFullAccess` ��t�^

---

## Template format error: unsupported structure
- YAML �̃C���f���g�~�X������
- `Export` �͕K�� `Value` �̉��ɑ�����
- VS Code �� YAML Linter �𗘗p����Ɨǂ�

---

## UTF-8 / �����R�[�h���


Error parsing parameter '--template-body'

- �ۑ����̕����R�[�h�� `UTF-8 (BOM�Ȃ�)` �łȂ�
- �΍�: VS Code �� �u���O��t���ĕۑ��v �� �G���R�[�h�� `UTF-8` ��I��

---

## Export���̏d��


Export with name Dev-VpcId is already exported

- �����X�^�b�N��Export�����Փ˂��Ă���
- �΍�:
  - `EnvironmentTag` �� `Stg` �ȂǂɕύX
  - �܂��͌Â��X�^�b�N���폜

---

## cfn-lint �ł̎��O�`�F�b�N
```bash
pip install cfn-lint
cfn-lint -t base_output.yaml --region ap-northeast-1




