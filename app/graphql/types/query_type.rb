Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description 'An example field added by the generator'
    resolve ->(obj, args, ctx) {
      'The data is sanding, all is tested, yep!'
    }
  end
  # TODO: fields that mast exists:
  # User (first name, last name, street, number, city, postcode, country), Post(user_id, body) and Comment(user_id, body)
  # Add fields in User to include all Posts, and in Post to include all Comments
  # User should have a custom field to return the full address and the full name.
  # How did you write the method to return the full address of a user?
  field :user, Types::UserType do
    argument :id, types.ID, 'The id of the user to retreve'
    description 'One user'
    resolve ->(obj, args, ctx) {
      User.where(id: args[:id]).first
    }
  end
end
