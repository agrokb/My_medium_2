module UsersHelper

    def avatar(user,size: 50)
         image_tag user.avatar.variant(combine_options:{resize:"640x640^",crop:"640x640+0+0",gravity: :center}).processed,class: 'user-avatar' if current_user.avatar.attached? 
    end

end