# Ruby Sockets

Small college project to make an mini app to send/receive messages using Sockets with a specified environment.

# Environment

- Language: Ruby v3.0.2
- Protocol: UDP
- OS: Windows 11 Pro (21H2)

Original source from Sockets code: <https://zetcode.com/ruby/socket/>

## Usage

With ruby installed:

Open a Terminal and type:

```sh
ruby ./src/tcp_web_server.rb
```

**To run a simple web server on <localhost:8080>**

```sh
ruby ./src/udp_echo_server.rb
```

**To run a simple (really bad) messaging server on <127.0.0.1:4444> or <localhost:4444>**

**Then, open another terminal and run the command.**

```sh
ruby ./src/udp_client.rb
```

**To run a simple (really bad) messaging client.**
