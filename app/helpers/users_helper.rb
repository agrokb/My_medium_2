module UsersHelper
    def avatar(user,size: 50)
        image_tag user.avatar.variant(combine_options:{resize:"#{size}x#{size}^",crop:"#{size}x#{size}+0+0",gravity: :center}).processed,class: 'user-avatar' if current_user.avatar.attached? 
    end
end