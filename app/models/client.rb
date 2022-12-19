class Client < ApplicationRecord
  has_many :memberships
  has_many :gyms, through: :memberships

  def show 
    client = Client.find_by!(id: params[:id])
    render json: client, status: :ok 
  end
end
