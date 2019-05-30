class Author
	attr_accessor :name, :posts

	@@all = []

	def initialize(name)
		@name = name
		@posts = []
		@@all << self
	end

	def add_post(post)
		@posts << post
		post.author = self
	end

	def add_post_by_title(title)
		newPost = Post.new(title)
		@posts << newPost
		newPost.author = self
	end

	def self.all
		@@all
	end

	def self.post_count
		count = 0
		self.all.each do |author|
			count += author.posts.count
		end
		count
	end
end