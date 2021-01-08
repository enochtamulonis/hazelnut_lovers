class Post < ApplicationRecord
  belongs_to :lover
  has_many :hazelnuts
  has_many :propagations

  def hazelnuts_count
    hazelnuts.count
  end

  def propagations_count
    propagations.count
  end

  def is_hazelnutted_by(lover)
    Hazelnut.where(post: self, lover: lover) == [] ? false : true
  end

  def is_propagated_by(lover)
    Propagation.where(post: self, lover: lover) == [] ? false : true
  end
end
