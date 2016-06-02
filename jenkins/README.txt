Based on the official Jenkins:latest docker file (June 2016).

This is Jenkins dockerfile (and needed files) adding proxy functionality.

---

How to use:

# To build the image run the below. It will create the image my_proxy_jenkins.
# The --force-rm will remove all intermediate layers/images.
docker build --force-rm -t my_proxy_jenkins -f ./dockerfile .

Run using:

# It will create a container named jenkins1 *
docker run --name jenkins1 -u 0 -p 8080:8080 -p 50000:50000 my_proxy_jenkins

# in a browser type http://$host_you_run_the_above_command_successfully:8080

# Once running, populate the respective settings in "Manager Plugins" section.
# Further configuration for Maven may be needed - not tested extensively.

# * read https://hub.docker.com/_/jenkins/ for how to run Jenkins - official
# * read https://docs.docker.com/registry/ on how to use a registry
