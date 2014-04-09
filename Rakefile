require 'rake/testtask'

task :default => ["test"]

Rake::TestTask.new do |t|              #method in rake "task"
  t.warning = false
  t.verbose = true
  t.test_files = FileList['*_test.rb']
end

# to invoke, simply say >rake

