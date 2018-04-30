Types::UserType = GraphQL::ObjectType.define do
  name 'UserType'

  field :first_name, types.String, description: 'The first name of the user'
  # last name, street, number, city, postcode, country
  field :last_name, types.String, description: 'The last name of the user'
  field :street, types.String, description: 'The street on which user leaves'
  field :number, types.Int, description: 'The number of the building'
  field :city, types.String, description: 'The city where all this happens'
  field :postcode, types.Int, description: 'The postal code of all that'
  field :country, types.String, description: 'In what country all that happens'
  field :id, !types.ID # !not allow the field to be nil - always must have value

  field :all_posts, types[Types::PostType] do
    description 'All posts'
    resolve ->(_, _, _) { Post.all }
  end

  field :all_comments, types[Types::CommentType] do
    description 'All comments'
    resolve ->(_, _, _) { Comment.all }
  end
end
