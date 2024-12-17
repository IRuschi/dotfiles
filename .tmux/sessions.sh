#!/bin/bash

function create_session() {
  if [ "$(tmux list-sessions | grep "$1")" == "" ]
  then
    FRONTEND=$(frontend_dir "$1")
    BACKEND=$(backend_dir "$1")

    # Start new session with name
    tmux new-session -d -s "$1"

    # Name first Pane and start zsh
    echo "First pane: $FRONTEND"
    tmux rename-window -t "$1":1 'Frontend'
    tmux send-keys -t "$1":1 "cd $FRONTEND" C-m "clear" C-m

    # Name second Pane and start zsh
    echo "Second pane: $BACKEND"
    tmux new-window -t "$1":2 -n 'Backend'
    tmux send-keys -t "$1":2 "cd $BACKEND" C-m "clear" C-m
  fi
}

REPOS="$HOME/repos"

function frontend_dir() {
  DIR="${REPOS}/${1}/"
  FRONTEND="$(find "$DIR" -maxdepth 2 -type d -name "*-ui" | tail -n 1)"
  echo "$FRONTEND" 
}

function backend_dir() {
  DIR="${REPOS}/${1}/"
  BACKEND="$(find "$DIR" -maxdepth 1 -type d -name "*-api")"
  echo "$BACKEND" 
}

create_session 'proma' 
create_session 'qm2' 

