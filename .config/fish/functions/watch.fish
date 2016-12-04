function watch
	livestreamer $argv best --player "mpv --cache 1024" --hls-segment-threads 3
end
