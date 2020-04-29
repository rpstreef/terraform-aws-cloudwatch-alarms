
# -----------------------------------------------------------------------------
# Variables: General
# -----------------------------------------------------------------------------

variable "namespace" {
  description = "AWS resource namespace/prefix"
}

variable "region" {
  description = "AWS region"
}

variable "resource_tag_name" {
  description = "Resource tag name for cost tracking"
}

# -----------------------------------------------------------------------------
# Variables: Lambda functions, required
# -----------------------------------------------------------------------------

variable "lambda_function_name" {
  description = "Lambda function name"
  type        = string
  default     = "empty"
}

variable "lambda_function_publish_alias" {
  description = "Lambda function publish alias, usually points to the current live (new) version"
  type        = string
  default     = "live"
}

# -----------------------------------------------------------------------------
# Variables:Lambda Cloudwatch Alarms errorRate
# -----------------------------------------------------------------------------

variable "create_errorRate_alarm" {
  description = "Creates the resource (true) or not (false)"
  type        = bool
  default     = true
}

variable "errorRate_threshold" {
  description = "The value against which the specified statistic is compared"
  default     = 0.01
}

variable "errorRate_evaluationPeriods" {
  description = "The number of periods over which data is compared to the specified threshold"
  default     = 5
}

# -----------------------------------------------------------------------------
# Variables: Lambda Cloudwatch Alarms throttleCount
# -----------------------------------------------------------------------------

variable "create_throttleCount_alarm" {
  description = "Creates the resource (true) or not (false)"
  type        = bool
  default     = true
}

variable "throttleCount_threshold" {
  description = "The value against which the specified statistic is compared"
  default     = 1
}

variable "throttleCount_evaluationPeriods" {
  description = "The number of periods over which data is compared to the specified threshold"
  default     = 1
}

# -----------------------------------------------------------------------------
# Variables: Lambda Cloudwatch Alarms iteratorAge
# -----------------------------------------------------------------------------

variable "create_iteratorAge_alarm" {
  description = "Creates the resource (true) or not (false)"
  type        = bool
  default     = true
}

variable "iteratorAge_threshold" {
  description = "The value against which the specified statistic is compared"
  default     = 60000
}

variable "iteratorAge_evaluationPeriods" {
  description = "The number of periods over which data is compared to the specified threshold"
  default     = 5
}

# -----------------------------------------------------------------------------
# Variables: Lambda Cloudwatch Alarms deadLetterQueue
# -----------------------------------------------------------------------------

variable "create_deadLetterQueue_alarm" {
  description = "Creates the resource (true) or not (false)"
  type        = bool
  default     = true
}

variable "deadLetterQueue_threshold" {
  description = "The value against which the specified statistic is compared"
  default     = 1
}

variable "deadLetterQueue_evaluationPeriods" {
  description = "The number of periods over which data is compared to the specified threshold"
  default     = 1
}

# -----------------------------------------------------------------------------
# Variables: Lambda Cloudwatch Alarms canary
# -----------------------------------------------------------------------------

variable "create_canary_alarm" {
  description = "Creates the resource (true) or not (false)"
  type        = bool
  default     = true
}

variable "canary_threshold" {
  description = "The value against which the specified statistic is compared"
  default     = 0
}

variable "canary_evaluationPeriods" {
  description = "The number of periods over which data is compared to the specified threshold"
  default     = 2
}

# -----------------------------------------------------------------------------
# Variables: API Gateway
# -----------------------------------------------------------------------------

variable "api_name" {
  description = "API Gateway Name"
  type        = string
  default     = null
}

variable "api_stage" {
  description = "API Gateway stage"
  type        = string
  default     = null
}

variable "resources" {
  description = "Methods that have Cloudwatch alarms enabled"
  type        = map
  default     = {}
}

variable "latency_threshold_p95" {
  description = "The value against which the specified statistic is compared"
  default     = 1000
}

variable "latency_threshold_p99" {
  description = "The value against which the specified statistic is compared"
  default     = 1000
}

variable "latency_evaluationPeriods" {
  description = "The number of periods over which data is compared to the specified threshold"
  default     = 5
}

variable "fourRate_threshold" {
  description = "Percentage of errors that will trigger an alert"
  default     = 0.02
  type        = number
}

variable "fourRate_evaluationPeriods" {
  description = "How many periods are evaluated before the alarm is triggered"
  default     = 5
  type        = number
}

variable "fiveRate_threshold" {
  description = "Percentage of errors that will trigger an alert"
  default     = 0.02
  type        = number
}

variable "fiveRate_evaluationPeriods" {
  description = "How many periods are evaluated before the alarm is triggered"
  default     = 5
  type        = number
}
