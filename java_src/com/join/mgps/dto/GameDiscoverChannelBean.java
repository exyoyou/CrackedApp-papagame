package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameDiscoverChannelBean implements Serializable {
    private List<RecomDatabean> broadcast;
    private List<RecomDatabean> d_discover;
    private List<RecomDatabean> s_channel;
    private GameDiscoverTheNewBean the_new;

    public List<RecomDatabean> getBroadcast() {
        return this.broadcast;
    }

    public List<RecomDatabean> getD_discover() {
        return this.d_discover;
    }

    public List<RecomDatabean> getS_channel() {
        return this.s_channel;
    }

    public GameDiscoverTheNewBean getThe_new() {
        return this.the_new;
    }

    public void setBroadcast(List<RecomDatabean> broadcast) {
        this.broadcast = broadcast;
    }

    public void setD_discover(List<RecomDatabean> d_discover) {
        this.d_discover = d_discover;
    }

    public void setS_channel(List<RecomDatabean> s_channel) {
        this.s_channel = s_channel;
    }

    public void setThe_new(GameDiscoverTheNewBean the_new) {
        this.the_new = the_new;
    }
}
