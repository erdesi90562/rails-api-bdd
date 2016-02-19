require 'rails_helper' #rails helper has RSpec in it.

RSpec.describe 'Articles API' do  #'Articles API' test name in console.
  def article_params
    {
      title: 'One Weird Trick',
      content: 'You won\'t believe what happens next...'
    }
  end

  def articles
    Article.all # Article is from Active record.
  end

  def article
    Article.first
  end

  before(:all) do # setup
    Article.create!(article_params)
  end

  after(:all) do # tare down
    Article.delete_all
  end

  describe 'GET /articles' do # 'GET /articles' test name in console.
    it 'lists all articles' do
      get '/articles' # get from rails support. Actually goning to send a get request. rspect rails

      expect(response).to be_success

      articles_response = JSON.parse(response.body) # into a ruby HASH or an ARRAY (aka: ruby object)!!!
      expect(articles_response.length).to eq(articles.count) # articles_response.length counts the things in the JSON   # ARTICLE is from active record. It counts records in the DB.
      expect(articles_response['articles'].first['title']).to eq(article.title) # Json used sting key. to access MUST USE string key!!! NOT A SYMBOL!!!!!
    end
  end

  describe 'GET /articles/:id' do
    it 'shows one article' do
      get "/articles/#{article.id}"

      expect(response).to be_success

      articles_response = JSON.parse(response.body)
      expect(articles_response['article']['id']).to eq(article.id)
      expect(articles_response['article']['title']).to eq(article_params[:title])

    end
  end

  describe 'POST /articles' do
    skip 'creates an article' do
    end
  end

  describe 'PATCH /articles/:id' do
    def article_diff
      { title: 'Two Stupid Tricks' }
    end

    skip 'updates an article' do
    end
  end

  describe 'DELETE /articles/:id' do
    skip 'deletes an article' do
    end
  end
end
