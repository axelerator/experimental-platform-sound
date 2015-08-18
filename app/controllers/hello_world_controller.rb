class HelloWorldController < ApplicationController
  def index
    render text: "Hello World"
  end

  def play
    pid = fork{ exec 'mpg123','-q', Rails.root.join('app', 'mp3', 'sega.mp3').realpath.to_s }
    render text: Rails.root.join('app', 'mp3', 'sega.mp3').realpath
  end
end
