require 'spec_helper'

describe "associados/index.html.erb" do
  before(:each) do
    assign(:associados, [
      stub_model(Associado,
        :nome => "Nome",
        :email => "Email"
      ),
      stub_model(Associado,
        :nome => "Nome",
        :email => "Email"
      )
    ])
  end

  it "renders a list of associados" do
    render
    rendered.should have_selector("tr>td", :content => "Nome".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Email".to_s, :count => 2)
  end
end
