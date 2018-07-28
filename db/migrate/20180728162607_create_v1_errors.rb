class CreateV1Errors < ActiveRecord::Migration[5.1]
  def change
    create_table :v1_errors do |t|
      t.string :step
      t.string :file
      t.string :reason
      t.string :data
    end
  end
end
