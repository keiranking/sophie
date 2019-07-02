require "rails_helper"

RSpec.feature "user manages puzzles" do
  scenario "user adds a puzzle" do
    visit puzzles_path
    click_on("Add puzzle")
    fill_in("Title", with: "Dan's Barber")
    click_on("Save")

    expect(page).to have_content("Dan's Barber")
  end
end
