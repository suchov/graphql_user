Types::PostType = GraphQL::ObjectType.define do
  name 'PostType'

  field :body, types.String, description: 'The body of the post'
  field :id, !types.ID, description: 'Id of the post'

end
