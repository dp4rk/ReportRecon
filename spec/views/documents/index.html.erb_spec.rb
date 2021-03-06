require 'rails_helper'

RSpec.describe "documents/index", type: :view do
  before(:each) do
    assign(:documents, [
      Document.create!(
        :link_to_file => "Link To File",
        :section => nil
      ),
      Document.create!(
        :link_to_file => "Link To File",
        :section => nil
      )
    ])
  end

  it "renders a list of documents" do
    render
    assert_select "tr>td", :text => "Link To File".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
