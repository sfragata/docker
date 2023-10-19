# nvm

## Usage

create a volume to keep node and npm versions
```
docker volume create nvm-data
```

use this volume when running a container

```
docker run -it --rm -v nvm-data:/home/nvmuser/.nvm -v ${PWD}:/home/nvmuser/code sfragata/nvm:latest /bin/bash
```
