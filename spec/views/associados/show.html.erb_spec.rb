require 'spec_helper'

describe "associados/show.html.erb" do
  before(:each) do
    @associado = assign(:associado, stub_model(Associado,
      :nome => "Nome",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Nome".to_s)
    rendered.should contain("Email".to_s)
  end
end
