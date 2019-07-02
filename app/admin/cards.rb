ActiveAdmin.register Card do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


  permit_params :icon, :name, :description
  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :icon, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :icon do
        image_tag rails_blob_path(card.icon)
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments

  end
end
