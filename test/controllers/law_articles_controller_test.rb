require "test_helper"

class LawArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @law_article = law_articles(:one)
  end

  test "should get index" do
    get law_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_law_article_url
    assert_response :success
  end

  test "should create law_article" do
    assert_difference('LawArticle.count') do
      post law_articles_url, params: { law_article: { article_name: @law_article.article_name, content: @law_article.content } }
    end

    assert_redirected_to law_article_url(LawArticle.last)
  end

  test "should show law_article" do
    get law_article_url(@law_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_law_article_url(@law_article)
    assert_response :success
  end

  test "should update law_article" do
    patch law_article_url(@law_article), params: { law_article: { article_name: @law_article.article_name, content: @law_article.content } }
    assert_redirected_to law_article_url(@law_article)
  end

  test "should destroy law_article" do
    assert_difference('LawArticle.count', -1) do
      delete law_article_url(@law_article)
    end

    assert_redirected_to law_articles_url
  end
end
