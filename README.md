# nvim-config

My personal **Neovim configuration** powered by `packer.nvim`.

---

## 🚀 Installation

1. **Install `packer.nvim`**

   ```bash
   git clone --depth 1 https://github.com/wbthomason/packer.nvim \
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```

2. **Add the config**
   Copy the `nvim` folder into your `~/.config/` directory:

   ```bash
   cp -rf nvim ~/.config/
   ```

---

## ⚙️ Setup

1. Open Neovim and run:

   ```vim
   :so
   :PackerSync
   :so
   ```

2. Exit Neovim, then in your shell run:

   ```bash
   source nvim
   ```

---

## 🔑 Hotkeys

My Neovim configuration uses **Space (`<Space>`)** as the `<leader>` key.  
Here are the main shortcuts:

- `<leader> + s` → Open **Telescope**
- `<leader> + n` → Toggle **Norminette Checker** (activate/deactivate)
- `<leader> + u` → Open **Undotree**
- `<leader> + e` → Open **Vim file explorer** (`:Ex`)
- `<leader> + t` → Open **Telescope**

---

## 🎉 Done!

Your Neovim should now be ready with all plugins and settings.

---