require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'pry'

desc 'Compile ragel files to bin dir'
task :compile do
  directory = './ragel/*.rl'
  Dir[directory].each do |f|
    system("ragel #{f} -R -o ./bin/#{File.basename(f, '.rl')}")
  end
end

desc 'console'
task console: [:compile] do
  directory = './bin/*.rb'
  Dir[directory].each { |f| require f }
  Pry.start
end

desc 'visually inspect machine'
task graph_machine: [:compile] do
  machine = ARGV.fetch(1) { "lexer" }
  string = """
    ragel ragel/tinyforth.rb.rl -p -V -M #{machine} > tmp/test.dot |
      dot -Tpng tmp/test.dot > tmp/output.png |
      open tmp/output.png
  """
  system(string)
end
