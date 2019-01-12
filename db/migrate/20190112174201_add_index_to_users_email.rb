class AddIndexToUsersEmail < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :email, unique: true
  end

  # plus add "#empty" to /test/fixtures/users.yml
end
