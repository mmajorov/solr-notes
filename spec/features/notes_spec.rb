require 'spec_helper'

describe Note do
  it 'adds a new note and displays the results' do
    visit '/notes/new'
    fill_in 'Name', with: 'test note name'
    fill_in 'Content', with: 'test note content'
    click_button 'Create Note'

    expect(page).to have_content 'test note name'
  end

  context 'existed' do
    let(:note){FactoryGirl.create(:note)}

    it 'can be updated' do
      visit edit_note_path(note)
      fill_in 'Name', with: 'updated note name'
      click_button 'Update Note'

      expect(note.reload.name).to eq 'updated note name'
    end
  end
end
