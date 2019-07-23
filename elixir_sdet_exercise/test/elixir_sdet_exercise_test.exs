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

  last_name_element = find_element(:id, "u_0_r")
  fill_field(last_name_element, "pants")

  email_element = find_element(:name, "reg_email__")
  fill_field(email_element, "")

  password_element = find_element(:name, "reg_passwd__")
  fill_field(password_element, "")

  gender_element = find_element(:id, "u_0_8")
  click(gender_element)

  submit_element(gender_element)

  delete_cookies()
  end

end
