$script_root = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
$swarm_root = Split-Path -Parent -Path $script_root
$website_root = Resolve-Path "$swarm_root/website"
$api_root = Resolve-Path "$swarm_root/api"
$database_root = Resolve-Path "$swarm_root/database"
$venv_activate = Resolve-Path "$swarm_root/venv/Scripts/activate.ps1"


Set-Location $api_root
Invoke-Expression "git pull"

Set-Location $website_root
Invoke-Expression "git pull"

Set-Location $database_root
Invoke-Expression "git pull"

Set-Location $swarm_root

Invoke-Expression $(Resolve-Path "venv/Scripts/activate.ps1")

Invoke-Expression "pip install -r database/requirements.txt"
Invoke-Expression "pip install -e database"
Invoke-Expression "pip install -r api/requirements.txt"
Invoke-Expression "pip install -e api"
Set-Location $website_root
npm install
Set-Location $swarm_root
