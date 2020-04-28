output "canary_alarm_arn" {
  value = aws_cloudwatch_metric_alarm.canary.*.arn
}