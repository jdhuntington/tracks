class DropNotes < ActiveRecord::Migration
  def self.up
    drop_table "notes"
  end

  def self.down
    create_table "notes", :force => true do |t|
      t.integer  "user_id",    :null => false
      t.integer  "project_id", :null => false
      t.text     "body"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "notes", ["project_id"], :name => "index_notes_on_project_id"
    add_index "notes", ["user_id"], :name => "index_notes_on_user_id"
  end
end
