class QueueModel < ActiveRecord::Base
	has many :place_bookings
end
