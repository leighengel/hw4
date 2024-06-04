class EntriesController < ApplicationController


def create
      @user = User.find_by({ "id" => session["user_id"] })
      if @user != nil
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @post.uploaded_image.attach(params["uploaded_image"])
    @post["user_id"] = @user["id"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = params["place_id"]
    @entry.save
    redirect_to "/places/#{@entry["place_id"]}"
      end
  end

end
