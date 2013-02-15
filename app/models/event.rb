class Event < ActiveRecord::Base
	attr_accessible :school_name, :start_place, :end_place, :event_date, 
									:start_time, :end_time, :max_student, :allowance_claim

	has_many :user_events
	has_many :users, through: :user_events

	def seats_available
		available = self.max_student - UserEvent.where(event_id: self.id).count
		if available > 0
			available
		else
			"full"
		end
	end

	def event_action(user)
		unless self.users.include?(user)
			"join"
		else
			"quit"
		end
	end
end
