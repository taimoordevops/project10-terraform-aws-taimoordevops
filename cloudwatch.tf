resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "HighCPU-Project10"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "Alarm triggers if CPU usage exceeds 80% for 10 minutes"
  actions_enabled     = false # no action yet, just visible in CloudWatch console

  dimensions = {
    InstanceId = aws_instance.example.id
  }
}
