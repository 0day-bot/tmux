tmux new-session -s development -n editor -d 

# C-m tells tmux to send carriage return
tmux send-keys -t development 'cd ~/devproject' C-m

tmux send-keys -t development 'vim' C-m

tmux split-window -v -t development

tmux select-layout -t development main-horizontal

# target a pane using format [session]:[window].[pane]

tmux send-keys -t development:1.2 'cd ~/devproject' C-m

tmux new-window -n console -t development

tmux send-keys -t development:2 'cd ~/devproject' C-m

tmux select-window -t development:1

tmux attach -t development
