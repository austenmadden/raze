# Raze
Ruby Gem to flatten nested collections into one dimensional representations.

https://rubygems.org/gems/raze

##Examples
```
test = {test1: ['test_string', :test_symbol], test2: {test_hash: ['test_string']}}

Raze.flatten(test)
=> [:test1, "test_string", :test_symbol, :test2, :test_hash, "test_string"]

```

You might be wondering how the flatten method above differs from flatten methods in [array](https://ruby-doc.org/core-2.2.0/Array.html#method-i-flatten) or [hash](https://ruby-doc.org/core-2.2.0/Hash.html#method-i-flatten) ruby core libraries. Unfortunately on their own the core methods won't flatten values/recurse through hashes. 

```
irb(main):010:0> a = {test1: ['test_string', :test_symbol], test2: {test_hash: ['test_string']}}
=> {:test1=>["test_string", :test_symbol], :test2=>{:test_hash=>["test_string"]}}
irb(main):011:0> a.flatten(30)
=> [:test1, "test_string", :test_symbol, :test2, {:test_hash=>["test_string"]}]

```
