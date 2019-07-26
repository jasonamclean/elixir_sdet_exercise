defmodule ElixirSdetExerciseTest do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case

  # Start hound session and destroy when tests are run
  hound_session()

  test "goes to facebook" do
    navigate_to("https://www.facebook.com")
    IO.inspect page_title()
    delete_cookies()
  end

  test "create facebook account" do
    navigate_to("https://www.facebook.com/r.php")
    IO.inspect current_url()
    url = current_url()
    assert url == "https://www.facebook.com/r.php"
    take_screenshot("./screenshots/1_fb_register_page.png")

    first_name_element = find_element(:name, "firstname")
    fill_field(first_name_element, "Rod")

    last_name_element = find_element(:name, "lastname")
    fill_field(last_name_element, "Kimble")

    email_element = find_element(:name, "reg_email__")
    fill_field(email_element, "stuntit4life@onebigjump.com")

    email_confirm_element = find_element(:name, "reg_email_confirmation__")
    fill_field(email_confirm_element, "stunted4life@onebigjump.com")

    password_element = find_element(:name, "reg_passwd__")
    fill_field(password_element, "")

    gender_element = find_element(:id, "u_0_6")
    click(gender_element)

    submit = find_element(:name, "websubmit")
    click(submit)

    IO.inspect fetch_errors()
    take_screenshot("./screenshots/2_failure_to_submit.png")

    delete_cookies()
  end
end
