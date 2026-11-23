package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaGameNotice implements Serializable {
    private String content;
    private String target;
    private String title;
    private String type;
    private String url;

    public String getContent() {
        return this.content;
    }

    public String getTarget() {
        return this.target;
    }

    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String toString() {
        return "ArenaGameNotice{content='" + this.content + "', type='" + this.type + "', title='" + this.title + "', url='" + this.url + "', target='" + this.target + "'}";
    }
}
