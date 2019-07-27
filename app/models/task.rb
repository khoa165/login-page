class Task < ActiveRecord::Base
  belongs_to :user

  validates :task_name, presence: true, length: { minimum: 3 }
end
