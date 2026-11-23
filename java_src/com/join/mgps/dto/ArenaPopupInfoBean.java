package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaPopupInfoBean {
    private int daily_count;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f68019id;
    private int is_popup;
    private BannerBean jump_info;
    private String popup_img;
    private long show_time;

    public int getDaily_count() {
        return this.daily_count;
    }

    public int getId() {
        return this.f68019id;
    }

    public int getIs_popup() {
        return this.is_popup;
    }

    public BannerBean getJump_info() {
        return this.jump_info;
    }

    public String getPopup_img() {
        return this.popup_img;
    }

    public long getShow_time() {
        return this.show_time;
    }

    public void setDaily_count(int daily_count) {
        this.daily_count = daily_count;
    }

    public void setId(int id2) {
        this.f68019id = id2;
    }

    public void setIs_popup(int is_popup) {
        this.is_popup = is_popup;
    }

    public void setJump_info(BannerBean jump_info) {
        this.jump_info = jump_info;
    }

    public void setPopup_img(String popup_img) {
        this.popup_img = popup_img;
    }

    public void setShow_time(long show_time) {
        this.show_time = show_time;
    }
}
