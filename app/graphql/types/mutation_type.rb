Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'
  # Create Create/Update/Delete mutations for User/Post/Comment
  # Use input types and query variables
  # Add at least one validation rule to the models, and check for errors
  field :createUser, function: Mutations::CreateUser.new
  field :updateUser, function: Mutations::UpdateUser.new
  field :deleteUser, function: Mutations::DeleteUser.new
  field :createComment, function: Mutations::CreateComment.new
  field :updateComment, function: Mutations::UpdateComment.new
  field :deleteComment, function: Mutations::DeleteComment.new
  field :createPost, function: Mutations::CreatePost.new
  field :updatePost, function: Mutations::UpdatePost.new
  field :deletePost, function: Mutations::DeletePost.new
end
