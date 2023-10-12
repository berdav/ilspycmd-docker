# ilspycmd-docker
🕵️🐳

Docker images to run ilspycmd and decompile .NET applications on Linux

.NET applications on Linux are difficult to decompile.  ilspycmd can be used
to decompile them but it requires a specific version of .NET.

With this Docker image you can easily run ilspycmd just installing it from Docker

## Usage

### Pull the image from the docker hub
This image is pushed to the official docker hub.

You can install it using
```bash
sudo docker pull berdav/ilspycmd
```

Or directly run it using
```bash
sudo docker run -v .:/docker --rm -ti berdav/ilspycmd
```

### Build the image
Alternatively you can build the image from this repository

To build the image simply use the provided script:
```bash
sudo ./setup.sh
```

### Decompile a library

To decompile the library place it inside this directory

```bash
cp /home/test/target.dll .
```

Then you can execute the `run.sh` script as root
```bash
sudo ./run.sh
```

After that you can decompile the dll or the exe from the `/docker` directory
```bash
ilspy@ilspycmd$ cd /docker
ilspy@ilspycmd:/docker$ ilspycmd -p -o target target.dll
```

Then you will find the extracted data inside `target` directory.
