ActiveAdmin.register User do

  action_item :only => :index do
  link_to 'Upload CSV', :action => 'upload_csv'
  end

  collection_action :upload_csv do

   render "admin/student/student"

  end

  collection_action :import_csv, :method => :post do

    CsvDb.convert_save("user",params[:dump][:file])
    redirect_to :action => :index, :notice => "CSV uploaded successfully!"
  end


  filter :first_name
  filter :last_name
end
 

