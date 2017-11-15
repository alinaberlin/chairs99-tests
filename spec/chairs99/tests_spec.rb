RSpec.describe 'Quiz login is working', type: :feature do
  before do
    visit 'https://app-staging.99chairs.com/'
    #Capybara.current_session.current_window.resize_to(2500,2500)
  end
  context 'Quiz login scenarion' do
    it 'should open the page' do
      expect(page).to have_text('ZUM STILQUIZ')
    end
    it 'should complete registration via quiz' do
      click_link('Zum Stilquiz')
      while has_css?('.fa-heart') do
        find('.fa-heart').click
      end
      fill_in('first_name', with: 'Alina')
      fill_in('last_name', with: 'Ghetler')
      fill_in('email', with: 'alina.10@gmail.com')
      fill_in('password', with: '99scaunePass')
      find('.button-inverse').click
      sleep(1)
      #expect(page).to have_text('Vielen Dank')
    end
  end
end
