json.extract! ping_result, :id, :current_machine, :current_machine_ip, :target_machine, :target_machine_ip, :response_time_ms, :ping_time, :note, :created_at, :updated_at
json.url ping_result_url(ping_result, format: :json)
