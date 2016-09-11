# Raze
Ruby Gem to flatten nested collections into one dimensional representations.

https://rubygems.org/gems/raze

##Examples
```
test = {test1: ['test_string', :test_symbol], test2: {test_hash: ['test_string']}}

Raze.flatten(test)
=> [:test1, "test_string", :test_symbol, :test2, :test_hash, "test_string"]

```
