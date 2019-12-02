# $script_root = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
# $swarm_root = Split-Path -Parent -Path $script_root
$swarm_root = $PWD
$api_root = Resolve-Path "$swarm_root/api"
$database_root = Resolve-Path "$swarm_root/database"
$iot_root = Resolve-Path "$swarm_root/iot"
$scripts_root = Resolve-Path "$swarm_root/scripts"
$website_root = Resolve-Path "$swarm_root/website"
Write-Output "$m"


Set-Location $api_root
git diff

Set-Location $database_root
git diff

Set-Location $iot_root
git diff

Set-Location $scripts_root
git diff

Set-Location $website_root
git diff


Set-Location $swarm_root
