# Sparta test app runbook

- [Sparta test app runbook]
- [Manual setting dependencies to run the app]
- [Manually running the app]
- [Setup the reverse proxy]
- [Automate deploy with Bash script]
  (#automate-deploy with Bash script)

<br>

# Manually setting dependencies to run the app

# Manually running the app

### What is a reverse proxy?

* A server which sits in front of one or more backend servers
* It intercepts client requests and redirects as needed (forwarding the request to the appropiate backend server)
* Return the response to the client as if the proxy server itself had fulfilled request

What is acting as the reverse proxy?
* Nginx

Main reason we are using it?
* User experience - URL rewritting so removes the need to put port 3000 in the URL
* Simplify autoscaling later

Some tipical Benefits:
* security
* protecting backend servers from direct attack
* load balancing
* caching
  * reduce load on backend service
  * improve response time to clients
* SSL encryption
  * offload this onto reverse proxy
  * frees up backend servers from this resource-intensive task
* centralised authentication

## Manual configuration of rev proxy

## Setup reverse proxy

# Automate deploy with Bash script

[Link to prov-app Bash script](scripts/prov-app.sh)
