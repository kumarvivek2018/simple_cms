class CreateUsers < ActiveRecord::Migration[5.2]
  self.drop_table("users")


  def up
    create_table :users do |t|
      #id will be by default added
      #to remove, after :users pass hash {id: false}
      t.column "first_name", :string, limit: 25
      t.string "last_name", limit: 50
      t.string "email", default: '', num: false
      t.string "password", limit: 40

      t.timestamps #short hand for below
      #t.datetime "created_at"
      #t.datetime "updated_at"
      #ruby automatically fill entries for above two columns.
    end

    def down
      drop_table(self.table_name)
    end

    #"def up" for adding cols to table. "def down" for reversing
    #everything in up
    #ruby does reversing smartly and use "def change"
  end
end
