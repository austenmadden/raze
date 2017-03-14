# main module of raze
class Raze
  def self.flatten(collection)
    if collection.class == Hash
      flatten(collection.flatten)
    elsif collection.class == Array
      collection.map { |child| flatten(child) }.flatten
    else
      collection
    end
  end
end
