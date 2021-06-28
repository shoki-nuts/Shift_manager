class RenameDateColumnToShift < ActiveRecord::Migration[6.1]
  def change
    rename_column :shifts, :date, :start_time
  end
end
