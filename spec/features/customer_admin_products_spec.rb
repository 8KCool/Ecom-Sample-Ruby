require 'rails_helper'

feature 'Customer admin products' do
  scenario 'Visiting new product page' do
    store = Store.create(name: 'store test', slogan:'better, better, better')
    visit "/stores/#{store.id}/products/new"
    expect(page).to have_content("Adicione produtos a sua loja!")
  end

  scenario 'creating a new product' do
    store = Store.create(name: 'store test', slogan:'better, better, better')
    visit "/stores/#{store.id}/products/new"

    fill_in 'Name', with: 'Camiseta'
    fill_in 'Value', with: '12'
    fill_in 'Description', with: 'Camiseta da hora'
    click_on 'Enviar'

    expect(page).to have_content('Produto adicionado com sucesso!')
    expect(page).to have_content('Camiseta')
    expect(page).to have_content('Camiseta da hora')
    expect(page).to have_content('12')
  end
end
