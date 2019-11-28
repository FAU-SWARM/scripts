param (
    [Parameter(Mandatory=$true)][string]$m
)

# $script_root = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
# $swarm_root = Split-Path -Parent -Path $script_root
$swarm_root = $PWD
$api_root = Resolve-Path "$swarm_root/api"
$database_root = Resolve-Path "$swarm_root/database"
$scripts_root = Resolve-Path "$swarm_root/scripts"
$website_root = Resolve-Path "$swarm_root/website"
Write-Output "$m"


Set-Location $api_root
git add -A
git commit -m "$m"
Write-Output "shit?"

Set-Location $website_root
git add -A
git commit -m "$m"
Write-Output "shit?"

Set-Location $database_root
git add -A
git commit -m "$m"
Write-Output "shit?"

Set-Location $scripts_root
git add -A
git commit -m "$m"
Write-Output "shit?"


Set-Location $swarm_root