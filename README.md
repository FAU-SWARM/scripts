# scripts
Scripts for the SWARM project like dev, stage, deploy

## Scripts
```bash
cd swarm-project-folder
# clone/update api, database, iot, scripts, website
```

- dev
    - setup env
    ```bash
    cd scripts
    python -m virtualenv venv
    ```

    - deploy env
    ```bash
    scripts/
    ```

## Deploying to Production
1. locally: build website
2. scp website to VM
3. move website onto /var/www/html
4. git clone api
    - https://medium.com/@manivannan_data/how-to-deploy-the-flask-app-as-ubuntu-service-399c0adf3606
    - https://serverfault.com/questions/821575/systemd-run-a-python-script-at-startup-virtualenv