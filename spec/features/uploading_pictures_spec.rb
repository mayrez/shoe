require 'rails_helper'

describe 'Uploading pictures', js: true do
  before do
    visit '/'
    click_link 'New Shoe'
  end

  it 'with valid data' , driver: :poltergeist do
    attach_file 'Picture', 'spec/fixtures/picture.jpg'
    click_button 'Upload Picture'
    expect(page).to have_content('File "picture.jpg" has been uploaded to S3.')


    fill_in 'Name', with: 'This is a name'

    fill_in 'Designer', with: 'This is a designer'
    fill_in 'Description', with: 'This is a description'
    fill_in 'Color', with: 'This is a color'

    click_button 'Create Shoe'

    expect(page).to have_content('Shoe was successfully created.')
    #expect(page).to have_selector("img[src$='picture.jpg']")
  end
end
