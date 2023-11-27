## My env and dotfiles

### 1) init
```bash
#!/bin/bash

directories=(
   "./nvim"
   "./terminal"
   "./tmux"
   "./vim"
)

for dir in "${directories[@]}"; do
   cd "$dir"
   chmod +x init.sh
   ./init.sh
   cd -
done
```

### 2) add font and color in the terminal
