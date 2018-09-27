Trace-VstsEnteringInvocation $MyInvocation

$IntegrationKey= Get-VstsInput -Name "IntegrationKey"
$Description= Get-VstsInput -Name "Description"
$DetailsVSTS = Get-VstsInput -name "Details"


################## Initialize Azure. #################
#Import-Module $PSScriptRoot\ps_modules\VstsAzureHelpers_
#Initialize-Azure

# Pass to Pager Duty
$uri = "https://events.pagerduty.com/generic/2010-04-15/create_event.json"
$event_type = 'trigger'
$Details = @{
    release = $ENV:RELEASE_DEFINITIONNAME
    description = $DetailsVSTS
 } | convertto-Json

$Body = @{
    service_key = $IntegrationKey
    event_type = $event_type
    description = $Description
    client = $client
    details = $Details
} | convertto-Json

$PagerDutyResponse = Invoke-RestMethod -Method Post -Uri $uri -body $body -UseBasicParsing -ContentType "application/json"

write-host $PagerDutyResponse

Trace-VstsLeavingInvocation $MyInvocation
