describe "Welcome Page" do
  describe "As a visitor" do
    it "I can log in" do
      user = create(:user)

      visit "/"

      fill_in :email, with: user.email

      click_on "Login"

      expect(current_path).to eq('/dashboard')
      expect(page).to have_content("Welcome, #{user.name}!")
    end

    it "I cannot log in with invalid credentials" do
      visit "/"

      fill_in :email, with: 'user@example.com'

      click_on "Login"

      expect(current_path).to eq('/')
      expect(page).to have_content("Your email was incorrect!")
    end
  end
end
