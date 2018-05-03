class Mutations::UpdatePost < GraphQL::Function
  argument :id, types.ID
  argument :post, Types::PostInputType

  type Types::PostType

  def call(obj, args, ctx)
    post = Post.find(args[:id])
    post.try :update, args[:post].to_h
    post
  end
end
