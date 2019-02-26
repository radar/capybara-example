
RSpec.describe "Creating Questions", type: :feature do
  it "creates a question" do
    visit "/"
    fill_in "Title", with: "Test question"
    click_button "Add"

    within(".rating-questions") do
      expect(page).to have_content("Test question")
    end
  end
end
