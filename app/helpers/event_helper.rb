module EventHelper
	def formatted_date(d)
		d.strftime("%^A %^B %d %Y")
	end

	def formatted_time(t)
		t.strftime("%I:%M %p")
	end

	def display_joined(str)
		str == "joined" ? "Joined" : "Not yet join"
	end
end
