$LOAD_PATH.unshift 'lib'
require 'timeline/version'

Gem::Specification.new do |s|
  s.name              = "timeline"
  s.version           = Timeline::Version
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Timeline is a tool for generating timelines off of git repositories."
  s.homepage          = "http://github.com/mrduncan/timeline"
  s.email             = "matt@mattduncan.org"
  s.authors           = ["Matt Duncan"]

  s.files             = %w( README.markdown Rakefile LICENSE )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("bin/**/*")
  s.files            += Dir.glob("test/**/*")
  s.executables       = ["timeline"]

  s.extra_rdoc_files  = ["LICENSE", "README.markdown"]
  s.rdoc_options      = ["--charset=UTF-8"]

  s.description = <<description
    Timeline is a command line tool for generating timeline data off of git
    repositories. It is inspired by Jacob Kristhammar and Rickard Böttcher's
    work on Tornado -
    http://groups.google.com/group/python-tornado/browse_thread/thread/94b45e815ac992ac
description
end
