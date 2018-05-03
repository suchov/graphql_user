Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'
  # Create Create/Update/Delete mutations for User/Post/Comment
  # Use input types and query variables
  # Add at least one validation rule to the models, and check for errors
  field :createUser, function: Mutations::CreateUser.new
end
