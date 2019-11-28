Write-Output $PSScriptRoot

$script_root = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
$swarm_root = Split-Path -Parent -Path $script_root
$website_root = Resolve-Path "$swarm_root/website"
$api_root = Resolve-Path "$swarm_root/api"
$venv_activate = Resolve-Path "$swarm_root/venv/Scripts/activate.ps1"
Write-Output $website_root $api_root $venv_activate


Write-Output dev-api ; Start-Process powershell -ArgumentList "-noexit", "& $venv_activate ; python $(Resolve-Path "$api_root/main.py")"
Write-Output dev-website ; Start-Process powershell -ArgumentList "-noexit", "& $venv_activate ; cd $website_root ; npm run start"
