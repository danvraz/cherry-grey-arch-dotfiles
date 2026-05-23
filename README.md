# 🍒 cherry-grey-arch-dotfiles

My personal Arch Linux dotfiles built around a **cherry red & grey** aesthetic. Custom-crafted from scratch — no pre-built themes, just my own config.

> ⚠️ These are my personal dotfiles. Install at your own risk — always review configs before applying them to your system.

---

## 🖼️ Preview
<img width="1920" height="1080" alt="VID-20260208-WA0007(1) - frame at 0m2s" src="https://github.com/user-attachments/assets/a83414a4-ac76-4a26-a10a-af6a06daf154" />
<img width="1920" height="1080" alt="VID-20260208-WA0007(1) - frame at 0m0s" src="https://github.com/user-attachments/assets/e0d16477-ed15-49a0-aa31-76a003bc6d91" />
<img width="1920" height="1080" alt="VID-20260208-WA0007(1) - frame at 0m5s" src="https://github.com/user-attachments/assets/fea33093-f787-45cb-95f5-062e04ab1a49" />
<img width="1920" height="1080" alt="VID-20260208-WA0007(1) - frame at 0m13s" src="https://github.com/user-attachments/assets/59e2a12e-310d-46cc-ba03-03b76c8b273a" />
<img width="1920" height="1080" alt="VID-20260208-WA0007(1) - frame at 0m16s" src="https://github.com/user-attachments/assets/c4fc6e59-644b-4369-84e3-7f62d842b77e" />
<img width="1920" height="1080" alt="VID-20260208-WA0007(1) - frame at 0m18s" src="https://github.com/user-attachments/assets/3524479e-ebc0-4d74-be66-dc723dd60c09" />
<img width="1920" height="1080" alt="VID-20260208-WA0007(1) - frame at 0m20s" src="https://github.com/user-attachments/assets/a5999a4d-a3dc-4936-9a84-9e43db9596b0" />
<img width="1920" height="1080" alt="VID-20260208-WA0007(1) - frame at 0m24s" src="https://github.com/user-attachments/assets/83b1aafc-b7fa-4233-87dc-1f33abdf8c71" />
<img width="1920" height="1080" alt="VID-20260208-WA0007(1) - frame at 0m30s" src="https://github.com/user-attachments/assets/b55801ee-0a99-4c95-8802-0871e95c574e" />




## ⚙️ System

| Component       | Details                        |
|-----------------|-------------------------------|
| **OS**          | Arch Linux                    |
| **WM**          | Hyprland (Wayland)            |
| **Bar**         | Waybar                        |
| **Shell**       | Bash                          |
| **Lockscreen**  | swaylock-effects              |
| **Wallpaper**   | waypaper                      |
| **Cursor**      | Bibata                        |
| **Icons**       | Tela Icon Theme               |
| **Music**       | rmpc                          |
| **Logout menu** | wlogout                       |

---

## 📁 Structure

```
.
├── .config/        # All app configs (Hyprland, Waybar, etc.)
├── .bashrc         # Bash config & aliases
├── pkglist.txt     # Full pacman package list
├── aur-packages.txt# AUR packages (installed via yay)
└── enabled-services.txt # Systemd services
```

---

## 📦 AUR Packages

Managed with `yay`. Full list in [`aur-packages.txt`](./aur-packages.txt).

Key packages include: `ani-cli`, `auto-cpufreq`, `bibata-cursor-theme`, `bluetuith`, `envycontrol`, `rmpc-git`, `swaylock-effects`, `waypaper`, `waybar-git`, `wlogout`, `tela-icon-theme-kde-accent-git`, `tty-clock`, `neofetch`

---

## 🚀 Installation

> These steps will overwrite existing configs. **Back up your dotfiles first.**

**1. Clone the repo**
```bash
git clone https://github.com/danvraz/cherry-grey-arch-dotfiles.git
cd cherry-grey-arch-dotfiles
```

**2. Install yay (AUR helper)**
```bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
```

**3. Install pacman packages**
```bash
sudo pacman -S --needed - < pkglist.txt
```

**4. Install AUR packages**
```bash
yay -S --needed - < aur-packages.txt
```

**5. Copy configs**
```bash
cp -r .config/* ~/.config/
cp .bashrc ~/
```

**6. Enable services**
```bash
# Review enabled-services.txt and enable what you need
# e.g. systemctl enable --user pipewire
```

---

## 🎨 Theme

The setup follows a **cherry red (`#cc2936`) on cool grey** palette — sharp, minimal, and opinionated. Everything from Hyprland borders to Waybar modules is tuned to this color scheme.

---

## 📝 License

Do whatever you want with this. MIT.
