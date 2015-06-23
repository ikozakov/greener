greens
===

[![Circle CI](https://circleci.com/gh/smoll/greens.svg?style=svg)](https://circleci.com/gh/smoll/greens)

Simple Gherkin .feature file linter

**NOTE: This project is still under early-stage development**


## Contributing

Install dev dependencies locally

```
bundle install
```

Run tests

```
bundle exec rake test
```


## Testing

To test the `greens` binary locally, `cd` to the repo root and run

```
ruby -Ilib ./bin/greens help
```


## References

#### CLI related

0. http://guides.rubygems.org/make-your-own-gem/
0. http://whatisthor.com/
0. https://github.com/erikhuda/thor/wiki/Integrating-with-Aruba-In-Process-Runs

#### Lint related

0. https://github.com/bbatsov/rubocop/tree/master/lib/rubocop
