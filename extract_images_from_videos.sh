#!/usr/bin/env bash

mkdir -p extracted_images/rtsp_to_webrtc
\rm -rf extracted_images/rtsp_to_webrtc/* ; ffmpeg -i rtsp_to_webrtc.mp4 -vf fps=60 extracted_images/rtsp_to_webrtc/img%06d.png

mkdir -p extracted_images/rtsp_to_webrtc_better
\rm -rf extracted_images/rtsp_to_webrtc_better/* ; ffmpeg -i rtsp_to_webrtc_better.mp4 -vf fps=60 extracted_images/rtsp_to_webrtc_better/img%06d.png

mkdir -p "extracted_images/rtsp_to_webrtc_4kcam_4k@30fps"
\rm -rf "extracted_images/rtsp_to_webrtc_4kcam_4k@30fps"/* ; ffmpeg -i "videos/rtsp_to_webrtc_4kcam_4k@30fps.mp4" -vf fps=60 "extracted_images/rtsp_to_webrtc_4kcam_4k@30fps"/img%06d.png

mkdir -p "extracted_images/brcam_udp"
\rm -rf "extracted_images/brcam_udp"/* ; ffmpeg -i "videos/brcam_udp.mp4" -vf fps=60 "extracted_images/brcam_udp"/img%06d.png

mkdir -p "extracted_images/brcam_rtsp"
\rm -rf "extracted_images/brcam_rtsp"/* ; ffmpeg -i "videos/brcam_rtsp.mp4" -vf fps=60 "extracted_images/brcam_rtsp"/img%06d.png

mkdir -p "extracted_images/brcam_webrtc"
\rm -rf "extracted_images/brcam_webrtc"/* ; ffmpeg -i "videos/brcam_webrtc.mp4" -vf fps=60 "extracted_images/brcam_webrtc"/img%06d.png
