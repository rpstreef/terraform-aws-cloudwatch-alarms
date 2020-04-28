
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
