# drone-coveralls

Drone.io plugin for pushing test coverage to Coveralls

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
