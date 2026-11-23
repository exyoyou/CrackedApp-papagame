package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class DetialShowImageBean implements Serializable {
    private DetialShowImageSingBean local;
    private DetialShowImageSingBean remote;

    public DetialShowImageBean() {
    }

    public DetialShowImageSingBean getLocal() {
        return this.local;
    }

    public DetialShowImageSingBean getRemote() {
        return this.remote;
    }

    public void setLocal(DetialShowImageSingBean local) {
        this.local = local;
    }

    public void setRemote(DetialShowImageSingBean remote) {
        this.remote = remote;
    }

    public DetialShowImageBean(DetialShowImageSingBean local, DetialShowImageSingBean remote) {
        this.local = local;
        this.remote = remote;
    }
}
