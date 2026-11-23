package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GroupListBean {
    private List<GroupInfoBean> followForum;
    private List<GroupInfoBean> recommendForum;

    public List<GroupInfoBean> getFollowForum() {
        return this.followForum;
    }

    public List<GroupInfoBean> getRecommendForum() {
        return this.recommendForum;
    }

    public void setFollowForum(List<GroupInfoBean> followForum) {
        this.followForum = followForum;
    }

    public void setRecommendForum(List<GroupInfoBean> recommendForum) {
        this.recommendForum = recommendForum;
    }
}
