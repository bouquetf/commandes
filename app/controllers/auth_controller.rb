class AuthController < ApplicationController
  include AuthHelper

  def login
    @login_url = get_login_url
    respond_to do |format|
      format.html
      format.json { render json: {:url => @login_url}.to_json }
    end
  end

  def gettoken
    token = get_token_from_code params[:code]
    session[:azure_access_token] = token.token
    session[:user_email] = get_email_from_id_token token.params['id_token']

    render text: "Access token saved in session cookie."
  end
end
