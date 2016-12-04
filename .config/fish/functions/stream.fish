function stream
	set stream (echo $argv | awk -F' ' '{ print $1 }')
	switch (echo $argv | awk -F' ' '{ print $2 }')
    case high
	    livestreamer twitch.tv/$stream high --player 'mpv --cache 1024' --hls-segment-threads 3 --twitch-oauth-token 9bw3kj36gsp0dkfnyfr3idd7rvv0zc
    case medium
	    livestreamer twitch.tv/$stream medium --player 'mpv --cache 1024' --hls-segment-threads 3 --twitch-oauth-token 9bw3kj36gsp0dkfnyfr3idd7rvv0zc
    case low
	    livestreamer twitch.tv/$stream low --player 'mpv --cache 1024' --hls-segment-threads 3 --twitch-oauth-token 9bw3kj36gsp0dkfnyfr3idd7rvv0zc
    case worst
	    livestreamer twitch.tv/$stream worst --player 'mpv --cache 1024' --hls-segment-threads 3 --twitch-oauth-token 9bw3kj36gsp0dkfnyfr3idd7rvv0zc
    case best '*'
	    livestreamer twitch.tv/$stream best --player 'mpv --cache 1024' --hls-segment-threads 3 --twitch-oauth-token 9bw3kj36gsp0dkfnyfr3idd7rvv0zc
    end
end
