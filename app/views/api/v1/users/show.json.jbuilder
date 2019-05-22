json.user do
    json.username
    json.id
    json.shows
    json.comments
    json.avatarURL url_for(user.photo)
end