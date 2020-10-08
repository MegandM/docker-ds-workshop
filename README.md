# Dashboard

This examples shows how to run a pair of dashboards in docker.

Build with:
`docker-compose build`

Run with:
`docker-compose run`

Copy paste the dashboard url from the command line into your browser.

Stop with:
`docker-compose stop <container_id>`

# Volumes

The following volumes are shared between the host and container
- `data`: read only volume which contains input data 
