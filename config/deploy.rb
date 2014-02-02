# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'news'
set :repo_url, 'git@github.com:tamouse/news.git'

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default deploy_to directory is /var/www/my_app
# set :deploy_to, '/var/www/my_app'
set :deploy_to, '/home/tamara/Sites/tamouse.org/news'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :linked_dirs, %w{bin log vendor/bundle public source/_posts}

# Default value for default_env is {}
set :default_env, { path: "$PATH:/home/tamara/.gem/ruby/2.0.0/bin" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

end
