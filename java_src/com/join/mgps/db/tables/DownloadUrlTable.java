package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.DownloadUrlBean;

/* JADX INFO: loaded from: classes3.dex */
public class DownloadUrlTable {

    @DatabaseField(columnName = "appbean", foreign = true, foreignAutoRefresh = true)
    private AppBeanTable appBeanTable;

    @DatabaseField
    private String down_source_name;

    @DatabaseField
    private String down_source_url;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67243id;

    @DatabaseField
    private int is_confirm;

    @DatabaseField
    private int type;

    @DatabaseField(columnName = "warMatchAndLocalTable", foreign = true, foreignAutoRefresh = true)
    private WarMatchAndLocalTable warMatchAndLocalTable;

    public DownloadUrlTable() {
    }

    public AppBeanTable getAppBeanTable() {
        return this.appBeanTable;
    }

    public DownloadUrlBean getDownUrlBean() {
        DownloadUrlBean downloadUrlBean = new DownloadUrlBean();
        downloadUrlBean.setDown_source_name(this.down_source_name);
        downloadUrlBean.setDown_source_url(this.down_source_url);
        downloadUrlBean.setDown_url_type(this.type);
        downloadUrlBean.setIs_confirm(this.is_confirm);
        return downloadUrlBean;
    }

    public String getDown_source_name() {
        return this.down_source_name;
    }

    public String getDown_source_url() {
        return this.down_source_url;
    }

    public int getId() {
        return this.f67243id;
    }

    public int getIs_confirm() {
        return this.is_confirm;
    }

    public int getType() {
        return this.type;
    }

    public WarMatchAndLocalTable getWarMatchAndLocalTable() {
        return this.warMatchAndLocalTable;
    }

    public void setAppBeanTable(AppBeanTable appBeanTable) {
        this.appBeanTable = appBeanTable;
    }

    public void setDown_source_name(String down_source_name) {
        this.down_source_name = down_source_name;
    }

    public void setDown_source_url(String down_source_url) {
        this.down_source_url = down_source_url;
    }

    public void setId(int id2) {
        this.f67243id = id2;
    }

    public void setIs_confirm(int is_confirm) {
        this.is_confirm = is_confirm;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setWarMatchAndLocalTable(WarMatchAndLocalTable warMatchAndLocalTable) {
        this.warMatchAndLocalTable = warMatchAndLocalTable;
    }

    public DownloadUrlTable(String down_source_name, String down_source_url, int type, int is_confirm) {
        this.down_source_name = down_source_name;
        this.down_source_url = down_source_url;
        this.type = type;
        this.is_confirm = is_confirm;
    }

    public DownloadUrlTable(DownloadUrlBean downUrlBean) {
        this.down_source_name = downUrlBean.getDown_source_name();
        this.down_source_url = downUrlBean.getDown_source_url();
        this.type = downUrlBean.getDown_url_type();
        this.is_confirm = downUrlBean.getIs_confirm();
    }
}
