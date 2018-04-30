Types::CommentType = GraphQL::ObjectType.define do
  name 'CommentType'

  field :body, types.String, description: 'The body of the comment'
  field :id, !types.ID # !not allow the field to be nil - always must have value

end
