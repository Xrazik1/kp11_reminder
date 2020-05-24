class CreateWeeks < ActiveRecord::Migration[6.0]
  def change
    create_table :weeks do |t|
      t.references :group, null: false, foreign_key: true
    end
  end
end
