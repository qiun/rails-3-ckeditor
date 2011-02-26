Rails.application.routes.draw do
  namespace :ckeditor do
    resources :pictures, :only => [:index, :create, :destroy, :edit_images]
    resources :attachments, :only => [:index, :create, :destroy]
  end
	
	match "ckeditor/edit_images" => "ckeditor/pictures#edit_images", :as => 'edit_images'
	match "ckeditor/edit_files" => "ckeditor/attachments#edit_files", :as => 'edit_files'	
end
