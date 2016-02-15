require 'faker'
require 'ffaker'
require 'useragents'

namespace :posts do
  desc "generate fake post data posts_num default: 10 clean_db default false"
  task :gen_fake_data, [:posts_num, :clean_db] => :environment  do |t ,args|
    posts_num = args[:posts_num].present? ? args[:posts_num].to_i : 10
    Post.destroy_all if args[:clean_db].present?
    posts_num.times do |n|
      post = Post.create(
        post_author: FFaker::NameCN.name,
        post_date: Faker::Date.between(10.years.ago, Date.today),
        post_content: FFaker::LoremCN.paragraphs.join(','),
        post_title: FFaker::LoremCN.sentence,
        post_name: FFaker::LoremCN.sentence,
      )

      post.comments.create(
        comment_author: FFaker::NameCN.name,
        comment_author_email: FFaker::Internet.safe_email,
        comment_author_url: FFaker::Internet.http_url,
        comment_author_IP: FFaker::Internet.ip_v4_address,
        comment_agent: UserAgents.rand
      )

      print '.'
    end
    print "\nOK.\n"
  end

end
