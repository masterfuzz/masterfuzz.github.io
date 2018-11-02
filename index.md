---
title: Index
---

## Reoccuring Ideas:

Spring Soup

Puzzle Game

Auto Mover

Open Source Social Network

[MTG App](/mtg)

## Posts
{% for post in site.posts %}
* [{{post.date | truncatewords: 1, ""}} - {{post.title}}]({{post.url}})
{% endfor %}
