#!/bin/bash

# Часть 1: Установка зависимостей

echo "Установка системных зависимостей..."
sudo apt-get update
sudo apt-get install -y python3 python3-venv python3-pip git

echo "Установка CUDA и cuDNN (если необходимо)..."
sudo apt-get install -y nvidia-cuda-toolkit

echo "Создание виртуального окружения..."
python3 -m venv sd-env
source sd-env/bin/activate

echo "Установка Python-зависимостей..."
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu113
pip install diffusers transformers scipy

echo "Часть 1 завершена."
