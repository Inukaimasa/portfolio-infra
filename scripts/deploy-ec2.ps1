#AmazonSSMReadOnlyAccessアタッチの後


aws cloudformation deploy `
  --stack-name ec2-dev `
  --template-file .\ec2.yaml `
  --parameter-overrides EnvironmentTag=Dev `
  --capabilities CAPABILITY_IAM `
  --no-fail-on-empty-changeset

#確認方法　pathが表示されるが途中で日本語のフォルダをはさまない事。その部分が？？？？？になる。
aws cloudformation describe-stacks `
  --stack-name ec2-dev `
  --query "Stacks[0].Outputs" `
  --output table
#EC2 のステータス確認
aws ec2 describe-instances `
  --filters "Name=tag:Name,Values=Dev-ec2" `
  --query "Reservations[*].Instances[*].{ID:InstanceId,State:State.Name,IP:PublicIpAddress}" `
  --output table

ローカルのcliからEc2に接続
ssh -i "C:/Users/user/Desktop/aws/awskey.pem" ec2-user@<ElasticIp>

#インスタンスに紐づいている SG ID を取得：
aws ec2 describe-instances `
  --filters "Name=tag:Name,Values=Dev-ec2" `
  --query "Reservations[0].Instances[0].SecurityGroups" `
  --output table
# SG のルールを確認
aws ec2 describe-security-groups `
  --group-ids <SecurityGroupId> `
  --query "SecurityGroups[0].IpPermissions" `
  --output json
