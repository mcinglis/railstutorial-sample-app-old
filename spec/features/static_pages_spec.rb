require 'spec_helper'

feature "Static pages" do

  def title_text(page_title)
    "Ruby on Rails Tutorial Sample App | #{page_title}"
  end

  describe "Home page" do
    scenario "Visiting" do
      visit "/static_pages/home"
      page.should have_selector "h1", text: "Sample app"
      page.html.should have_selector "title", text: title_text("Home")
    end
  end

  describe "Help page" do
    scenario "Visiting" do
      visit "/static_pages/help"
      page.should have_selector "h1", text: "Help"
      page.html.should have_selector "title", text: title_text("Help")
    end
  end

  describe "About page" do
    scenario "Visting" do
      visit "/static_pages/about"
      page.should have_selector "h1", text: "About us"
      page.html.should have_selector "title", text: title_text("About us")
    end
  end

end
