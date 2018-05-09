require 'rails_helper'

feature 'Visiting home page' do
  scenario 'and looking products list' do
    c = Customer.create(email: 'teste@teste.com', password: '123456')
    s = Store.create(name: 'store1', customer: c)
    p = Product.create(name: 'product1', value:2.20, store: s)

    visit store_path(s)

    expect(page).to have_content(p.name)
    expect(page).to have_content(p.value)
  end
end
