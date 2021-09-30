# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid title' do
        visit new_book_path
        fill_in 'Title', with: 'Harry Potter'
        fill_in 'Author', with: 'JK Rowling'
        fill_in 'Price', with: '30'
        fill_in 'Publisheddate', with: Date.new(2000,9,14)
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('Harry Potter')
    end
    
    scenario 'valid author' do
        visit new_book_path
        fill_in 'Title', with: 'Harry Potter'
        fill_in 'Author', with: 'JK Rowling'
        fill_in 'Price', with: '30'
        fill_in 'Publisheddate', with: Date.new(2000,9,14)
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('JK Rowling')
    end
    
    scenario 'valid price' do
        visit new_book_path
        fill_in 'Title', with: 'Harry Potter'
        fill_in 'Author', with: 'JK Rowling'
        fill_in 'Price', with: '30'
        fill_in 'Publisheddate', with: Date.new(2000,9,14)
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('30')
    end
    
    scenario 'valid published date' do
        visit new_book_path
        fill_in 'Title', with: 'Harry Potter'
        fill_in 'Author', with: 'JK Rowling'
        fill_in 'Price', with: '30'
        fill_in 'Publisheddate', with: Date.new(2000,9,14)
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('2000-09-14')
    end
end