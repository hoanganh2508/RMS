class TablesController < ApplicationController
  before_action :find_table, only: [:index]

  def index
    @table = Table.all
  end

  private
    def find_table
      @table = Table.find_by(id: params[:id])
    end
end
