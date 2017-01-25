require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Sycamore Pain Clinic"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Sycamore Pain Clinic"
  end

  test "should get providers" do
    get providers_path
    assert_response :success
    assert_select "title", "Providers | Sycamore Pain Clinic"
  end

   test "should get procedures" do
    get procedures_path
    assert_response :success
    assert_select "title", "Procedures | Sycamore Pain Clinic"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Sycamore Pain Clinic"
  end

end
