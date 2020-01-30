# -Force obriga a finalizar mesmo quando o serviço é dependente de outro
Get-Service 'SQLBrowser' | stop-service -Force