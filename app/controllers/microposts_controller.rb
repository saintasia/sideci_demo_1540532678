class MicropostsController < ApplicationController
  def create
    # RuboCop will say "binding.pry is a debug code, so you should remove it.".
    binding.pry
    content = params.require(:micropost).require(:content)
    # RuboCop will say "Use `create!` instead of `create` because `create` ignores validation errors.".
    current_user.microposts.create(content: content)
    redirect_back(fallback_location: user_path(current_user))
  end
end
