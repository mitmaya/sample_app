require 'spec_helper'

describe "associados/new.html.erb" do
  before(:each) do
    assign(:associado, stub_model(Associado,
      :new_record? => true,
      :nome => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new associado form" do
    render

    rendered.should have_selector("form", :action => associados_path, :method => "post") do |form|
      form.should have_selector("input#associado_nome", :name => "associado[nome]")
      form.should have_selector("input#associado_email", :name => "associado[email]")
    end
  end
end
