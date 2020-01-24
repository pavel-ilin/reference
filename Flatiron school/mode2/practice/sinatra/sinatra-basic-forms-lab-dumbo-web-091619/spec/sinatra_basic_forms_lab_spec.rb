require 'pry'
describe App do

  describe 'GET /' do

    it 'sends a 200 status code' do
      get '/'
      expect(last_response.status).to eq(200)
    end

    it 'has a link with the text "List A Puppy"' do
      visit '/'
      expect(page).to have_link("List A Puppy")
    end

    it 'has a link to list a puppy that links to /new' do
      visit '/'
      expect(page).to have_link("List A Puppy", href: '/new')
    end
  end

  describe 'GET /new' do
    it 'sends a 200 status code' do
      get '/new'
      expect(last_response.status).to eq(200)
    end

    it 'renders a form that can POST a name, breed, and age' do
      visit '/new'

      expect(page).to have_selector("form")

      #form method attribute is a post
      expect(page.find('form')[:method]).to match(/post/i)

      expect(page).to have_field(:name)
      expect(page).to have_field(:breed)
      expect(page).to have_field(:months_old)
    end
  end

  describe 'POST /puppy' do

    before(:all) do
      visit '/new'

      fill_in(:name, :with => "Butch")
      fill_in(:breed, :with => "Mastiff")
      fill_in(:months_old, :with => "6")

      #the below css will match any element (input or button)
      #with a type attribute set to submit
      page.find(:css, '[type=submit]').click
    end

    it "sends a 200 status code" do
      expect(page.status_code).to eq(200)
    end

    it "recieves a request from /new at /puppy" do
      expect(page.current_path).to eq("/puppy")
    end

    it "displays the puppy information dynamically" do
      # The \s below will match any whitespace
      expect(page).to have_text(/Name:\s+Butch/i)
      expect(page).to have_text(/Breed:\s+Mastiff/i)
      expect(page).to have_text(/Age:\s+6 months/i)

      #now do it again, to be sure it's not hard-coded
      visit '/new'

      fill_in(:name, :with => "Byron")
      fill_in(:breed, :with => "Poodle")
      fill_in(:months_old, :with => "9")

      #the below css will match any element (input or button)
      #with a type attribute set to submit
      page.find(:css, '[type=submit]').click

      expect(page).to have_text(/Name:\s+Byron/i)
      expect(page).to have_text(/Breed:\s+Poodle/i)
      expect(page).to have_text(/Age:\s+9 months/i)
    end
  end

end
