module TowitsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_towits_path
    elsif action_name == 'edit'
      towit_path
    end
  end
end
