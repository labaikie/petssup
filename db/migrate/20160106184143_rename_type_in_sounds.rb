class RenameTypeInSounds < ActiveRecord::Migration
  def change
    rename_column :sounds, :type, :sound_type
  end
end
