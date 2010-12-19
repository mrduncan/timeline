require 'rake/testtask'

$LOAD_PATH.unshift 'lib'

desc "Push a new gem version"
task :publish do
  require 'timeline/version'

  sh "gem build timeline.gemspec"
  sh "gem push timeline-{Timeline::Version}.gem"
  sh "git tag v#{Timeline::Version}"
  sh "git push origin v#{Timeline::Version}"
  sh "git push origin master"
  sh "git clean -fd"
end
