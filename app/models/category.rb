class Category < ApplicationRecord
  has_many :items
  has_ancestry
end


# lady_child_array = []

# lady_grandchild_array = []

# parent = Category.create(name: 'レディース')
# lady_child_array.each_with_index do |child, i|
#  child = parent.children.create(name: child)
#  lady_grandchild_array[i].each do |grandchild|
#    child.children.create(name: grandchild)
#  end
# end