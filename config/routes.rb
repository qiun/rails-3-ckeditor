Rails.application.routes.draw do
  namespace :ckeditor do
    resources :pictures, :only => [:index, :create, :destroy, :edit_images]
    resources :attachments, :only => [:index, :create, :destroy]
  end
	
end
