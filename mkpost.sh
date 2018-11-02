#!/bin/bash

title="$@"
slug=`echo -n $title | tr '[:upper:]' '[:lower:]' | tr '[:space:]' '-'`

cat > _posts/`date +%Y-%m-%d`-$slug.md <<EOF
---
layout: post
title: "$title"
---

# $title
Hello World

EOF

