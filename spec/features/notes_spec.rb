require 'spec_helper'

describe Note do
  it 'adds a new note and displays the results' do
    visit '/notes/new'
    fill_in 'Name', with: 'test note name'
    fill_in 'Content', with: 'test note content'
    click_button 'Create Note'

    expect(page).to have_content 'test note name'
  end
end
