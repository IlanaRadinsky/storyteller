class AddAttachmentToMediafiles < ActiveRecord::Migration[5.0]
  def change
	  add_column :mediafiles, :attachment, :string
  end
end
