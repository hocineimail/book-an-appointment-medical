class Timetebooking < ApplicationRecord
  belongs_to :datebooking
   validates :nome, presence: true
    validates :prenom, presence: true
     validates :telephpne, presence: true
     validates :time, presence: true
end
