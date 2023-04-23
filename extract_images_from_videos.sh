#!/usr/env bash

mkdir -p extracted_images
\rm -rf extracted_images/* ; ffmpeg -i rtsp_to_webrtc.mp4 -vf fps=60 extracted_images/img%06d.png

mkdir -p extracted_images_better
\rm -rf extracted_images_better/* ; ffmpeg -i rtsp_to_webrtc_better.mp4 -vf fps=60 extracted_images_better/img%06d.png