class Blog < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  # favorite_usersはアソシエーション名（メソッド名）なので
  # 他の名前で定義してもエラーにはならない
  validates :title, presence: true
end
