require 'spec_helper'

describe "associados/edit.html.erb" do
  before(:each) do
    @associado = assign(:associado, stub_model(Associado,
      :new_record? => false,
      :nome => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit associado form" do
    render

    rendered.should have_selector("form", :action => associado_path(@associado), :method => "post") do |form|
      form.should have_selector("input#associado_nome", :name => "associado[nome]")
      form.should have_selector("input#associado_email", :name => "associado[email]")
    end
  end
end
