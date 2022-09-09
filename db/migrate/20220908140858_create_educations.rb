class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|

      t.belongs_to :user, index: true, foreign_key: true
      t.string :nameofeducation
      t.integer :marks 
      t.integer :percentage
      t.integer :passingout
      t.string :branch  
      t.timestamps

    end
  end
end
