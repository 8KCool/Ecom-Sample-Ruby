require 'rails_helper'

feature 'Customer admin stores' do
  scenario 'Visiting new store page' do
    visit new_store_path

    expect(page).to have_content("Crie sua loja!")
  end

  scenario 'creating a new store' do
    customer = Customer.create(email: 'teste@teste.com', password: '123456')
    visit new_customer_session_path
    fill_in 'Email', with: customer.email
    fill_in 'Password', with: customer.password
    click_on 'Log in'
    visit new_store_path

    fill_in 'Name', with: 'Besni'
    fill_in 'Slogan', with: 'Dedicação total a você'
    click_on 'Enviar'

    expect(page).to have_content('Loja criada com sucesso!')
    expect(page).to have_content('Besni')
    expect(page).to have_content('Dedicação total a você')
  end

  scenario 'visiting stores list' do
    customer = Customer.create(email:'teste@teste.com', password: '123456')
    other_customer = Customer.create(email:'teste2@teste.com', password: '123456')
    store_customer = Store.create()
    
  end
end
