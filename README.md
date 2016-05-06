# Crowd Finding
A small gem to help you get the relevat data from crowd funding websites.

I use it to track my orders and campaigns I want to back later on.

The gem supports these websites:

1. KickStartter
2. HeadStart
3. ** Maybe you're next!**

## How to use it?
Simple!

Just use the full campaign url and create a finder!

	require "crowd_finder"
	the_light_phone_url = "https://www.kickstarter.com/projects/thelightphone/the-light-phone"
	findr = CrowdFinder.new(the_light_phone_url)
	
## What can I do with the finder?

	findr.precentage
	=> 10
	findr.days_to_go
	=> 33
	findr.project_name
	=> "The Light Phone by Light —Kickstarter"
	findr.num_of_backers
	=> 100
	findr.twitter_link
	=> ""
	findr.pledged
	=> "$10,000"
	findr.goal
	=> "$100,000"
	findr.picture_url
	=> "https://www.headstart.co.il/components/img.aspx?img=images\\userspics\\copy.JPG"
	findr.test_print	
	=> "I'm KickstarterFinder and my url is https://www.kickstarter.com/projects/thelightphone/the-light-phone"

## to_json
	CrowdFinder.new('http://www.headstart.co.il/project.aspx?id=18568').to_json
	=> "{\"name\":\"\\\" מה שהאהבה אומרת לי \\\"\",\"precentage\":57,\"deadline\":\"N/A\",\"days_to_go\":\" 14 ימים שנותרו \",\"backers_count\":\"135\",\"twitter_link\":\"\",\"pledged\":\" 14,910 ₪ \",\"goal\":\"מתוך 26,000 ₪\",\"picture_url\":\"https://www.headstart.co.il/components/img.aspx?img=images\\userspics\\copy.JPG\"}"
	
## Advanced
To reload the HTML run
	
	findr.reload

To set a new URL run
	
	findr.set('http://www.headstart.co.il/project.aspx?id=18568')
	
## Create you own!
All you need to do is create a new class that inherits from `BaseFinder` and implement the mandatory methods.

Or.. you can also override some if you like.

The full HTML is stored in the `@body` member.

**Note that basic `nokogiri` knowledge is needed!**

Don't forget to add your new finder to `FindersFactory` class and commit :)