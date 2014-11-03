feature 'Home page' do

  scenario 'visit the home page' do
    visit root_path
    expect(page).to have_link 'Flickr Sift'
    expect(page).to have_link 'About'
    expect(page).to have_link 'Portfolio'
    expect(page).to have_link 'Contact'

    expect(page).to have_field 'keywords'
    expect(page).to have_selector("input[type=submit][value='Search']")
  end

end
