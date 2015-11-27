require 'test_helper'
require 'capybara/rails'

class ArticleTest < ActionDispatch::IntegrationTest
  include Capybara::DSL
  test "a new article can be created" do
    visit "/articles"
    assert page.has_content?("Create New Article")
    click_link("Create New Article")
    fill_in "title", with: "POODR"
    fill_in "body", with: "DRY and SRP"
    click_button "Create Article"
    assert_equal article_path(1), current_path

  end

end
