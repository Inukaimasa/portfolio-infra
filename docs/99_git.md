# 99_git ? GitHub �^�p����

## �����ݒ�i1�񂾂��j
```bash
git init
git remote add origin git@github.com:Inukaimasa/portfolio-infra.git


�t�@�C���ǉ��E�X�V

git add .
git commit -m "add base_output.yaml and docs"
git push origin main

�u�����`�^�p

git checkout -b feature/add-ecs
git push origin feature/add-ecs


�悭�g���m�F�R�}���h

git status
git log --oneline --graph --decorate
git branch -a


# 0) �O�̂��ߌ��݈ʒu�ƃ����[�g/�u�����`�m�F
git status
git remote -v
git branch

# 1) �����[�g�̍ŐV����荞�ށi�����h�~�j
git pull origin main

# 2) �ύX�����ׂăX�e�[�W���O
git add -A

# 3) �R�~�b�g�i���b�Z�[�W�͂킩��₷���j
git commit -m "docs: add INDEX/DEPLOY/TROUBLESHOOT; scripts for deploy; add base_output.yaml; update README"

# 4) GitHub �֔��f
git push origin main