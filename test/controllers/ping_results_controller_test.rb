require "test_helper"

class PingResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ping_result = ping_results(:one)
  end

  test "should get index" do
    get ping_results_url
    assert_response :success
  end

  test "should get new" do
    get new_ping_result_url
    assert_response :success
  end

  test "should create ping_result" do
    assert_difference("PingResult.count") do
      post ping_results_url, params: { ping_result: { current_machine: @ping_result.current_machine, current_machine_ip: @ping_result.current_machine_ip, note: @ping_result.note, ping_time: @ping_result.ping_time, response_time_ms: @ping_result.response_time_ms, target_machine: @ping_result.target_machine, target_machine_ip: @ping_result.target_machine_ip } }
    end

    assert_redirected_to ping_result_url(PingResult.last)
  end

  test "should show ping_result" do
    get ping_result_url(@ping_result)
    assert_response :success
  end

  test "should get edit" do
    get edit_ping_result_url(@ping_result)
    assert_response :success
  end

  test "should update ping_result" do
    patch ping_result_url(@ping_result), params: { ping_result: { current_machine: @ping_result.current_machine, current_machine_ip: @ping_result.current_machine_ip, note: @ping_result.note, ping_time: @ping_result.ping_time, response_time_ms: @ping_result.response_time_ms, target_machine: @ping_result.target_machine, target_machine_ip: @ping_result.target_machine_ip } }
    assert_redirected_to ping_result_url(@ping_result)
  end

  test "should destroy ping_result" do
    assert_difference("PingResult.count", -1) do
      delete ping_result_url(@ping_result)
    end

    assert_redirected_to ping_results_url
  end
end
