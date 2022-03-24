class CreateAuditionTable < ActiveRecord::Migration[5.2]
  def change
    create_table(:auditions) do |t|
      t.column :actor, :string
      t.column :location, :string
      t.column :phone, :integer
      t.column :hired, :boolean
      t.column :role_id, :integer
    end
  end
end
