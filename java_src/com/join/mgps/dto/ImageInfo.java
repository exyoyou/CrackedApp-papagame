package com.join.mgps.dto;

import com.join.mgps.Util.t2;

/* JADX INFO: loaded from: classes3.dex */
public class ImageInfo {
    private boolean isSelected = false;
    private boolean isVideo;
    private String url;
    private String videoUrl;

    public ImageInfo(String url) {
        this.url = url;
    }

    public String getUrl() {
        return this.url;
    }

    public String getVideoUrl() {
        return this.videoUrl;
    }

    public boolean isGif() {
        return t2.i(this.url) && this.url.endsWith(".gif");
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public boolean isVideo() {
        return this.isVideo;
    }

    public void setSelected(boolean selected) {
        this.isSelected = selected;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setVideo(boolean video) {
        this.isVideo = video;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }

    public ImageInfo(String url, String videoUrl, boolean isVideo) {
        this.url = url;
        this.videoUrl = videoUrl;
        this.isVideo = isVideo;
    }
}
