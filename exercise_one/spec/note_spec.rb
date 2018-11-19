require 'note'

# continue with testing Note class 

describe Note do
    let(:formatter) { double("Formatter") }
    let(:subject) { Note.new('Title', 'Body...', formatter) }

    it "has a title" do 
        expect(subject.title).to eq('Title')
    end

    it "has a body" do 
        expect(subject.body).to eq('Body...')
    end

    it "#display sends a message to a formatter" do
        expect(formatter).to receive(:format).with(subject)

        subject.display
    end
end