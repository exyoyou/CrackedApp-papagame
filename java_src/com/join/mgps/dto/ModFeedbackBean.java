package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ModFeedbackBean {
    private String btn_title;
    private String content;
    private int show_switch;
    private boolean status;
    private String title;
    private String wx_num;

    public String getBtn_title() {
        return this.btn_title;
    }

    public String getContent() {
        return this.content;
    }

    public int getShow_switch() {
        return this.show_switch;
    }

    public String getTitle() {
        return this.title;
    }

    public String getWx_num() {
        return this.wx_num;
    }

    public boolean isStatus() {
        return this.status;
    }

    public void setBtn_title(String btn_title) {
        this.btn_title = btn_title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setShow_switch(int show_switch) {
        this.show_switch = show_switch;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setWx_num(String wx_num) {
        this.wx_num = wx_num;
    }
}
