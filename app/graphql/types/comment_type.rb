Types::CommentType = GraphQL::ObjectType.define do
  name 'CommentType'

  field :body, types.String, description: 'The body of the comment'
  field :id, !types.ID, description: 'Id of the comment'

end
