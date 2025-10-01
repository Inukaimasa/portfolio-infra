# 10_deploy  �f�v���C�菇

## �O�����
- AWS CLI v2 �C���X�g�[���ς�
- `aws configure` �ς݁iregion �� `ap-northeast-1`�j
- `base_output.yaml` �����|�W�g�������ɂ��邱��

---

## 1. �\���`�F�b�N
```bash
aws cloudformation validate-template --template-body file://base_output.yaml


2. �f�v���C�i�쐬 or �X�V�j
aws cloudformation deploy \
  --stack-name net-dev \
  --template-file base_output.yaml \
  --no-fail-on-empty-changeset \
  --region ap-northeast-1

3. Export �m�F
aws cloudformation list-exports --output table

4. �폜

aws cloudformation delete-stack --stack-name net-dev
aws cloudformation wait stack-delete-complete --stack-name net-dev