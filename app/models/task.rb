class Task < ActiveRecord::Base

  belongs_to :user

  before_create :set_state

  scope :state_is, lambda { |st| where(:state => st) }

  def complete
    self.update_attributes(:state => "completed")
  end

  def delete
    self.update_attributes(:state => "deleted")
  end

  private

  def set_state
    self.state = 'new'
  end
end
