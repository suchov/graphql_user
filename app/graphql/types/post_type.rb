Types::PostType = GraphQL::ObjectType.define do
  name 'PostType'

  field :body, types.String, description: 'The body of the post'
  field :id, !types.ID # !not allow the field to be nil - always must have value

end
