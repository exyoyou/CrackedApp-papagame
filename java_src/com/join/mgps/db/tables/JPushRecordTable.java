package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class JPushRecordTable {

    @DatabaseField
    private String content;

    @DatabaseField
    private String crc_link_type_val;

    @DatabaseField
    private long create_time;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67256id;

    @DatabaseField
    private int jump_type;

    @DatabaseField
    private int link_type;

    @DatabaseField
    private String link_type_val;

    @DatabaseField
    private long push_time;

    @DatabaseField
    private long retention_time;

    @DatabaseField
    private String title;

    @DatabaseField
    private String tpl_type;

    public String getContent() {
        return this.content;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public long getCreate_time() {
        return this.create_time;
    }

    public int getId() {
        return this.f67256id;
    }

    public int getJump_type() {
        return this.jump_type;
    }

    public int getLink_type() {
        return this.link_type;
    }

    public String getLink_type_val() {
        return this.link_type_val;
    }

    public long getPush_time() {
        return this.push_time;
    }

    public long getRetention_time() {
        return this.retention_time;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
    }

    public void setCreate_time(long create_time) {
        this.create_time = create_time;
    }

    public void setId(int id2) {
        this.f67256id = id2;
    }

    public void setJump_type(int jump_type) {
        this.jump_type = jump_type;
    }

    public void setLink_type(int link_type) {
        this.link_type = link_type;
    }

    public void setLink_type_val(String link_type_val) {
        this.link_type_val = link_type_val;
    }

    public void setPush_time(long push_time) {
        this.push_time = push_time;
    }

    public void setRetention_time(long retention_time) {
        this.retention_time = retention_time;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }
}
