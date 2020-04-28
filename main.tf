# -----------------------------------------------------------------------------
# Module: CloudWatch Alarms Lambda
# -----------------------------------------------------------------------------
module "lambda" {
  source = "./modules/lambda"

  namespace         = var.namespace
  region            = var.region
  resource_tag_name = var.resource_tag_name

  lambda_function_name          = var.lambda_function_name
  lambda_function_publish_alias = var.lambda_function_publish_alias

  create_errorRate_alarm      = var.create_errorRate_alarm
  errorRate_threshold         = var.errorRate_threshold
  errorRate_evaluationPeriods = var.errorRate_evaluationPeriods

  create_throttleCount_alarm      = var.create_throttleCount_alarm
  throttleCount_threshold         = var.throttleCount_threshold
  throttleCount_evaluationPeriods = var.throttleCount_evaluationPeriods

  create_iteratorAge_alarm      = var.create_iteratorAge_alarm
  iteratorAge_threshold         = var.iteratorAge_threshold
  iteratorAge_evaluationPeriods = var.iteratorAge_evaluationPeriods

  create_deadLetterQueue_alarm      = var.create_deadLetterQueue_alarm
  deadLetterQueue_threshold         = var.deadLetterQueue_threshold
  deadLetterQueue_evaluationPeriods = var.deadLetterQueue_evaluationPeriods

  create_canary_alarm      = var.create_canary_alarm
  canary_threshold         = var.canary_threshold
  canary_evaluationPeriods = var.canary_evaluationPeriods
}
