## How it Works
Download and unzip the script file
![Unzipped dir in Finder](/images/image3.png)

Open Terminal (CMD+Spacebar, search "Terminal")

Drag "ffmpeg-automator.sh" into Terminal 

Press Enter/Return
![Installing](/images/image1.png)

You'll be prompted to enter your computer's login password to continue with install
![Sudo password prompt.](/images/image2.png)

Once installation is complete, you can right-click on a folder containing an image sequence in Finder. Select "Services" in the context menu and click on "JPEG Sequence -> mp4"
![Unzipped dir in Finder](/images/image4.png)


Once the image sequence has been converted, an .MP4 will appear in the same folder as the image sequence. 

## Caveats
- This is not an officially supported Google product.

- Converts JPEG image sequences (30/60fps) to videos only 

- Script will only install FFmpeg and/or Homebrew if FFMPEG is not installed on your computer already. 

## Uninstalling
Go to Terminal and paste (this will uninstall FFmpeg and Homebrew):
``` shell
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)" 
```

Go to Finder, CMD+SHIFT+G and type "~/Library/Services" 
Delete JPEG Sequence -> MP4 (30fps) and (60fps)
