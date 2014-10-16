class Reply < ActiveRecord::Base
  belongs_to :comment, touch: true
end
