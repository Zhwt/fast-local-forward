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

## Motivation

Initially I just want a small port forwarding utility. But after some search on Google, I found out that almost everyone is suggesting using iptables or ssh, and all of them needs many configuration. So I decided to start my own "SSH version" local port forward tool using Docker. But after I pushed this image on to Docker Hub, I found out that there are already many similar images. Very impressive lesson for "how to search effectively".

## License

[MIT](https://github.com/Zhwt/fast-local-forward/blob/master/LICENSE)