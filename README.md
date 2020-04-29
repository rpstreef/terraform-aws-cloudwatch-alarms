# CloudWatch Alarms module

## About:

This module supports CloudWatch Alarms for AWS Lambda and API Gateway services.

The following metrics are tracked for each.

Lambda Alarms supported for these metrics and can be individually enabled/disabled:
- __create_errorRate_alarm:__  Alarms on errors with a default of threshold of 1 percent during a 5 minute measurement period
- __create_throttleCount_alarm:__ Alarm on throttle count of 1 within 1 minute measurement period
- __create_iteratorAge_alarm:__ Alarm for Stream based invocations such as Kinesis, alerts you when the time to execute is over 1 minute within a 5 minute measurement period
  - More on the iteratorAge metric [here](https://aws.amazon.com/premiumsupport/knowledge-center/lambda-iterator-age/)
- __create_deadLetterQueue_alarm:__ Alarm for DLQueue messages (for async Lambda invocations or SQS queues for example), 1 message within 1 minute triggers the alarm.

API Gateway Alarms supported for these metrics:
- __latency P95:__ 95th percentile latency, which represents typical customer experienced latency figures. 
- __latency P99:__ 99th percentile latency, represents the worst case latency that customers experience.
- __400 Errors:__ HTTP 400 errors reported by the endpoint.
- __500 Errors:__ HTTP 500 internal server errors reported by the endpoint.

## How to use:

To create API Gateway alarms only, execute the module like this:

```terraform
module "cloudwatch_alarms_apigateway" {
  source = "github.com/rpstreef/terraform-aws-cloudwatch-alarms?ref=v1.0"

  namespace         = var.namespace
  region            = var.region
  resource_tag_name = var.resource_tag_name

  create_errorRate_alarm       = false
  create_throttleCount_alarm   = false
  create_canary_alarm          = false
  create_iteratorAge_alarm     = false
  create_deadLetterQueue_alarm = false

  api_name  = var.api_name
  api_stage = var.api_stage
  resources = = {
    "/identity/authenticate" = "POST",
    "/identity/register"     = "POST",
    "/identity/reset"        = "POST",
    "/identity/verify"       = "POST",
    "/user"                  = "GET"
  }
}
```

To create Lambda only CloudWatch alarms, use this for example:

```terraform
module "cloudwatch_alarms" {
  source = "github.com/rpstreef/terraform-aws-cloudwatch-alarms?ref=v1.0"

  namespace         = var.namespace
  region            = var.region
  resource_tag_name = var.resource_tag_name

  create_canary_alarm          = false
  create_iteratorAge_alarm     = false
  create_deadLetterQueue_alarm = false

  lambda_function_name = "${local.resource_name_prefix}-${local.lambda_function_name}"
}
```

## Changelog

### v1.0

Initial release