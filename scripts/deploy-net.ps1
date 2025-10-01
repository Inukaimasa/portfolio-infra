aws cloudformation deploy `
  --stack-name net-dev `
  --template-file ..\base_output.yaml `
  --no-fail-on-empty-changeset `
  --region ap-northeast-1
