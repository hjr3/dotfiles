source ~/.bash_profile

# Make forward/backward word behavior like bash
autoload -U select-word-style
select-word-style bash

# The next line updates PATH for the Google Cloud SDK.
if [ -f "/Users/${USER}/bin/google-cloud-sdk/path.zsh.inc" ]; then . "/Users/${USER}/bin/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "/Users/${USER}/bin/google-cloud-sdk/completion.zsh.inc" ]; then . "/Users/${USER}/bin/google-cloud-sdk/completion.zsh.inc"; fi
