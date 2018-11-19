require 'diary'

describe Diary do
    let(:entry_double) { double("Entry", title: "Title", body: "Body...") }
    let(:entry_class_double) { double("EntryClass", new: entry_double) } 
    let(:diary) { Diary.new(entry_class_double) }

    describe "#add" do
        it "creates a new instance of Entry" do
            diary.add("Whatever", "Anything...")

            expect(diary.entries).to include(entry_double)
        end
    end

    describe "#index" do
        it "returns list of entry titles" do
            expect(entry_double).to receive(:title)

            diary.add("Whatever", "Anything...")
            diary.add("Whatever", "Anything...")

            titles = diary.index

            expect(titles).to eq("Title\nTitle")
        end
    end
end