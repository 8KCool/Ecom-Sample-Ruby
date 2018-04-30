require 'rails_helper'

feature 'Visiting home page' do
  scenario 'and looking products list' do
    s = Store.create(name: 'store1')
    p = Product.create(name: 'product1', value:2.20, store: s)

    visit root_path
    expect(page).to have_content(p.name)
    expect(page).to have_content(p.value)
  end
end
