= Name

`docker-env` - Manage docker for mac qcow images

= SYNOPSIS

``` sh
  docker-env [global options] command [command options] [arguments...]
```

= VERSION
    3.0.0

= GLOBAL OPTIONS

    --help             - Show this message
    -v, --[no-]verbose - be more verbose
    --version          - Display the program version

= COMMANDS

    current  - Show current image
    help     - Shows a list of commands or help for one command
    init     - setup by moving Docker.qcow2 to "image_name" and linking back
    list, ls - list available qcow images (.../Docker.qcow2.{name})
    new      - create new qcow image
    rm       - Delete "image"
    use      - Link to "image""

= NOTES ON `new`

`new` removes the current link so that the next time docker starts, it will
create a new empty image file. The (slightly long) steps to follow:

   1. Stop Docker.app
   2. Run this command (`docker-env new`)
   3. Restart Docker.app
   4. Stop Docker.app
   5. Run `docker-env init {name}` to name the new image and create the symlink

= NOTES ON 3.0.0

3.0.0 remove support for qcow images and uses the latest docker directory layout, 
the image (`Docker.raw`) is now in `~/Library/COntainers/com.docker.docker/Data/vms/0/data` instead of `~/Library/COntainers/com.docker.docker/Data/com.docker.driver.amd64-linux`.
