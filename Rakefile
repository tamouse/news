desc "Site update"
task :update do |t|
  system 'planet generate --extension html'
  system 'jekyll build'
end


task :default => :update
