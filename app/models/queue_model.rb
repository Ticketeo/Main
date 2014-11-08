class QueueModel < ActiveRecord::Base
	has_many :place_bookings
end
