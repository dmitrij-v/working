class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :notes
  after_create :update_level

  enum level: { free: 0, author: 1, editor: 2, admin: 3 }

  def self.start_recipe
    RequestService.new.day_list
  end

  private

  def update_level
    update(level: 0)
  end
end
