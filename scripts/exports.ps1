aws cloudformation list-exports `
  --query "Exports[?starts_with(Name, 'Dev-')].[Name,Value]" `
  --output table
