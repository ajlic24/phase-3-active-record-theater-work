class CreateRolesTable < ActiveRecord::Migration[5.2]
  def change
    create_table(:roles) do |t|
      t.column :character_name, :string
    end
  end
end
