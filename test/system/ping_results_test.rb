require "application_system_test_case"

class PingResultsTest < ApplicationSystemTestCase
  setup do
    @ping_result = ping_results(:one)
  end

  test "visiting the index" do
    visit ping_results_url
    assert_selector "h1", text: "Ping results"
  end

  test "should create ping result" do
    visit ping_results_url
    click_on "New ping result"

    fill_in "Current machine", with: @ping_result.current_machine
    fill_in "Current machine ip", with: @ping_result.current_machine_ip
    fill_in "Note", with: @ping_result.note
    fill_in "Ping time", with: @ping_result.ping_time
    fill_in "Response time ms", with: @ping_result.response_time_ms
    fill_in "Target machine", with: @ping_result.target_machine
    fill_in "Target machine ip", with: @ping_result.target_machine_ip
    click_on "Create Ping result"

    assert_text "Ping result was successfully created"
    click_on "Back"
  end

  test "should update Ping result" do
    visit ping_result_url(@ping_result)
    click_on "Edit this ping result", match: :first

    fill_in "Current machine", with: @ping_result.current_machine
    fill_in "Current machine ip", with: @ping_result.current_machine_ip
    fill_in "Note", with: @ping_result.note
    fill_in "Ping time", with: @ping_result.ping_time
    fill_in "Response time ms", with: @ping_result.response_time_ms
    fill_in "Target machine", with: @ping_result.target_machine
    fill_in "Target machine ip", with: @ping_result.target_machine_ip
    click_on "Update Ping result"

    assert_text "Ping result was successfully updated"
    click_on "Back"
  end

  test "should destroy Ping result" do
    visit ping_result_url(@ping_result)
    click_on "Destroy this ping result", match: :first

    assert_text "Ping result was successfully destroyed"
  end
end
