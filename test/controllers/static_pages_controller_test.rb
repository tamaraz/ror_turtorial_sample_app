require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  #Test gets a URL and verifies (via an assertion) that the result is a success.
  # Here the use of get indicates that our tests expect the Home page
  # to be ordinary web page, accessed using a GET request.
  # The response :success is an abstract representation of the underlying
  # HTTP status code (in this case, 200 OK).
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end
end
