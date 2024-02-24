# aws-dyndns

Docker container for the client side to the aws dyndns example

It works with the lambda from [This example](https://github.com/awslabs/route53-dynamic-dns-with-lambda?tab=readme-ov-file)

ENV vars:

| ENV Var | Description           |
| ------- | --------------------- |
| URL     | URL of the Lambda     |
| MODE    | Get or Set the HOST   |
| HOST    | Domain name to update |
| SECRET  | Pre Shared Secret     |
