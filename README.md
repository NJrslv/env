## My env and dotfiles

### 1) init
```bash
#!/bin/bash

directories=(
   "./terminal"
   "./tmux"
   "./vim"
   "./nvim"
)

for dir in "${directories[@]}"; do
   cd "$dir"
   chmod +x init.sh
   ./init.sh
   cd -
done
```

### 2) add font and color in the terminal
