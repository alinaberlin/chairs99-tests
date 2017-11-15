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
      fill_in('email', with: 'alina.ghetler1@gmail.com')
      fill_in('password', with: '99scaunePass')
      find('.button-inverse').click
      sleep(2)
      #find("//H1[@class='columns center'][text()='Vielen Dank. Toller Geschmack!']")
      page.execute_script "window.scrollBy(0,500)"
      find("input[type='tel']").set('015777888111')
      click_button('Weiter')
      sleep(1)
      find('div[class="button button-tiny button-inverse right"]').click
      sleep(0.5)
      find('div[class="button button-tiny button-inverse right"]').click
      sleep(0.5)
      find('div[class="button button-tiny button-inverse right"]').click
      sleep(0.5)
      find('div[class="button button-tiny button-inverse right"]').click
      sleep(0.5)
      find('div[class="button button-tiny button-inverse right"]').click
      sleep(0.5)
      find('div[class="button button-tiny button-inverse right"]').click
      sleep(0.5)
      expect(page).to have_content('UNSER BONUS')
    end
  end
end
