SCRIPTPATH=$(dirname  "$0")

if ! type ffmpeg &> /dev/null; then
	if ! type brew &> /dev/null; then
		# Install Homebrew (brew.sh):
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
	fi
	# Install ffmpeg.
	brew install ffmpeg;
fi

# Create the Library/Services directorty if it doesn't exist.
mkdir -p ~/Library/Services/;

# Copy the workflows.
cp -fR "$SCRIPTPATH/JPEG Sequence -> MP4 (30fps).workflow" ~/Library/Services/;
cp -fR "$SCRIPTPATH/JPEG Sequence -> MP4 (60fps).workflow" ~/Library/Services/;

echo "Done!!"