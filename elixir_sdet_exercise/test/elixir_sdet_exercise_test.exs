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
    assert current_url == "https://www.facebook.com/r.php"

    take_screenshot("./screenshots/fb_register_account_page.png")

    first_name_element = find_element(:name, "firstname")
    fill_field(first_name_element, "sponge")
    take_screenshot("./screenshots/firstname.png")

    delete_cookies()
  end
end
