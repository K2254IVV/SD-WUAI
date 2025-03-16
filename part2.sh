#!/bin/bash

# Часть 2: Клонирование и настройка Stable Diffusion

echo "Клонирование репозитория Stable Diffusion..."
git clone https://github.com/CompVis/stable-diffusion.git
cd stable-diffusion

echo "Установка зависимостей для Stable Diffusion..."
pip install -r requirements.txt

echo "Скачивание модели..."
wget https://huggingface.co/CompVis/stable-diffusion-v-1-4-original/resolve/main/sd-v1-4.ckpt -O models/sd-v1-4.ckpt

echo "Часть 2 завершена."
