class Headline < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 10, maximum: 255 }
  validates :ref, presence: true, :format => URI::regexp(%w(http https))
  validates :time, presence: true
end
