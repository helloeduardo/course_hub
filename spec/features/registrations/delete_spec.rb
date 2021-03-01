describe "Dashboard Page" do
  describe "As a logged in user" do
    it "I can cancel registration for a registered course" do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      course_1 = create(:course)
      registration = create(:registration, user: user, course: course_1)
      visit "/dashboard"

      within '.courses' do
        expect(page.all('li')[0]).to have_content(course_1.name)
        expect(page.all('li')[0]).to have_content(course_1.time)
        click_button 'Cancel Registration'
      end

      expect(current_path).to eq('/dashboard')
      expect(page).to have_content('Your registration has been cancelled.')

      expect(page).to_not have_content(course_1.name)
      expect(page).to_not have_content(course_1.time)
    end
  end
end
