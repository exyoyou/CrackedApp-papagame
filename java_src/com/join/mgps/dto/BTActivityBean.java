package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class BTActivityBean implements Serializable {
    private Integer beginTime;
    private String content;
    private Integer endTime;
    private String jump_url;
    private int noticeType;
    private Integer periodFlag;
    private String sub_head;
    private String title;
    private String type;

    public Integer getBeginTime() {
        return this.beginTime;
    }

    public String getContent() {
        return this.content;
    }

    public Integer getEndTime() {
        return this.endTime;
    }

    public String getJump_url() {
        return this.jump_url;
    }

    public int getNoticeType() {
        return this.noticeType;
    }

    public Integer getPeriodFlag() {
        return this.periodFlag;
    }

    public String getSub_head() {
        return this.sub_head;
    }

    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return this.type;
    }

    public void setBeginTime(Integer beginTime) {
        this.beginTime = beginTime;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setEndTime(Integer endTime) {
        this.endTime = endTime;
    }

    public void setJump_url(String jump_url) {
        this.jump_url = jump_url;
    }

    public void setNoticeType(int noticeType) {
        this.noticeType = noticeType;
    }

    public void setPeriodFlag(Integer periodFlag) {
        this.periodFlag = periodFlag;
    }

    public void setSub_head(String sub_head) {
        this.sub_head = sub_head;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setType(String type) {
        this.type = type;
    }
}
