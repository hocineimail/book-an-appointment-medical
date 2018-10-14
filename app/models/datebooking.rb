class Datebooking < ApplicationRecord
	  belongs_to :user
    has_many :timetebookings
    validates :date, presence: true
end
