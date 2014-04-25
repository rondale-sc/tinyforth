module BuildHelper
  def self.build
    directory = './ragel/*.rl'
    Dir[directory].each do |f|
      system("ragel #{f} -R -o ./bin/#{File.basename(f, '.rl')}")
    end
  end
end
