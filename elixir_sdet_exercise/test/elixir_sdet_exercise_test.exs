defmodule ElixirSdetExerciseTest do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case

  # Start hound session and destroy when tests are run
  hound_session()

  test "create facebook account" do
    navigate_to "https://www.facebook.com"

  first_name_element = find_element(:id, "u_0_p")
  fill_field(first_name_element, "sponge")
  take_screenshot()

  last_name_element = find_element(:id, "u_0_r")
  fill_field(last_name_element, "pants")
  take_screenshot()

  email_element = find_element(:name, "reg_email__")
  fill_field(email_element, "")
  take_screenshot()

  password_element = find_element(:name, "reg_passwd__")
  fill_field(password_element, "")
  take_screenshot()

  gender_element = find_element(:id, "u_0_8")
  click(gender_element)
  take_screenshot()

  submit_element(gender_element)
  take_screenshot()

  delete_cookies()
  end

end
