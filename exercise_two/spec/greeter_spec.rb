require 'greeter'

describe Greeter do

    it "#greet prints your name" do
        environment = double("Kernel") 
        allow(environment).to receive_message_chain(:gets, :chomp => 'Aneel')
        subject = Greeter.new(environment)
        
        expect { subject.greet }.to output("What is your name?\nHello, Aneel\n").to_stdout
    end
end