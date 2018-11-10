require "rails_helper"

RSpec.feature "Users can view projects" do
  scenario "With the project detail" do
    project = FactoryGirl.create(:project, name: "Sublime text 3")

    visit "/"
    click_link "Sublime text 3"
    expect(page.current_url).to eq project_url(project)
  end
end