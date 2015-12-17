# Update all images (super simple, supposing all images come from the official docker registry)
for i in $(docker images | tail -n +2 | awk '{print $1}' | egrep -v "^<none>" ) ; do docker pull $i ; done

# Remove everything not linked to a container (running or not)
for in $(docker images | egrep "^<none>" | awk '{print $3}' ) ; do docker rmi $i ; done
