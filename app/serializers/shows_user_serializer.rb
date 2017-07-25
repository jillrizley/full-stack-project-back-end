class ShowsUserSerializer < ActiveModel::Serializer
  attributes :id, :show_id, :user_id


def show
  object.show.pluck(:artist)
end
end
