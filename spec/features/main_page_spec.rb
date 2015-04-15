require 'rails_helper'

describe 'Main Page' do
  
  before(:each) do
    @user = FactoryGirl.create(:user)
    @card = FactoryGirl.create(:card)
    visit root_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_on 'Login'
  end

  it 'does test fail answer' do
    visit root_path
    fill_in 'translated_text', with: 'dfgdfg'
    click_on 'проверить'
    expect(page).to have_content("Неправильный ответ")
  end

  it 'does test correct answer' do
    visit root_path
    fill_in 'translated_text', with: 'фабрика'
    click_on 'проверить'
    expect(page).to have_content("Правильный ответ!")
  end
end