package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GamesurFaceDataBean {
    private List<RecomDatabean> adinfo;
    private List<CommitIdBean> postid;
    private String practice;

    public GamesurFaceDataBean() {
    }

    public List<RecomDatabean> getAdinfo() {
        return this.adinfo;
    }

    public List<CommitIdBean> getPostid() {
        return this.postid;
    }

    public String getPractice() {
        return this.practice;
    }

    public void setAdinfo(List<RecomDatabean> adinfo) {
        this.adinfo = adinfo;
    }

    public void setPostid(List<CommitIdBean> postid) {
        this.postid = postid;
    }

    public void setPractice(String practice) {
        this.practice = practice;
    }

    public String toString() {
        return "GamesurFaceDataBean{postid=" + this.postid + ", adinfo=" + this.adinfo + ", practice='" + this.practice + "'}";
    }

    public GamesurFaceDataBean(List<CommitIdBean> postid) {
        this.postid = postid;
    }
}
