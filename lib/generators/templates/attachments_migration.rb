class CreateRedactor2Assets < ActiveRecord::Migration
  def self.up
    create_table :attachments, force: :cascade do |t|
      t.integer  :attachable_id
      t.string   :attachable_type
      t.string   :description
      t.string   :file
      t.datetime :created_at,                      null: false
      t.datetime :updated_at,                      null: false
      t.integer  :file_type
      t.string   :file_tmp
    end

    add_index :attachments, ['assetable_type', 'file_type, ''assetable_id'], :name => 'blueberry_redactor_assetable'
  end

  def self.down
    drop_table :attachments
  end
end
