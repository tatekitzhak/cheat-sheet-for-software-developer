## Network and Statistics
- 
- 

### `netstat` command - netstat provides statistics about all active connections
https://www.ionos.com/digitalguide/server/tools/introduction-to-netstat/

1. `netstat -tulpn` - Active Internet connections 
2. `netstat -antup` - Here it can monitor all(`a`) listening numeric (`n`) tcp (`t`) and udp (`u`) process (`p`).
3. `netstat -nputw` - lists all UDP (`u`), TCP (`t`) and RAW (`w`) outgoing connections (not using l or a) in a numeric form (`n`, prevents possible long-running DNS queries) and includes the program (`p`) associated with that.

## `ss` command: Display Linux TCP / UDP Network/Socket Information
### `ss` command-line utility that allows us to view network connections and other detailed information
- https://www.cyberciti.biz/tips/linux-investigate-sockets-network-connections.html
- https://www.ionos.com/digitalguide/server/tools/introduction-to-netstat/

1. `sudo ss -lntp` - view network connections 
2. use `sudo lsof -i TCP:80` to see what application is listening on port 80: 