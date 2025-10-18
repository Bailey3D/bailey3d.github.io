#!/bin/bash
cd /workspace/site
pkill jekyll
bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload --livereload-port 35729 --incremental --config bailey3d.yml
echo "Jekyll started with --livereload on port 35729"
