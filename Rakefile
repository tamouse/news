require 'rubygems'
require 'bundler/setup'

require './log4r_setup'
require 'open3'

task :default => :update

desc "Site update"
task :update => [:planet, :sleep, :jekyll] do |t|
end

desc "Run planet generate"
task :planet do |t|
  Log.info "Planet generate"
  o,e,st = Open3.capture3("bundle exec planet generate -e html")
  if st.success?
    Log.info "Planet generate complete"
    Log.info o.split("\n").last
  else
    Log.error "planet generate failed: #{st.exitstatus}: #{e}"
    Log.debug o
    Log.debug e
    raise "Planet generate failed: #{e}"
  end
end

desc "Run jekyll build"
task :jekyll do |t|
  Log.info "Jekyll build"
  o,e,st = Open3.capture3("bundle exec jekyll build")
  if st.success?
    Log.info "Jekyll build complete"
    Log.info o
  else
    Log.error "Jekyll build failed: #{st.exitstatus}: #{e}"
    Log.debug o
    Log.debug e
    raise "Jekyll build failed: #{e}"
  end
end

desc "Sleep a bit"
task :sleep, :duration do |t,args|
  duration = 3                  # seconds
  duration = args.duration.to_i if args.duration
  sleep duration
end
