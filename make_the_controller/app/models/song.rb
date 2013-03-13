class Song < ActiveRecord::Base
  attr_accessible :artist, :name
  belongs_to :artist

  def artist=(data)
    self.build_artist(:name => data)
  end

end