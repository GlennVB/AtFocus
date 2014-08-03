class CoController < ApplicationController
  def index
    case current_account.profile.affiliated_with.count
    when 0
      redirect_to :back, notice: "You aren't connect to a business yet.<br><br>Redirected back."
    when 1
      redirect_to current_account.profile.affiliated_with.first.businessDash
    else
      puts("Multiple Company's, not implemented yet.")
    end
  end
end
