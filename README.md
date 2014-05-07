Testing with mutant
===================

### From Railsconf 2014

Mutant is a mutation tester. It modifies your code and runs your tests to make sure they fail. The idea is that if code can be changed and your tests don't notice, either that code isn't being covered or it doesn't do anything.


### Run

```
  bundle install
  bundle exec rspec spec/planet_spec.rb
  bundle exec mutant --include lib --require universe --use rspec '::Universe::Planet'
```
