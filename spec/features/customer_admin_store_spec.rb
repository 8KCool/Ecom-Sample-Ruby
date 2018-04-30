require 'rails_helper'

feature 'Customer admin stores' do
  scenario 'creating a new store' do
    visit new_store_path

    expect(page).to have_content("Crie sua loja!")
  end
end
