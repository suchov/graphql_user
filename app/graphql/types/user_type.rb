Types::UserInputType = GraphQL::InputObjectType.define do
  name 'UserInputType'
  description 'Properties for creaing or updating User'

  argument :first_name, types.String, description: 'The first name of the user'
  argument :last_name, types.String
  argument :street, types.String
  argument :number, types.Int
  argument :city, types.String
  argument :postcode, types.Int
  argument :country, types.String
end

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

  field :full_adrress, types.String do
    description 'Full address of the user'
    resolve ->(o, _, _) { [o.postcode, o.country, o.street, o.number].compact.join(' ') }
  end

  field :full_name, types.String do
    description 'Full name of the user'
    resolve ->(o, _, _) { [o.first_name, o.last_name].compact.join(' ') }
  end

  field :errors, types[types.String], 'Reasons object could not be saved' do
    resolve ->(obj, _, _) { obj.errors.to_a }
  end
end
