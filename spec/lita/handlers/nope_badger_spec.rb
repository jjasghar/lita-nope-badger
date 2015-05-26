require "spec_helper"

describe Lita::Handlers::NopeBadger, lita_handler: true do

  it { is_expected.to route("nope badger") }

  it "should respond with the correct url" do
    send_message("nope badger")
    expect(replies.last).to eq("http://www.reactiongifs.com/r/oh-shi.gif")
  end

end
