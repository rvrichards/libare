class ChangeFilenameInLibations < ActiveRecord::Migration[5.0]
  def change
    rename_column :libations, :filename, :image
  end
end
