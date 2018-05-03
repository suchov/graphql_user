class Mutations::CreatePost < GraphQL::Function
  argument :post, Types::PostInputType

  type Types::CommentType

  def call(obj, args, ctx)
    Post.create args[:post].to_h
  end
end
