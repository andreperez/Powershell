Get-Service 'ReportServer$SQLEXPRESS' | Where-Object {$_.Status -EQ "Running"} | stop-service -Force