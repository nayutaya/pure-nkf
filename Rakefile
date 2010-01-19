
require "lib/pure_nkf/version"

NAME = "nayutaya-pure-nkf"

task :default => :gemspec

desc "bump version"
task :version do
  cur_version  = PureNKF::VERSION
  next_version = cur_version.succ
  puts("#{cur_version} -> #{next_version}")

  filename = File.join(File.dirname(__FILE__), "lib", "pure_nkf", "version.rb")
  File.open(filename, "wb") { |file|
    file.puts
    file.puts(%|module PureNKF|)
    file.puts(%|  VERSION = "#{next_version}"|)
    file.puts(%|end|)
  }
end

desc "generate gemspec"
task :gemspec do
  require "erb"

  src  = File.open("#{NAME}.gemspec.erb", "rb") { |file| file.read }
  erb  = ERB.new(src, nil, "-")

  version = PureNKF::VERSION
  date    = Time.now.strftime("%Y-%m-%d")

  files      = Dir.glob("**/*").select { |s| File.file?(s) }.reject { |s| /\.gem\z/ =~ s }
  test_files = Dir.glob("test/**").select { |s| File.file?(s) }

  File.open("#{NAME}.gemspec", "wb") { |file|
    file.write(erb.result(binding))
  }
end

desc "build gem"
task :build do
  sh "gem build #{NAME}.gemspec"
end

desc "push gem"
task :push do
  target = "#{NAME}-#{PureNKF::VERSION}.gem"
  sh "gem push #{target}"
end
