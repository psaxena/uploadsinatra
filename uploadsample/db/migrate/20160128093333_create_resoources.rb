class CreateResoources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :request_id
      t.text :name
      t.string :path
      t.string :status
    end
  end
end
