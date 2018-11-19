require 'note'

describe NoteFormatter do

    it "#format returns a formatted note" do
        note = double("Note", title: 'Title', body: 'Body')
        
        formatted_note = subject.format(note)

        expect(formatted_note).to eq("Title: Title\nBody")
    end
end