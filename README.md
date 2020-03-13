# fast-local-forward

fast-local-forward is a docker image that lets you start local port forwarding very quickly. No need to configure iptables and create special ssh account for local port forwarding.

## Introduction

Have you ever spent a lot of time configuring various tools just to forward one local port to the remote?

Have you ever wanted to forward one local port and spent countless hours just configuring iptables and set up auto ssh login?

Port forwarding should be simple.

Focus on your code, not on tool configuration.

## Features

* Zero configuration.
* Easy to use.

How to start local port forwarding in 1 minute?

## Usage

In your terminal:

```
docker run -d --restart=always -p 2222:2222 -e REMOTE_HOST=example.com -e REMOTE_PORT=22 zhwt/fast-local-forward
```

Just that simple. No overhead configuration.

## License

[MIT](https://github.com/Zhwt/fast-local-forward/blob/master/LICENSE)