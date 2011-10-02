source 'https://rubygems.org'

gem 'yard', :group => [:development, :runtime]

group(:development) do
  gem 'rake'
  gem 'jeweler'
  gem 'gemcutter'
end

group(:doc) do
  case RUBY_PLATFORM
  when 'java'
    gem 'maruku'
  else
    gem 'rdiscount'
  end
end

gem 'rspec', :group => [:development, :test]


