#!/bin/bash

# Часть 3: Установка и настройка Web UI

echo "Клонирование репозитория Web UI..."
cd ..
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
cd stable-diffusion-webui

echo "Установка зависимостей для Web UI..."
pip install -r requirements.txt

echo "Настройка Web UI..."
cp ../stable-diffusion/models/sd-v1-4.ckpt models/

echo "Часть 3 завершена."
