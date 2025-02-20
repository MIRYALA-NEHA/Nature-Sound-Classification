# Nature Sound Classification using Deep Learning Methods

## Overview
This project focuses on classifying nature sounds into nine categories using various deep learning models. The classification is achieved by transforming audio signals into time-frequency images and applying Convolutional Neural Networks (CNNs). The project compares the performance of a **vanilla CNN model** with pre-trained deep learning models such as **VGGNet, ResNet, and EfficientNet**.

## Dataset
- The dataset is a subset of the **ESC-50 dataset**, containing environmental sound recordings.
- It includes **nine nature sound classes**:
  - Rain
  - Sea Waves
  - Crackling Fire
  - Crickets
  - Chirping Birds
  - Wind
  - Pouring Water
  - Water Flushing
  - Thunderstorm
- Each audio file is **5 seconds long** and stored in **WAV format**.

## Data Preprocessing
- **Audio to Time-Frequency Conversion:**
  - The **Continuous Wavelet Transform (CWT)** is used to generate **time-frequency images** from audio signals.
  - The resulting images are of size **389×343 pixels**.
- **Tools Used:**
  - **MATLAB** (`prep_code1.m`) for audio-to-image conversion.
  - **Python** (with TensorFlow and Keras) for model implementation.

## Implementation
- **Deep Learning Models Used:**
  - **Vanilla CNN Model** (custom architecture for this dataset)
  - **VGGNet**
  - **ResNet**
  - **EfficientNet**
- **Training & Testing Process:**
  - Dataset split: **70% training, 20% testing, 10% validation**.
  - Used **Adam optimizer** with a **learning rate of 0.0001**.
  - **Sparse categorical cross-entropy** as the loss function.
  - Output activation: **SoftMax** (for multi-class classification).

## Repository Structure
- **nature_water_sounds/** → Contains the `.wav` audio files.
- **Preprocess_Data/** → Contains time-frequency images.
- **prep_code1.m** → MATLAB script for converting `.wav` files to time-frequency images.
- **deep_learning_code.ipynb** → Jupyter Notebook with model training and evaluation.

## Results
- **Vanilla CNN achieved the highest accuracy: 91.9%.**
- **Model performance comparison:**
  - **VGG19:** 72.3%
  - **EfficientNet:** 81.8%
  - **ResNet50:** 85.7%
  - **Vanilla CNN:** 91.9%
- **Confusion Matrix Analysis:**
  - High accuracy for **Rain (94%)**, **Sea Waves (98%)**, and **Crackling Fire (99%)**.
  - Some misclassifications occurred, e.g., **6% of Crickets misclassified as Wind**.
 

