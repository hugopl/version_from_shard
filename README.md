# Version

A macro to declare the VERSION constant from the value found in `shard.yml`, so you don't need to write the same version number in multiple places.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     version:
       github: hugopl/version.cr
   ```

2. Run `shards install`

## Usage


```crystal
require "version"

module MyAwesomeApp
  Version.declare
end

puts MyAwesomeApp::VERSION
```

## Development

Suggestions are welcome.

## Contributing

1. Fork it (<https://github.com/hugopl/version/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Hugo Parente Lima](https://github.com/hugopl) - creator and maintainer
