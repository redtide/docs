cd $PWD

if [ "$1" == "--help" ] ||  [ "$1" == "-h" ]; then
	echo "Usage: setup [option]"
	echo "Setup and run Jekyll"
	echo ""
	echo "Options are not mandatory, only one at a time."
	echo "-a, --assets      Build minimized css style and js script from sources."
	echo "-i, --install     Install Bundler and node modules using Yarn."
	exit 0
fi

if [ ! -d ".bundle" ] || [ "$1" == "-i" ] || [ "$1" == "--install" ]; then
	gem update --user-install
	gem install bundler --user-install
	bundle config set path '.bundle'
	bundle install
fi

if [ ! -d "node_modules" ] || [ "$1" == "-i" ] || [ "$1" == "--install" ]; then
	yarn --no-bin-links
fi

if [ ! -f "assets/css/style.min.css" ] || [ "$1" == "-a" ] || [ "$1" == "--assets" ]; then
	echo "Running Yarn dist..."
	yarn dist
fi

echo "Running Jekyll..."
bundle exec jekyll serve --watch --host=0.0.0.0
