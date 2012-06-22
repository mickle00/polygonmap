class Coordinate < ActiveRecord::Base

  def parse_coords
    @coords_list = []
    @coords = self.coordinates.gsub! "\r", ""
    @coords = self.coordinates.split "\n"
    @coords.each do |coord|
      coordlist = coord.split(',')
      @coords_list.push(coordlist)
   end
      @coords_list
  end
end
