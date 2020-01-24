class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :notes
  after_create :check_telegram

  enum level: { free: 0, author: 1, editor: 2, admin: 3 }

  def self.start_recipe
    RequestService.new.recipe
  end

  private

  def check_telegram
    update(level: 0)
  end
end
