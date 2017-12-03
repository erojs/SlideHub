class CustomFiles < ActiveRecord::Migration[5.1]
  def up
    create_table 'custom_files' do |t|
      t.string 'path', limit: 255, null: false
      t.string 'description', limit: 255, null: true
    end
    add_index 'custom_files', ['path'], name: 'idx_custom_files_ukey', unique: true, using: :btree
  end

  def down
    drop_table 'custom_files'
  end
end
