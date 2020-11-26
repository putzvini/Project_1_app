class CreateProducts < ActiveRecord::Migration[6.0]
  belongs_to :user

 # include PgSearch::Model
 # pg_search_scope :global_search,
  #  against: [ :name, :category ],
  #  associated_against: {
   #   user_id: [ :user]
  #  },
    #using: {
   #   tsearch: { prefix: true }
   # }
#
  #  include PgSearch::Model
   # pg_search_scope :search_by_name_and_category,
  #    against: [ :name, :category ],
  #    using: {
  #      tsearch: { prefix: true }
  #  }

     include PgSearch::Model
       multisearchable against: [:name, :category]


  def change
    create_table :products do |t|
      t.string :name
      t.text :details
      t.decimal :price
      t.string :category
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
