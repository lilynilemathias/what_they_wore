class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def instagram_client
  	Instagram.client(access_token: session[:instagram_token])
  end

  def sign_in(auth_hash)
  	session[:instagram_token] = auth_hash["credentials"]["token"]
  end

  def signed_in?
  	session.has_key? :instagram_token
  end

  helper_method :signed_in?
end	

# class SearchController < ApplicationController
#   def index
#   	access_token = " YOUR ACCESS TOKEN HERE"
#     client = Instagram.client(access_token: access_token)
#     default_search = client.tag_search('chicken')

#     if params[:q]
#       search_query = client.tag_search(params[:q])
#       @tag = search_query.present? ? search_query : default_search
#     else
#       @tag = default_search
#     end

#     @tag = @tag.first.name
#     @results = client.tag_recent_media(@tag)
#   end