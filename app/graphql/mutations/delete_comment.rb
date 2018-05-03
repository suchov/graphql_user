class Mutations::DeleteComment < GraphQL::Function
  argument :id, types.ID

  type types.Boolean

  def call(obj, args, ctx)
    Comment.find(args[:id]).destroy ? true : false
  end
end
