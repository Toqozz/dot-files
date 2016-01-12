function stream
	set stream (echo $argv | awk -F' ' '{ print $1 }')
	switch (echo $argv | awk -F' ' '{ print $2 }')
    case high
	    livestreamer twitch.tv/$stream high --player 'mpv --cache 1024' --hls-segment-threads 3
    case medium
	    livestreamer twitch.tv/$stream medium --player 'mpv --cache 1024' --hls-segment-threads 3
    case low
	    livestreamer twitch.tv/$stream low --player 'mpv --cache 1024' --hls-segment-threads 3
    case worst
	    livestreamer twitch.tv/$stream worst --player 'mpv --cache 1024' --hls-segment-threads 3
    case best '*'
	    livestreamer twitch.tv/$stream best --player 'mpv --cache 1024' --hls-segment-threads 3
    end
end
