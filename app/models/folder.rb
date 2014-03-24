class Folder < ActiveRecord::Base
  belongs_to :parent_folder, class_name: "Folder"
  has_many :child_folders, class_name: "Folder", foreign_key: :parent_folder_id

  validates_presence_of :name

  scope :root, ->{ where parent_folder: nil }
end
