package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CommitIdBean {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f68041id;
    private String pic;
    private String title;

    public CommitIdBean() {
    }

    public int getId() {
        return this.f68041id;
    }

    public String getPic() {
        return this.pic;
    }

    public String getTitle() {
        return this.title;
    }

    public void setId(int id2) {
        this.f68041id = id2;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String toString() {
        return "CommitIdBean{id=" + this.f68041id + ", title='" + this.title + "', pic='" + this.pic + "'}";
    }

    public CommitIdBean(int id2, String title, String pic) {
        this.f68041id = id2;
        this.title = title;
        this.pic = pic;
    }
}
