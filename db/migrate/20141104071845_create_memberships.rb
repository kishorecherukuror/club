class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :m_type
      t.integer :duration
      t.integer :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
