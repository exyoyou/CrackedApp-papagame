package com.join.mgps.activity.gamedetail;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class GamedetailViewbean implements Serializable {
    private String sub_title;
    private String title;
    private String videoCover;
    private String video_url;

    public String getSub_title() {
        return this.sub_title;
    }

    public String getTitle() {
        return this.title;
    }

    public String getVideoCover() {
        return this.videoCover;
    }

    public String getVideo_url() {
        return this.video_url;
    }

    public void setSub_title(String sub_title) {
        this.sub_title = sub_title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setVideoCover(String videoCover) {
        this.videoCover = videoCover;
    }

    public void setVideo_url(String video_url) {
        this.video_url = video_url;
    }
}
