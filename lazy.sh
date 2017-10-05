#!/bin/bash

#Remove stale images
if [ "$(which docker)" ]; then

  stale="$(docker rmi $(docker images -f "dangling=true" -q) 2>/dev/null)"

  if [ "${stale}" ]; then

    docker rmi ${stale}

  fi

  # Remove everything not linked to a container (running or not)
  for i in $(docker images | egrep "^<none>" | awk '{print $3}') ; do

    docker rmi $i

  done

fi

