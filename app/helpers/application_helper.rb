module ApplicationHelper
	def areyouadmin
		if current_user.admin!="admin"
			redirect_to user_path(current_user), notice: 'User cannot access the requested page'
		end
	end

end
