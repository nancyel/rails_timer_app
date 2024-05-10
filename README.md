# README

![timer.png](/public/rails-ollama-timer.gif)

A simple Ruby on Rails application to show a timer. I have started my coding journey with Ruby on Rails in 2019, but I have not worked on it for a long time. With more experience now, I come back to Ruby, as a beginner again, to see what it is from a different standpoint. What has changed? What remains the same?

- Ruby version

```
└─> ruby -v
ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-darwin23]
```

- To install the current Ruby version

```
rbenv install 3.1.2
rbenv global 3.1.2

copy/paste this line to ~/.zshrc or ~/.bashrc and restart: eval "$(rbenv init - zsh)"
```

- System dependencies

```
└─> rails -v
Rails 7.1.3.2
```

- Configuration

```
└─> bundle install
```

- Apply Styling (TailwindCSS)

```
# Add to Gemfile
gem 'cssbundling-rails'
```

```
└─> bundle install
```

```
└─> rails css:install:tailwind
```

- Run the server

```
./bin/dev -p 3001
```
