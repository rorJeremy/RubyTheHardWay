#!/usr/bin/expect
set timeout 9
set username [lindex $argv 0]
set servername [lindex $argv 1]
log_user 0

if { ([llength $username] != 0) && ([llength $servername] != 0) } {
  spawn ssh -q -o StrictHostKeyChecking=no $username@$servername
} else {
  send_user "\nYou have to give a valid username and server.\n"; exit 1
}

expect {
  timeout { send_user "\nFailed to get server prompt\n"; exit 1 }
  "*\$ "
}
log_user 1

send_user "\nSSH Successful!\n"
send "exit\r"
close