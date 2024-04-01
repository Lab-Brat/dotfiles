#!/bin/bash

CONFIG_DIR="${HOME}/.config"
KITTY_DIR="${CONFIG_DIR}/kitty"
NEOVIM_CFG="${CONFIG_DIR}/nvim/init.lua"
NVIM_COLOR="vim.cmd.colorscheme"

function enable_light_theme() {
    disable_dark="s/${NVIM_COLOR} 'rose-pine'/-- ${NVIM_COLOR} 'rose-pine'/"
    enable_light="s/-- ${NVIM_COLOR} 'rose-pine-dawn'/${NVIM_COLOR} 'rose-pine-dawn'/"
    sed -i "${enable_light}" "${NEOVIM_CFG}"
    sed -i "${disable_dark}" "${NEOVIM_CFG}"
    echo "Neovim config updated"

    unlink "${KITTY_DIR}/theme.conf" 
    ln -s "${KITTY_DIR}/rose-pine/dist/rose-pine-dawn.conf" "${KITTY_DIR}/theme.conf"
    echo "Kitty config updated"
}

function enable_dark_theme() {
    enable_dark="s/-- ${NVIM_COLOR} 'rose-pine'/${NVIM_COLOR} 'rose-pine'/"
    disable_light="s/${NVIM_COLOR} 'rose-pine-dawn'/-- ${NVIM_COLOR} 'rose-pine-dawn'/"
    sed -i "${enable_dark}" "${NEOVIM_CFG}"
    sed -i "${disable_light}" "${NEOVIM_CFG}"
    echo "Neovim config updated"

    unlink "${KITTY_DIR}/theme.conf" 
    ln -s "${KITTY_DIR}/rose-pine/dist/rose-pine.conf" "${KITTY_DIR}/theme.conf"
    echo "Kitty config updated"
}

if [ "$1" = "light" ]; then
    enable_light_theme
elif [ "$1" = "dark" ]; then
    enable_dark_theme
else
    echo "Invalid argument. Please pass either 'light' or 'dark'."
fi
