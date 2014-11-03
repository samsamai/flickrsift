feature 'Contact page' do

  scenario 'Visit the contact page' do
    visit 'pages/about'
    expect(page).to have_content 'Contact'
  end

end
