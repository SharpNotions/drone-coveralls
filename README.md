# drone-coveralls

Drone.io plugin for pushing test coverage to Coveralls

_note this was just for testing how to create a plug-in for Drone.io while it should work it is more a proof of concept for us more than anything_ 

## Configuration

The following parameters are used to configure the plugin:
- `files`: list of target files to push to coveralls

You can optionally also set the coveralls repo token for private repos as a environment variable.
- `COVERALLS_REPO_TOKEN`: set the private repository token.

### Drone configuration examples

Simple example:
```yaml
...
  coveralls:
    image: sharpnotions/drone-coveralls
    files: 
      - ./coverage/lcov.info
    environment:
      - COVERALLS_REPO_TOKEN=$${COVERALLS_TOKEN}
    secrets: [ coveralls_token ]
...
```
