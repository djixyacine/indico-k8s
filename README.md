# OpenShift deployment for Indico

This repository is a placeholder for Indico's OpenShift deployment YAMLs. 
It is mainly comprised of a PostgreSQL database, Redis, a Celery worker and 
a front end web interface.

## How to use

The deployment scripts assumes that you have an active session to an 
OpenShift cluster; and it uses the current project.

```bash
git clone https://github.com/djixyacine/indico-k8s
chmod +x create.sh
./create.sh
```

## Tweaking the settings

The credentials along with a few settings can be configured by editing 
the configMap in openshift/indico-config.yml.

The list of the current settings is the following:
  * **secretkey:** Indico's admin secret key.
  * **servicehost:** Indico's service hostname.
  * **serviceport:** Indico's service port.
  * **serviceprotocol:** Indico's service protocol.
  * **pguser:** PostgreSQL database username.
  * **pgdatabase:** PostgreSQL database name.
  * **pgpassword:** PostgreSQL database password.
  * **pghost:** PostgreSQL hostname.
  * **pgport:** PostgreSQL port.
