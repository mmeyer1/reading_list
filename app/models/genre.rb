class Genre < ActiveRecord::Base
  has_many :books, dependent: :destory
end
