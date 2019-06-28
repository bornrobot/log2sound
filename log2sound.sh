ssh user@server "tail -f /var/log/nginx/access.log" | awk '
  /GET / { system("echo "$8) }
  /GET / { system("playsound.sh 1000 100 > /dev/null") }'
