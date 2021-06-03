module ItemsHelper
	def find_item user_id
		user = User.find_by_id user_id
		return items = user.items.map { |e|  [e.name, e.id] }
	end
end
