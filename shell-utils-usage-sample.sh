#!/usr/bin/env bash

# include the utility file to access its functions
source shell-utils.sh

print_header "Sample output using shell-utils.sh"

print_message "Message (error) without a line break..."
indicator_red
print_message "Message (warning) without a line break..."
indicator_amber
print_message "Message (good) without a line break..."
indicator_green

print_message_with_param "Message with a second parameter" "param"
indicator_green

print_message_with_timestamp "Message line with a timestamp..."
indicator_green


print_message_with_timestamp "Starting the script..." "\n"
time_script_start

print_message_with_timestamp "Working..." "\n"

# 1-10 second random sleep/pause in the script
sleep $[($RANDOM%10)+1]s

print_message_with_timestamp "Coming to an end..." "\n"
time_script_end

time_script_total_runtime

exit 0
