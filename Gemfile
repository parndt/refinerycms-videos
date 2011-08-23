source "http://rubygems.org"

gemspec

gem 'refinerycms', :path => "~/Code/refinerycms"

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'jquery-rails'

group :development, :test do  
  require 'rbconfig'
  
  platforms :mswin, :mingw do
    gem 'win32console'
    gem 'rb-fchange', '~> 0.0.5'
    gem 'rb-notifu', '~> 0.0.4'
  end

  platforms :ruby do
    gem 'spork', '0.9.0.rc9'
    gem 'guard-spork'
    
    if Config::CONFIG['target_os'] =~ /darwin/i
      gem 'rb-fsevent', '>= 0.3.9'
      gem 'growl',      '~> 1.0.3'
    end
    if Config::CONFIG['target_os'] =~ /linux/i
      gem 'rb-inotify', '>= 0.5.1'
      gem 'libnotify',  '~> 0.1.3'
    end
  end

  platforms :jruby do
    if Config::CONFIG['target_os'] =~ /darwin/i
      gem 'growl',      '~> 1.0.3'
    end
    if Config::CONFIG['target_os'] =~ /linux/i
      gem 'rb-inotify', '>= 0.5.1'
      gem 'libnotify',  '~> 0.1.3'
    end
  end
end
