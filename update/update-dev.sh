mkdir -p /opt/repos/swarm
cd /opt/repos/swarm


cd api
git pull

cd ../database
git pull

cd ../iot
git pull

cd ../scripts
git pull

cd ../website
git pull


source venv/bin/activate
python3 -m pip install -r scripts/requirements-dev.txt
python3 -m pip install -e database
python3 -m pip install -e api
python3 -m pip install -e iot

