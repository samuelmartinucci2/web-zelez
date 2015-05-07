class AddColumnBirthDateToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :birth_date, :timestamp
    remove_column :players, :age
  end
end
