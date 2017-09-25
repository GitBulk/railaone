class DocsController < ApplicationController
  def index
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

  end

  def destroy

  end

  private
  def find_doc

  end

  def doc_params
    params.require(:doc).permit(:title, :content)
  end
end
