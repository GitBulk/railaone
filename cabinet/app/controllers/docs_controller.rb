class DocsController < ApplicationController

  before_action :find_doc, only: [:show, :edit, :update, :destroy]

  def index
    @docs = Doc.all
  end

  def show
  end

  def new
    @doc =  Doc.new
  end

  def create
    @doc = Doc.new(doc_params)

    if @doc.save
      # save successfully and redirect to show action
      redirect_to @doc
    else
      render "new"
    end
  end

  def edit
    puts "kaedit"
  end

  def update
    puts "kaupdate"
  end

  def destroy

  end

  private
  def find_doc
    @doc = Doc.find(params[:id])
  end

  def doc_params
    params.require(:doc).permit(:title, :content)
  end
end
