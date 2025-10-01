## ��������H
- `base.yaml` �c �w�K�p�̏�����
- `base_output.yaml` �c Export �t���̍ŐV�Łi���ۂɎg���j

## �g����
- �f�v���C�菇 �� `docs/10_deploy.md`
- �g���u���V���[�g �� `docs/90_troubleshoot.md`

## ���̃��|�W�g���łł��邱��
- AWS CloudFormation ���g���� **�ŏ�����VPC���** �������\�z�ł���
- Export/Import �ɂ��AEC2/ECS/RDS �ȂǑ��X�^�b�N����ė��p�\
- �|�[�g�t�H���I�Ƃ��āu�݌v�Ӑ}�E�Z�L�����e�B�z���E�R�X�g�œK���v

---

## �\���v�f
- VPC (`10.20.0.0/16`)
- Public Subnet �~2 (ap-northeast-1a/1c)
- Private Subnet �~2 (ap-northeast-1a/1c)
- Internet Gateway
- NAT Gateway (�ȃR�X�g�\���A1��̂�)
- Route Tables (Public/Private)
- S3 Gateway Endpoint

---

## �݌v�|�C���g
- **�R�X�g�z��** : NAT��1��AS3��Gateway Endpoint�œ]�������팸  
- **�Z�L�����e�B** : �A�v��/DB��Private�T�u�l�b�g�ɔz�u�A���ڊO���A�N�Z�X�s��  
- **�璷��** : �T�u�l�b�g��2AZ�ɕ������ĉp�����m��  
- **�ė��p��** : CloudFormation��Outputs��Export���A���X�^�b�N����Import�\  

---

## ����̊g���\��
- ALB + EC2/ECS ��ǉ�����Web�A�v���\���Ɋg��  
- RDS Multi-AZ �̒ǉ�  
- Terraform �łł̎���  

---

## �֘A�y�[�W
- [10_deploy.md](10_deploy.md) : ���ۂ̃f�v���C�菇  
- [90_troubleshoot.md](90_troubleshoot.md) : �悭����G���[�ƑΏ��@
