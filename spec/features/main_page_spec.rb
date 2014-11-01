require 'rails_helper'

describe 'Main Page' do
  
  before(:each) do
    @card = FactoryGirl.create(:card)
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