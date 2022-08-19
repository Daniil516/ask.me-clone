#If you are adding friendly_id gem to big old db
# you need to fill "slug" fields(replacement of id in url) with user nicknames, so:
namespace :slug do
  desc "TODO"
  
  task fill_slug_with_user_nicknames: :environment do
    users = User.all
    users.each do |user|
      user.slug = user.nickname
      user.save
    end
  end
end
