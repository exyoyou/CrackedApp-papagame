package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class PAPARecentlyBean {
    private String crc_sign_id;
    private String game_name;
    private String screenshot_pic;
    private String title;

    public PAPARecentlyBean() {
    }

    public String getCrc_sign_id() {
        return this.crc_sign_id;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public String getScreenshot_pic() {
        return this.screenshot_pic;
    }

    public String getTitle() {
        return this.title;
    }

    public void setCrc_sign_id(String crc_sign_id) {
        this.crc_sign_id = crc_sign_id;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public void setScreenshot_pic(String screenshot_pic) {
        this.screenshot_pic = screenshot_pic;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public PAPARecentlyBean(String title, String crc_sign_id, String game_name, String screenshot_pic) {
        this.title = title;
        this.crc_sign_id = crc_sign_id;
        this.game_name = game_name;
        this.screenshot_pic = screenshot_pic;
    }
}
