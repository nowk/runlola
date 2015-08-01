# runlola

Run your Rocket app as a non-root.

*User is created at call. This should be a one time use only called from your 
main container's `entrypoint.sh`*


## Add as a dependency

    ...
    "dependencies":[
        {
            "imageName": "nowk/runlola",
            "labels": [
                {
                    "name": "version",
                    "value": "v1.0.0"
                },
                {
                    "name": "os",
                    "value": "linux"
                },
                {
                    "name": "arch",
                    "value": "amd64"
                }
            ]
        }
    ],
    ...


## Usage

In your `entrypoint.sh` or other init file.

    runlola --user=rubydev --shell=/bin/bash bundle install

Or if you are passing in the command from your `rkt run` command.

    runlola --user=rubydev --shell=/bin/bash "$*"

And your `rkt run` might look like:

    rkt run my/app -- ruby app.rb


### License

MIT
