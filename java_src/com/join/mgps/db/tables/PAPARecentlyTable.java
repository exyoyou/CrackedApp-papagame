package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.PAPARecentlyBean;

/* JADX INFO: loaded from: classes3.dex */
public class PAPARecentlyTable {

    @DatabaseField
    private String crc_sign_id;

    @DatabaseField
    private String game_name;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67260id;

    @DatabaseField
    private String screenshot_pic;

    @DatabaseField
    private String title;

    public PAPARecentlyTable() {
    }

    public String getCrc_sign_id() {
        return this.crc_sign_id;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public int getId() {
        return this.f67260id;
    }

    public PAPARecentlyBean getPAPARecentlyBean() {
        PAPARecentlyBean pAPARecentlyBean = new PAPARecentlyBean();
        pAPARecentlyBean.setCrc_sign_id(this.crc_sign_id);
        pAPARecentlyBean.setTitle(this.title);
        pAPARecentlyBean.setGame_name(this.game_name);
        pAPARecentlyBean.setScreenshot_pic(this.screenshot_pic);
        return pAPARecentlyBean;
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

    public void setId(int id2) {
        this.f67260id = id2;
    }

    public void setScreenshot_pic(String screenshot_pic) {
        this.screenshot_pic = screenshot_pic;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public PAPARecentlyTable(String title, String crc_sign_id, String game_name, String screenshot_pic) {
        this.title = title;
        this.crc_sign_id = crc_sign_id;
        this.game_name = game_name;
        this.screenshot_pic = screenshot_pic;
    }

    public PAPARecentlyTable(PAPARecentlyBean papaRecentlyBean) {
        this.title = papaRecentlyBean.getTitle();
        this.crc_sign_id = papaRecentlyBean.getCrc_sign_id();
        this.game_name = papaRecentlyBean.getGame_name();
        this.screenshot_pic = papaRecentlyBean.getScreenshot_pic();
    }
}
