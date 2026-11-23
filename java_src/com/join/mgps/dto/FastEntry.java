package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FastEntry implements Serializable {
    public List<BannerBean> the_new;
    public List<BannerBean> topic;
    public List<BannerBean> will_play;

    public FastEntry(List<BannerBean> will_play, List<BannerBean> the_new) {
        this.will_play = will_play;
        this.the_new = the_new;
    }

    public List<BannerBean> getThe_new() {
        return this.the_new;
    }

    public List<BannerBean> getTopic() {
        return this.topic;
    }

    public List<BannerBean> getWill_play() {
        return this.will_play;
    }

    public void setThe_new(List<BannerBean> the_new) {
        this.the_new = the_new;
    }

    public void setTopic(List<BannerBean> topic) {
        this.topic = topic;
    }

    public void setWill_play(List<BannerBean> will_play) {
        this.will_play = will_play;
    }

    public FastEntry() {
    }
}
