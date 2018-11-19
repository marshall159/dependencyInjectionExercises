class Greeter
  attr_reader :environment

  def initialize(environment = Kernel)
    @environment = environment
  end

  def greet
    puts "What is your name?"
    name = environment.gets.chomp
    puts "Hello, #{name}"
  end
end