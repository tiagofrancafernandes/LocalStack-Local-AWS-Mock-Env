## LocalStack

## Docs

### SNS
- https://docs.localstack.cloud/user-guide/aws/sns/
- [Subscribing to SNS topic and setting subscription attributes ](https://docs.localstack.cloud/user-guide/aws/sns/#subscribing-to-sns-topic-and-setting-subscription-attributes)
- [Response format and attributes](https://docs.localstack.cloud/user-guide/aws/sns/#response-format-and-attributes)

* *Criando um tópico*
```sh
awslocal sns create-topic --name local-sns-export-teste1
```

* *Cadastrando um endpoint para um topico*
```sh
awslocal sns subscribe \
   --topic-arn arn:aws:sns:us-east-1:000000000000:local-sns-export-teste1 \
   --protocol http \
   --notification-endpoint http://172.17.0.1:8003/webhooks/incoming
```
-----

### Links
- [localstack-cli](https://docs.localstack.cloud/getting-started/installation/#localstack-cli)
- https://docs.localstack.cloud/getting-started/
- https://github.com/localstack/awscli-local
- http://www2.decom.ufop.br/terralab/como-simular-a-aws-no-seu-computador-e-utilizar-o-servico-de-filas-sqs/
- https://dev.to/hebertrfreitas/localstack-um-mock-funcional-para-os-servicos-da-aws-1jkd
- https://localstack.cloud/products/cockpit/
- [cockpit temp link](https://api.localstack.cloud/download/cockpit/v0.2.1/LocalStack%20Cockpit-0.2.1.AppImage?token=af2eea31d1560217d3b12cc64fca57f4)
