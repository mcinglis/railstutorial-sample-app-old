require "spec_helper"

feature "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector "h1", text: "Examplr" }
    it { html.should have_selector "title", text: full_title("") }
    it { html.should_not have_selector "title", text: "Home" }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector "h1", text: "Help" }
    it { html.should have_selector "title", text: full_title("Help") }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector "h1", text: "About" }
    it { html.should have_selector "title", text: full_title("About") }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector "h1", text: "Contact" }
    it { html.should have_selector "title", text: full_title("Contact") }
  end
end
