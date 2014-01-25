lock '3.1.0'

set :application, 'news'
set :repo_url, 'git@github.com:tamouse/news.git'
set :deploy_to, '/home/tamouse/Sites/news'
set :scm, :git
set :format, :pretty
set :log_level, :debug
set :pty, true
# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

set :linked_dirs, %w{log vendor/bundle public/ source/_posts/}

namespace :deploy do

  desc 'Restart application'
  task :restart do
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
    end
  end

end
