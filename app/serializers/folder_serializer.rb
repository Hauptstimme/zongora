class FolderSerializer < ActiveModel::Serializer
  attributes :id, :parent_folder_id, :name
end
