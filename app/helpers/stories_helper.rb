module StoriesHelper
    def avatar_story(story,size: 50)
        image_tag story.user.avatar.variant(combine_options:{resize:"#{size}x#{size}^",crop:"#{size}x#{size}+0+0",gravity: :center}).processed,class: 'user-avatar avatar' if story.user.avatar.attached? 
    end
end
