### Notify on long command completion

# If commands runs >= 10 seconds, notify user on completion
if test $CMD_DURATION
    if test $CMD_DURATION -gt (math "1000 * 10")
        set secs (math "$CMD_DURATION / 1000")
        notify-send "$history[1]" "Returned $status, took $secs seconds."
    end
end
