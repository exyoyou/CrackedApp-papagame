package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GamesurFaceMessageBean {
    GamesurFaceDataBean data;

    public GamesurFaceMessageBean() {
    }

    public GamesurFaceDataBean getData() {
        return this.data;
    }

    public void setData(GamesurFaceDataBean data) {
        this.data = data;
    }

    public String toString() {
        return "GamesurFaceMessageBean{data=" + this.data + '}';
    }

    public GamesurFaceMessageBean(GamesurFaceDataBean data) {
        this.data = data;
    }
}
