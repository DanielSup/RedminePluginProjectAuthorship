# frozen_string_literal: true

class AuthorshipHookListener < Redmine::Hook::ViewListener
  def view_projects_form(context = {})
    context[:users] = get_user_array
    context[:controller].send(:render_to_string, {
        :partial => 'authorship/authorship',
        :locals => context
    })
  end

  def get_user_array
    users = User.all
    user_pair_array = []
    users.each do |user|
        user_pair = [user.login, user.id]
        user_pair_array.push(user_pair)
    end
    user_pair_array
  end
end
