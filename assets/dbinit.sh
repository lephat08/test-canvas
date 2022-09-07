#!/bin/bash
# set -e

# export POSTGRES_BIN=/usr/lib/postgresql/12/bin

# sudo -u postgres $POSTGRES_BIN/createuser --superuser canvas
# sudo -u postgres $POSTGRES_BIN/createdb -E UTF-8 -T template0 --lc-collate=en_US.UTF-8 --lc-ctype=en_US.UTF-8 --owner canvas canvas_$RAILS_ENV
# sudo -u postgres $POSTGRES_BIN/createdb -E UTF-8 -T template0 --lc-collate=en_US.UTF-8 --lc-ctype=en_US.UTF-8 --owner canvas canvas_queue_$RAILS_ENV

# export CANVAS_LMS_ADMIN_EMAIL="canvas@example.edu"
# export CANVAS_LMS_ADMIN_PASSWORD="canvas-docker"
# export CANVAS_LMS_ACCOUNT_NAME="Canvas Docker"
# export CANVAS_LMS_STATS_COLLECTION="opt_out"

cd /opt/canvas/canvas-lms \
    && /opt/canvas/.gem/ruby/2.7.0/bin/bundle _2.2.19_ exec rake db:initial_setup --trace

