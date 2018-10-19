feature 'Enter user data and game play' do
  scenario 'submitting name' do
    visit('/')
    fill_in :name, with: 'Neil'
    click_button 'Lets Play!'
    expect(page).to have_content 'Neil please click on one of the following buttons: Rock, Paper, Scissors'
  end
  scenario 'selecting weapon' do
    visit('/')
    fill_in :name, with: 'Neil'
    click_button 'Lets Play!'
    click_button 'Rock'
    expect(page).to have_content ('You Win!' || 'Sorry you lose!')
  end

end