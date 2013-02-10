require 'spec_helper'

feature "Static pages" do

  given :app_name do
    "Examplr"
  end

  scenario "Visting the Home page" do
    visit "/static_pages/home"
    page.should have_selector "h1", text: app_name
    page.html.should have_selector "title", text: app_name
    page.html.should_not have_selector "title", text: "Home"
  end

  scenario "Visting the Help page" do
    visit "/static_pages/help"
    page.should have_selector "h1", text: "Help"
    page.html.should have_selector "title", text: "Help"
  end

  scenario "Visting the About page" do
    visit "/static_pages/about"
    page.should have_selector "h1", text: "About"
    page.html.should have_selector "title", text: "About"
  end

end
