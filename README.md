# Compare Pod Versions

This script compares and sorts pod versions using the `cocoapods-core` package, it may be used to test [the precedence of the Semantic Versioning](https://semver.org/#spec-item-11) in CocoaPods.

## Usage

1. Run `bundle install` if the CocoaPods is not globally installed on your system
2. Edit `sort.rb`, fill versions being sorted
3. Run `./sort.rb` to see the sorted result

## Example Of Output

```console
versions: 1.2.0  1.2.0-alpha  1.2.0-1  1.2.0.100  1.2.0-100  1.2.1  1.2.0-RC  1.2.0.1  1.2.0-beta  1.2.0-beta.1
sorted versions: 1.2.0-RC < 1.2.0-alpha < 1.2.0-beta < 1.2.0-beta.1 < 1.2.0 < 1.2.0-1 < 1.2.0.1 < 1.2.0-100 < 1.2.0.100 < 1.2.1
```
