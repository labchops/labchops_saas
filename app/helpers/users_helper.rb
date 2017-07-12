module UsersHelper
    
    def subject_area_title_icon
        if @user.profile.subject_area == "Math"
            "<i class='fa fa-calculator'></i>".html_safe
        elsif @user.profile.subject_area == "Science"
            "<i class='fa fa-flask'></i>".html_safe
        elsif @user.profile.subject_area == "Engineering"
            "<i class='fa fa-gears'></i>".html_safe
        elsif @user.profile.subject_area == "Technology"
            "<i class='fa fa-code'></i>".html_safe
        elsif @user.profile.subject_area == "STREAM"
            "<i class='fa fa-graduation-cap'></i>".html_safe
        end
    end
end