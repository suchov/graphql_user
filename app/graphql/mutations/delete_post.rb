class Mutations::DeletePost < GraphQL::Function
  argument :id, types.ID

  type types.Boolean

  def call(obj, args, ctx)
    Post.find(args[:id]).destroy ? true : false
  end
end
