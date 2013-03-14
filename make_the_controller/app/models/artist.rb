class Artist < ActiveRecord::Base
  attr_accessible :name, :birth_year, :songs
  has_many :songs

  def songs=(data)
    data.each do |song|
      self.songs.build(:name => song)
    end

  end
end
