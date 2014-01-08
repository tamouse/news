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
  o,e,st = Open3.capture3("planet generate -e html")
  if st.success?
    Log.info "Planet generate complete"
  else
    Log.error "planet generate failed: #{st.exitstatus}: #{e}"
    raise "Planet generate failed: #{e}"
  end
end

desc "Run jekyll build"
task :jekyll do |t|
  Log.info "Jekyll build"
  o,e,st = Open3.capture3("jekyll build")
  if st.success?
    Log.info "Jekyll build complete"
  else
    Log.error "Jekyll build failed: #{st.exitstatus}: #{e}"
    raise "Jekyll build failed: #{e}"
  end
end

desc "Sleep a bit"
task :sleep, :duration do |t,args|
  duration = 3                  # seconds
  duration = args.duration.to_i if args.duration
  sleep duration
end
