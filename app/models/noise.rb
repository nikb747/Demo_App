class Noise < ActiveRecord::Base
  belongs_to :beast
  validates :sound, :length => { :maximum => 140}
end
