ActiveAdmin.register Education do

   
  permit_params :user_id, :nameofeducation, :marks, :percentage, :passingout, :branch
  
    filter :nameofeducation
    filter :percentage
    filter :passingout
    filter :branch
end  






