class RemovePathFromPhotos < ActiveRecord::Migration
  def up
    remove_column :photos, :path
  end

  def down
    add_column :photos, :path, :string
  end
end
