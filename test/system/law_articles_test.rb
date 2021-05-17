require "application_system_test_case"

class LawArticlesTest < ApplicationSystemTestCase
  setup do
    @law_article = law_articles(:one)
  end

  test "visiting the index" do
    visit law_articles_url
    assert_selector "h1", text: "Law Articles"
  end

  test "creating a Law article" do
    visit law_articles_url
    click_on "New Law Article"

    fill_in "Article name", with: @law_article.article_name
    fill_in "Content", with: @law_article.content
    click_on "Create Law article"

    assert_text "Law article was successfully created"
    click_on "Back"
  end

  test "updating a Law article" do
    visit law_articles_url
    click_on "Edit", match: :first

    fill_in "Article name", with: @law_article.article_name
    fill_in "Content", with: @law_article.content
    click_on "Update Law article"

    assert_text "Law article was successfully updated"
    click_on "Back"
  end

  test "destroying a Law article" do
    visit law_articles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Law article was successfully destroyed"
  end
end
