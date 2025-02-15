if status is-interactive
    # Commands to run in interactive sessions can go here
end
function yy
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
#export CLASSPATH=".:/usr/local/lib/antlr-4.9.1-complete.jar:$CLASSPATH"
export PATH="$PATH:/usr/local/go/bin:/home/bridge71/go/bin"
#export PATH="$PATH:/usr/local/arm/2.95.3/bin"
export GIN_MODE="release"
export EDITOR="nvim"

alias n nvim
alias chz chezmoi
alias icat "kitty +kitten icat"
alias zbridge71 "cd /run/media/bridge71/myArch/@home/bridge71"
#alias antlr4 "java -jar /usr/local/lib/antlr-4.9.1-complete.jar"
alias zroot "cd /run/media/bridge71/myArch"
alias icat "kitten icat"
alias s "kitten ssh"
alias d "kitten diff"
alias nfish "nvim /home/bridge71/.config/fish/config.fish"
alias nkitty "nvim /home/bridge71/.config/kitty/kitty.conf"
alias nks "nvim /home/bridge71/.config/kitty/kitty_session.conf"
alias words /home/bridge71/Public/mywords/mywords-web-linux
#alias grun 'java org.antlr.v4.gui.TestRig'
alias SHUTDOWN "shutdown now"
alias musicfox "/home/bridge71/Music/go-musicfox_4.5.7_linux_amd64/musicfox"
alias src "source /home/bridge71/.config/fish/config.fish"
alias cdwe "cd /home/bridge71/Documents/WeChat_Data/home/Documents/WeChat_Data"
alias bili /home/bridge71/Videos/bili-sync/bili-sync-rs
