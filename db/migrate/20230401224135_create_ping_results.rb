class CreatePingResults < ActiveRecord::Migration[7.0]
  def change
    create_table :ping_results do |t|
      t.string :current_machine
      t.string :current_machine_ip
      t.string :target_machine
      t.string :target_machine_ip
      t.float :response_time_ms
      t.datetime :ping_time
      t.text :note

      t.timestamps
    end
  end
end
