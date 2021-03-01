describe "Course Page" do
  describe "As a logged in user" do
    it "I can register for a course" do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      course_1 = create(:course)

      visit "/dashboard"
      click_on "View available courses"

      expect(current_path).to eq('/courses')

      within '.courses' do
        expect(page.all('li')[0]).to have_content(course_1.name)
        expect(page.all('li')[0]).to have_content(course_1.time)

        click_button "Register"
      end

      expect(current_path).to eq('/dashboard')

      expect(page).to have_content('You are now registered.')

      within '.courses' do
        expect(page.all('li')[0]).to have_content(course_1.name)
        expect(page.all('li')[0]).to have_content(course_1.time)
      end

    end
  end
end
