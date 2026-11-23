package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class HavenForumDatabean {
    List<HavenForumListbean> posts;
    HavenForumTagbean tag;

    public List<HavenForumListbean> getPosts() {
        return this.posts;
    }

    public HavenForumTagbean getTag() {
        return this.tag;
    }

    public void setPosts(List<HavenForumListbean> posts) {
        this.posts = posts;
    }

    public void setTag(HavenForumTagbean tag) {
        this.tag = tag;
    }
}
