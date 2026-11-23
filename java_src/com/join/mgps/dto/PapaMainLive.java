package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class PapaMainLive {
    private PapaMainLiveFirst first;
    private List<PapaMainLivelistItem> list;
    private String sub_title;
    private String title;

    public PapaMainLiveFirst getFirst() {
        return this.first;
    }

    public List<PapaMainLivelistItem> getList() {
        return this.list;
    }

    public String getSub_title() {
        return this.sub_title;
    }

    public String getTitle() {
        return this.title;
    }

    public void setFirst(PapaMainLiveFirst first) {
        this.first = first;
    }

    public void setList(List<PapaMainLivelistItem> list) {
        this.list = list;
    }

    public void setSub_title(String sub_title) {
        this.sub_title = sub_title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
