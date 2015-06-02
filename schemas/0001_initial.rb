schema "0001 initial" do

  entity "Todo" do
    string :body
    integer32 :priority
    integer32 :status
  end

  # Examples:
  #
  # entity "Person" do
  #   string :name, optional: false
  #
  #   has_many :posts
  # end
  #
  # entity "Post" do
  #   string :title, optional: false
  #   string :body
  #
  #   datetime :created_at
  #   datetime :updated_at
  #
  #   has_many :replies, inverse: "Post.parent"
  #   belongs_to :parent, inverse: "Post.replies"
  #
  #   belongs_to :person
  # end

end
