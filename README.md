# Version From Shard

A macro to declare the VERSION constant from the value found in `shard.yml`, so you don't need to write the same version number in multiple places.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     version:
       github: hugopl/version_from_shard
   ```

2. Run `shards install`

## Usage


```crystal
require "version_from_shard"

module MyAwesomeApp
  VersionFromShard.declare
end

puts MyAwesomeApp::VERSION
```

## Development

Suggestions are welcome.

## Contributing

1. Fork it (<https://github.com/hugopl/version_from_shard/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Hugo Parente Lima](https://github.com/hugopl) - creator and maintainer
