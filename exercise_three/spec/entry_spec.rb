require 'diary'

describe Entry do
    let(:subject) { Entry.new("Title", "Body...") }

    it "has a title" do
        expect(subject.title).to eq("Title")
    end

    it "has a body" do
        expect(subject.body).to eq("Body...")
    end
end