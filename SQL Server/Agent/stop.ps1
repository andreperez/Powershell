# -Force obriga a finalizar mesmo quando o serviço é dependente de outro
Get-Service 'SQLAgent$SQLSERVER' | stop-service -Force