require 'rails_helper'

feature 'Customer admin products' do
  scenario 'Visiting new product page' do
    customer = Customer.create(email: 'teste@teste.com', password: '123456')
    store = Store.create(name: 'store test', slogan:'better, better, better',
                         customer: customer)
    visit "/stores/#{store.id}/products/new"
    expect(page).to have_content("Adicione produtos a sua loja!")
  end

  scenario 'creating a new product' do
    customer = Customer.create(email: 'teste@teste.com', password: '123456')
    store = Store.create(name: 'store test', slogan:'better, better, better',
                         customer: customer)
    visit "/stores/#{store.id}/products/new"

    fill_in 'Name', with: 'Camiseta'
    fill_in 'Value', with: '12'
    fill_in 'Description', with: 'Camiseta da hora'
    fill_in 'Quantity', with: '10'
    click_on 'Enviar'

    expect(page).to have_content('Produto adicionado com sucesso!')
    expect(page).to have_content('Camiseta')
    expect(page).to have_content('Camiseta da hora')
    expect(page).to have_content('12')
    expect(page).to have_content('10')
  end
end
