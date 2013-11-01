desc "Site update"
task :update do |t|
  say "updating news"
  system('planet generate --extension html') and system('jekyll build')
  say "new update #{$? == 0 ? "succeeded" : "failed" }"
end


task :default => :update


def say(*args)
  print "#{Time.now}: ", *args, "\n"
end
