require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | Sycamore Pain Clinic"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Sycamore Pain Clinic"
  end

  test "should get providers" do
    get static_pages_providers_url
    assert_response :success
    assert_select "title", "Providers | Sycamore Pain Clinic"
  end

   test "should get procedures" do
    get static_pages_procedures_url
    assert_response :success
    assert_select "title", "Procedures | Sycamore Pain Clinic"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | Sycamore Pain Clinic"
  end

end
