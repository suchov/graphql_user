Types::PostType = GraphQL::ObjectType.define do
  name 'PostType'

  field :body, types.String, description: 'The body of the post'
  field :id, !types.ID, description: 'Id of the post'

  field :all_comments, types[Types::CommentType] do
    description 'All comments'
    resolve ->(_, _, _) { Comment.all }
  end
end
