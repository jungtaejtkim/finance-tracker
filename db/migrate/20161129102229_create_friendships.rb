class CreateFriendships < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships do |t|
      t.belongs_to :user
      t.belongs_to :friend, class: 'User' #userid 와 friend id 를 가져야한다
      t.timestamps
    end
  end
end
