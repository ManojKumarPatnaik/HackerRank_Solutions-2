def scoring(array)
  # update_score of every user in the array unless the user is admin
  # unless is the logical equivalent of if not
  array.each do |user|
    user.update_score unless user.is_admin?
  end
end