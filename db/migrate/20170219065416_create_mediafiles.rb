class CreateMediafiles < ActiveRecord::Migration[5.0]
  def change
    create_table :mediafiles do |t|
      t.string :title
      t.text :description
      t.string :collection
      t.string :language
      t.text :post_permissions
      t.string :location
      t.string :interviewer_firstname
      t.string :interviewer_lastname
      t.string :interviewee_firstname
      t.string :interviewee_lastname
      t.string :contact_email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
