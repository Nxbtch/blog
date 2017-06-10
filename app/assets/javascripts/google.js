/*The default matcher for compiling files includes application.js, application.css and all non-JS/CSS files 
(this will include all image assets automatically) from app/assets folders including your gems:

  [ Proc.new { |filename, path| path =~ /app\/assets/ && !%w(.js .css).include?(File.extname(filename)) },
  /application.(css|js)$/ ]

If you have other manifests or individual stylesheets and JavaScript files to include, you can add them to 
the precompile array in config/initializers/assets.rb:

  Rails.application.config.assets.precompile += %w( admin.js admin.css )
*/

/*
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

ga('create', "<", 'auto');
ga('send', 'pageview');

*/
