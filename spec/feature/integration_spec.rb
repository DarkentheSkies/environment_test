require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'robot fish'
    fill_in 'Author', with: 'isaac FISH'
    fill_in 'Price', with: '76'
    select '2019', from: 'book[publishDate(1i)]'
    select 'August', from: 'book[publishDate(2i)]'
    select '24', from: 'book[publishDate(3i)]'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('robot fish')
    expect(page).to have_content('isaac FISH')
    expect(page).to have_content('76')
    expect(page).to have_content('{1=>2019, 2=>8, 3=>24}')
  end
end

