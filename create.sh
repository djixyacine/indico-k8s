#!/usr/bin/env bash

# Deployment script for Indico on Openshift

echo "Creating a PostgreSQL DB instance..."
oc create -f openshift/postgresql.yml
echo -e "Done\n"

sleep 3

echo "Creating a Redis instance..."
oc create -f openshift/redis.yml
echo -e "Done\n"

sleep 3

echo "Registering Indico's configuration..."
oc create -f openshift/indico-config.yml
echo -e "Done\n"

sleep 3

echo "Creating the Celery worker..."
oc create -f openshift/indico-celery.yml
echo -e "Done\n"

sleep 3

echo "Creating the WebUI service..."
oc create -f openshift/indico-web.yml
echo -e "Done\n"

sleep 3

echo "Indico will soon be available at:"
oc get route indico -o=jsonpath='{.spec.host}'
