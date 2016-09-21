class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]

	def index
	end

	def new
	end

	def create
		@post = Post.new(post_params)

		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
		def find_post
			@post = Post.find(params[:id])
		end

		def post_params
			params.require(:post).permit(:title, :body)
		end
end
