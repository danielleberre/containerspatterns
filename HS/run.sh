#!/bin/bash

docker run --net=host      \
           -v /:/hostfs/   \
           --pid=host      \
           --uts=host      \
           --ipc=host      \
           -v $(pwd):/src/ \
           alpine sh -c ". /src/print_host_info.sh"