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
  
  scenario "User enters no keyword and does a search" do
    visit root_path
  
    fill_in "keywords", with: ""
    click_button "Search"
    expect(page).to have_no_selector("p#search_results")
  end
  
  scenario "User enters a keyword and does a search" do
    visit root_path
  
    fill_in "keywords", with: "best2014"
    click_button "Search"
    expect(page).to have_selector("p#search_results")
    expect(page).to have_selector("ul.pagination")
  end
  
end
